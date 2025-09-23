import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:timezone/timezone.dart' as tz;
import 'dart:convert';

import '../models/notification_model.dart';
import '../models/user_model.dart';
import '../constants/app_constants.dart';

class NotificationService extends ChangeNotifier {
  static final FlutterLocalNotificationsPlugin _notifications = 
      FlutterLocalNotificationsPlugin();
  
  List<AppNotification> _notificationsList = [];
  NotificationSettings? _settings;
  bool _isInitialized = false;
  bool _isLoading = false;
  String? _error;

  List<AppNotification> get notifications => List.unmodifiable(_notificationsList);
  NotificationSettings? get settings => _settings;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isInitialized => _isInitialized;

  static Future<void> initialize() async {
    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      requestCriticalPermission: false, // Only request if needed for critical health alerts
      defaultPresentAlert: true,
      defaultPresentBadge: true,
      defaultPresentSound: true,
    );
    
    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );
    
    await _notifications.initialize(
      initSettings,
      onDidReceiveNotificationResponse: _onNotificationTapped,
    );
    
    // Request permissions with platform-specific handling
    try {
      await _notifications
          .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
          ?.requestNotificationsPermission();
    } catch (e) {
      // Android permission request failed, but continue
      debugPrint('Android notification permission request failed: $e');
    }
        
    try {
      await _notifications
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } catch (e) {
      // iOS permission request failed, but continue
      debugPrint('iOS notification permission request failed: $e');
    }
  }

  static void _onNotificationTapped(NotificationResponse response) {
    // Handle notification tap
    if (response.payload != null) {
      // Navigate to appropriate screen based on notification data
    }
  }

  Future<void> initializeService(String userId) async {
    _isLoading = true;
    try {
      await loadSettings(userId);
      await loadNotifications(userId);
      await scheduleDefaultNotifications(userId);
      _isInitialized = true;
    } catch (e) {
      _setError('Failed to initialize notification service: $e');
    } finally {
      _isLoading = false;
    }
  }

  Future<void> loadSettings(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsData = prefs.getString(AppConstants.notificationSettingsKey);
      
      if (settingsData != null) {
        final settingsJson = json.decode(settingsData);
        _settings = NotificationSettings.fromJson(settingsJson);
      } else {
        _settings = NotificationSettings(userId: userId);
        await saveSettings();
      }
    } catch (e) {
      _setError('Failed to load notification settings: $e');
    }
  }

  Future<void> saveSettings() async {
    if (_settings == null) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final settingsJson = json.encode(_settings!.toJson());
      await prefs.setString(AppConstants.notificationSettingsKey, settingsJson);
    } catch (e) {
      _setError('Failed to save notification settings: $e');
    }
  }

  Future<void> loadNotifications(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final notificationsData = prefs.getString('notifications_$userId');
      
      if (notificationsData != null) {
        final notificationsJson = json.decode(notificationsData) as List;
        _notificationsList = notificationsJson
            .map((json) => AppNotification.fromJson(json))
            .toList();
      }
    } catch (e) {
      _setError('Failed to load notifications: $e');
    }
  }

  Future<void> saveNotifications(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final notificationsJson = _notificationsList
          .map((n) => n.toJson())
          .toList();
      await prefs.setString('notifications_$userId', json.encode(notificationsJson));
    } catch (e) {
      _setError('Failed to save notifications: $e');
    }
  }

  Future<void> updateSettings(NotificationSettings newSettings) async {
    _settings = newSettings;
    await saveSettings();
    await scheduleDefaultNotifications(newSettings.userId);
    notifyListeners();
  }

  Future<void> scheduleNotification(AppNotification notification) async {
    if (_settings == null || !_settings!.isCategoryEnabled(notification.category)) {
      return;
    }

    if (_settings!.isQuietHours(notification.scheduledFor)) {
      return;
    }

    try {
      const androidDetails = AndroidNotificationDetails(
        'rememberme_notifications',
        'RememberMe Notifications',
        channelDescription: 'Notifications for RememberMe app',
        importance: Importance.high,
        priority: Priority.high,
        icon: '@mipmap/ic_launcher',
      );

      const iosDetails = DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true,
        sound: 'default',
        badgeNumber: 1,
        categoryIdentifier: 'rememberme_notifications',
        threadIdentifier: 'rememberme_health_tracking',
      );

      const details = NotificationDetails(
        android: androidDetails,
        iOS: iosDetails,
      );

      await _notifications.zonedSchedule(
        notification.id.hashCode,
        notification.title,
        notification.body,
        _convertToTZDateTime(notification.scheduledFor),
        details,
        payload: json.encode(notification.data),
        uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: notification.isRecurring ? DateTimeComponents.time : null,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      );

      _notificationsList.add(notification);
      await saveNotifications(notification.userId);
      notifyListeners();
    } catch (e) {
      _setError('Failed to schedule notification: $e');
    }
  }

  Future<void> cancelNotification(String notificationId) async {
    try {
      await _notifications.cancel(notificationId.hashCode);
      _notificationsList.removeWhere((n) => n.id == notificationId);
      notifyListeners();
    } catch (e) {
      _setError('Failed to cancel notification: $e');
    }
  }

  Future<void> cancelAllNotifications() async {
    try {
      await _notifications.cancelAll();
      _notificationsList.clear();
      notifyListeners();
    } catch (e) {
      _setError('Failed to cancel all notifications: $e');
    }
  }

  Future<void> markAsRead(String notificationId) async {
    final notificationIndex = _notificationsList.indexWhere((n) => n.id == notificationId);
    if (notificationIndex != -1) {
      _notificationsList[notificationIndex] = _notificationsList[notificationIndex]
          .copyWith(readAt: DateTime.now());
      notifyListeners();
    }
  }

  Future<void> markAllAsRead() async {
    for (int i = 0; i < _notificationsList.length; i++) {
      if (_notificationsList[i].readAt == null) {
        _notificationsList[i] = _notificationsList[i]
            .copyWith(readAt: DateTime.now());
      }
    }
    notifyListeners();
  }

  Future<void> scheduleDefaultNotifications(String userId) async {
    if (_settings == null) return;

    // Cancel existing default notifications
    await cancelAllNotifications();

    // For now, just create mock notifications without complex scheduling
    // In a real implementation, you would properly schedule recurring notifications
    
    final mockNotification = AppNotification(
      userId: userId,
      title: 'Welcome to RememberMe! 👋',
      body: 'Start your journey to better brain health today.',
      type: NotificationType.reminder,
      category: NotificationCategory.general,
      scheduledFor: DateTime.now().add(const Duration(minutes: 1)),
      isRecurring: false,
    );
    
    _notificationsList.add(mockNotification);
    await saveNotifications(userId);
    notifyListeners();
  }

  Future<void> scheduleSurveyReminder(String userId, DateTime surveyDueDate) async {
    final reminderDate = surveyDueDate.subtract(const Duration(days: 1));
    
    final surveyNotification = AppNotification(
      userId: userId,
      title: 'Survey Reminder 📋',
      body: 'Your health survey is due tomorrow. Take a few minutes to complete it.',
      type: NotificationType.survey,
      category: NotificationCategory.survey,
      scheduledFor: reminderDate,
      data: {'surveyId': 'upcoming_survey'},
    );
    
    await scheduleNotification(surveyNotification);
  }

  Future<void> scheduleEventReminder(String userId, String eventTitle, DateTime eventDate) async {
    final reminderDate = eventDate.subtract(const Duration(hours: 2));
    
    final eventNotification = AppNotification(
      userId: userId,
      title: 'Event Reminder 🎉',
      body: '$eventTitle starts in 2 hours. Don\'t forget to attend!',
      type: NotificationType.event,
      category: NotificationCategory.event,
      scheduledFor: reminderDate,
      data: {'eventTitle': eventTitle},
    );
    
    await scheduleNotification(eventNotification);
  }

  Future<void> sendAchievementNotification(String userId, String achievement) async {
    if (!_settings!.achievementNotifications) return;

    final achievementNotification = AppNotification(
      userId: userId,
      title: 'Achievement Unlocked! 🏆',
      body: achievement,
      type: NotificationType.achievement,
      category: NotificationCategory.general,
      scheduledFor: DateTime.now().add(const Duration(seconds: 1)),
      data: {'achievement': achievement},
    );
    
    await scheduleNotification(achievementNotification);
  }

  DateTime _getNextScheduledTime(TimeOfDay time) {
    final now = DateTime.now();
    var scheduledTime = DateTime(now.year, now.month, now.day, time.hour, time.minute);
    
    if (scheduledTime.isBefore(now)) {
      scheduledTime = scheduledTime.add(const Duration(days: 1));
    }
    
    return scheduledTime;
  }

  TimeOfDay _parseTime(String timeString) {
    final parts = timeString.split(':');
    return TimeOfDay(
      hour: int.parse(parts[0]),
      minute: int.parse(parts[1]),
    );
  }

  tz.TZDateTime _convertToTZDateTime(DateTime dateTime) {
    // For now, return as local time. In a real app, you'd use timezone package
    // This is a simplified implementation that should work for basic scheduling
    return tz.TZDateTime.from(dateTime, tz.local);
  }

  int get unreadCount => _notificationsList.where((n) => !n.isRead).length;
  
  List<AppNotification> get unreadNotifications => 
      _notificationsList.where((n) => !n.isRead).toList();

  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
