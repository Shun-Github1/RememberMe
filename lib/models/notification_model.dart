import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

class AppNotification {
  final String id;
  final String userId;
  final String title;
  final String body;
  final NotificationType type;
  final NotificationCategory category;
  final DateTime scheduledFor;
  final DateTime? sentAt;
  final NotificationStatus status;
  final Map<String, dynamic> data;
  final String? imageUrl;
  final String? actionUrl;
  final String? actionText;
  final bool isRecurring;
  final RecurrencePattern? recurrence;
  final DateTime createdAt;
  final DateTime? readAt;

  AppNotification({
    String? id,
    required this.userId,
    required this.title,
    required this.body,
    required this.type,
    required this.category,
    required this.scheduledFor,
    this.sentAt,
    this.status = NotificationStatus.scheduled,
    Map<String, dynamic>? data,
    this.imageUrl,
    this.actionUrl,
    this.actionText,
    this.isRecurring = false,
    this.recurrence,
    DateTime? createdAt,
    this.readAt,
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now(),
    data = data ?? {};

  AppNotification copyWith({
    String? title,
    String? body,
    NotificationType? type,
    NotificationCategory? category,
    DateTime? scheduledFor,
    DateTime? sentAt,
    NotificationStatus? status,
    Map<String, dynamic>? data,
    String? imageUrl,
    String? actionUrl,
    String? actionText,
    bool? isRecurring,
    RecurrencePattern? recurrence,
    DateTime? readAt,
  }) {
    return AppNotification(
      id: id,
      userId: userId,
      title: title ?? this.title,
      body: body ?? this.body,
      type: type ?? this.type,
      category: category ?? this.category,
      scheduledFor: scheduledFor ?? this.scheduledFor,
      sentAt: sentAt ?? this.sentAt,
      status: status ?? this.status,
      data: data ?? this.data,
      imageUrl: imageUrl ?? this.imageUrl,
      actionUrl: actionUrl ?? this.actionUrl,
      actionText: actionText ?? this.actionText,
      isRecurring: isRecurring ?? this.isRecurring,
      recurrence: recurrence ?? this.recurrence,
      createdAt: createdAt,
      readAt: readAt ?? this.readAt,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'title': title,
      'body': body,
      'type': type.toString().split('.').last,
      'category': category.toString().split('.').last,
      'scheduledFor': scheduledFor.toIso8601String(),
      'sentAt': sentAt?.toIso8601String(),
      'status': status.toString().split('.').last,
      'data': data,
      'imageUrl': imageUrl,
      'actionUrl': actionUrl,
      'actionText': actionText,
      'isRecurring': isRecurring,
      'recurrence': recurrence?.toJson(),
      'createdAt': createdAt.toIso8601String(),
      'readAt': readAt?.toIso8601String(),
    };
  }

  factory AppNotification.fromJson(Map<String, dynamic> json) {
    return AppNotification(
      id: json['id'],
      userId: json['userId'],
      title: json['title'],
      body: json['body'],
      type: NotificationType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      category: NotificationCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
      ),
      scheduledFor: DateTime.parse(json['scheduledFor']),
      sentAt: json['sentAt'] != null ? DateTime.parse(json['sentAt']) : null,
      status: NotificationStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => NotificationStatus.scheduled,
      ),
      data: Map<String, dynamic>.from(json['data'] ?? {}),
      imageUrl: json['imageUrl'],
      actionUrl: json['actionUrl'],
      actionText: json['actionText'],
      isRecurring: json['isRecurring'] ?? false,
      recurrence: json['recurrence'] != null 
          ? RecurrencePattern.fromJson(json['recurrence']) 
          : null,
      createdAt: DateTime.parse(json['createdAt']),
      readAt: json['readAt'] != null ? DateTime.parse(json['readAt']) : null,
    );
  }

  bool get isRead => readAt != null;
  bool get isSent => sentAt != null;
  bool get isScheduled => status == NotificationStatus.scheduled;
  bool get isExpired => DateTime.now().isAfter(scheduledFor) && !isSent;
}

enum NotificationType {
  reminder,
  achievement,
  social,
  health,
  survey,
  event,
  reward,
  system,
}

enum NotificationCategory {
  activity,
  nutrition,
  hydration,
  social,
  cognitive,
  health,
  survey,
  event,
  reward,
  general,
}

enum NotificationStatus {
  scheduled,
  sent,
  delivered,
  read,
  failed,
  cancelled,
}

class RecurrencePattern {
  final RecurrenceType type;
  final int interval;
  final List<int> daysOfWeek; // 0 = Sunday, 1 = Monday, etc.
  final List<int> daysOfMonth;
  final TimeOfDay time;
  final DateTime? endDate;
  final int? maxOccurrences;

  RecurrencePattern({
    required this.type,
    this.interval = 1,
    this.daysOfWeek = const [],
    this.daysOfMonth = const [],
    required this.time,
    this.endDate,
    this.maxOccurrences,
  });

  RecurrencePattern copyWith({
    RecurrenceType? type,
    int? interval,
    List<int>? daysOfWeek,
    List<int>? daysOfMonth,
    TimeOfDay? time,
    DateTime? endDate,
    int? maxOccurrences,
  }) {
    return RecurrencePattern(
      type: type ?? this.type,
      interval: interval ?? this.interval,
      daysOfWeek: daysOfWeek ?? this.daysOfWeek,
      daysOfMonth: daysOfMonth ?? this.daysOfMonth,
      time: time ?? this.time,
      endDate: endDate ?? this.endDate,
      maxOccurrences: maxOccurrences ?? this.maxOccurrences,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type.toString().split('.').last,
      'interval': interval,
      'daysOfWeek': daysOfWeek,
      'daysOfMonth': daysOfMonth,
      'hour': time.hour,
      'minute': time.minute,
      'endDate': endDate?.toIso8601String(),
      'maxOccurrences': maxOccurrences,
    };
  }

  factory RecurrencePattern.fromJson(Map<String, dynamic> json) {
    return RecurrencePattern(
      type: RecurrenceType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      interval: json['interval'] ?? 1,
      daysOfWeek: List<int>.from(json['daysOfWeek'] ?? []),
      daysOfMonth: List<int>.from(json['daysOfMonth'] ?? []),
      time: TimeOfDay(
        hour: json['hour'] ?? 8,
        minute: json['minute'] ?? 0,
      ),
      endDate: json['endDate'] != null ? DateTime.parse(json['endDate']) : null,
      maxOccurrences: json['maxOccurrences'],
    );
  }
}

enum RecurrenceType {
  daily,
  weekly,
  monthly,
  yearly,
  custom,
}

class NotificationSettings {
  final String userId;
  final bool morningReminders;
  final bool eveningCheckIns;
  final bool hydrationReminders;
  final bool socialReminders;
  final bool activityReminders;
  final bool surveyReminders;
  final bool eventReminders;
  final bool rewardNotifications;
  final bool achievementNotifications;
  final String morningReminderTime;
  final String eveningCheckInTime;
  final int hydrationReminderIntervalHours;
  final bool quietHoursEnabled;
  final String quietHoursStart;
  final String quietHoursEnd;
  final bool vibrationEnabled;
  final bool soundEnabled;
  final String? customSound;
  final bool badgeEnabled;
  final bool inAppNotificationsEnabled;
  final bool pushNotificationsEnabled;
  final DateTime lastUpdated;

  NotificationSettings({
    required this.userId,
    this.morningReminders = true,
    this.eveningCheckIns = true,
    this.hydrationReminders = true,
    this.socialReminders = true,
    this.activityReminders = true,
    this.surveyReminders = true,
    this.eventReminders = true,
    this.rewardNotifications = true,
    this.achievementNotifications = true,
    this.morningReminderTime = '08:00',
    this.eveningCheckInTime = '20:00',
    this.hydrationReminderIntervalHours = 2,
    this.quietHoursEnabled = false,
    this.quietHoursStart = '22:00',
    this.quietHoursEnd = '07:00',
    this.vibrationEnabled = true,
    this.soundEnabled = true,
    this.customSound,
    this.badgeEnabled = true,
    this.inAppNotificationsEnabled = true,
    this.pushNotificationsEnabled = true,
    DateTime? lastUpdated,
  }) : lastUpdated = lastUpdated ?? DateTime.now();

  NotificationSettings copyWith({
    bool? morningReminders,
    bool? eveningCheckIns,
    bool? hydrationReminders,
    bool? socialReminders,
    bool? activityReminders,
    bool? surveyReminders,
    bool? eventReminders,
    bool? rewardNotifications,
    bool? achievementNotifications,
    String? morningReminderTime,
    String? eveningCheckInTime,
    int? hydrationReminderIntervalHours,
    bool? quietHoursEnabled,
    String? quietHoursStart,
    String? quietHoursEnd,
    bool? vibrationEnabled,
    bool? soundEnabled,
    String? customSound,
    bool? badgeEnabled,
    bool? inAppNotificationsEnabled,
    bool? pushNotificationsEnabled,
  }) {
    return NotificationSettings(
      userId: userId,
      morningReminders: morningReminders ?? this.morningReminders,
      eveningCheckIns: eveningCheckIns ?? this.eveningCheckIns,
      hydrationReminders: hydrationReminders ?? this.hydrationReminders,
      socialReminders: socialReminders ?? this.socialReminders,
      activityReminders: activityReminders ?? this.activityReminders,
      surveyReminders: surveyReminders ?? this.surveyReminders,
      eventReminders: eventReminders ?? this.eventReminders,
      rewardNotifications: rewardNotifications ?? this.rewardNotifications,
      achievementNotifications: achievementNotifications ?? this.achievementNotifications,
      morningReminderTime: morningReminderTime ?? this.morningReminderTime,
      eveningCheckInTime: eveningCheckInTime ?? this.eveningCheckInTime,
      hydrationReminderIntervalHours: hydrationReminderIntervalHours ?? this.hydrationReminderIntervalHours,
      quietHoursEnabled: quietHoursEnabled ?? this.quietHoursEnabled,
      quietHoursStart: quietHoursStart ?? this.quietHoursStart,
      quietHoursEnd: quietHoursEnd ?? this.quietHoursEnd,
      vibrationEnabled: vibrationEnabled ?? this.vibrationEnabled,
      soundEnabled: soundEnabled ?? this.soundEnabled,
      customSound: customSound ?? this.customSound,
      badgeEnabled: badgeEnabled ?? this.badgeEnabled,
      inAppNotificationsEnabled: inAppNotificationsEnabled ?? this.inAppNotificationsEnabled,
      pushNotificationsEnabled: pushNotificationsEnabled ?? this.pushNotificationsEnabled,
      lastUpdated: lastUpdated,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'morningReminders': morningReminders,
      'eveningCheckIns': eveningCheckIns,
      'hydrationReminders': hydrationReminders,
      'socialReminders': socialReminders,
      'activityReminders': activityReminders,
      'surveyReminders': surveyReminders,
      'eventReminders': eventReminders,
      'rewardNotifications': rewardNotifications,
      'achievementNotifications': achievementNotifications,
      'morningReminderTime': morningReminderTime,
      'eveningCheckInTime': eveningCheckInTime,
      'hydrationReminderIntervalHours': hydrationReminderIntervalHours,
      'quietHoursEnabled': quietHoursEnabled,
      'quietHoursStart': quietHoursStart,
      'quietHoursEnd': quietHoursEnd,
      'vibrationEnabled': vibrationEnabled,
      'soundEnabled': soundEnabled,
      'customSound': customSound,
      'badgeEnabled': badgeEnabled,
      'inAppNotificationsEnabled': inAppNotificationsEnabled,
      'pushNotificationsEnabled': pushNotificationsEnabled,
      'lastUpdated': lastUpdated.toIso8601String(),
    };
  }

  factory NotificationSettings.fromJson(Map<String, dynamic> json) {
    return NotificationSettings(
      userId: json['userId'],
      morningReminders: json['morningReminders'] ?? true,
      eveningCheckIns: json['eveningCheckIns'] ?? true,
      hydrationReminders: json['hydrationReminders'] ?? true,
      socialReminders: json['socialReminders'] ?? true,
      activityReminders: json['activityReminders'] ?? true,
      surveyReminders: json['surveyReminders'] ?? true,
      eventReminders: json['eventReminders'] ?? true,
      rewardNotifications: json['rewardNotifications'] ?? true,
      achievementNotifications: json['achievementNotifications'] ?? true,
      morningReminderTime: json['morningReminderTime'] ?? '08:00',
      eveningCheckInTime: json['eveningCheckInTime'] ?? '20:00',
      hydrationReminderIntervalHours: json['hydrationReminderIntervalHours'] ?? 2,
      quietHoursEnabled: json['quietHoursEnabled'] ?? false,
      quietHoursStart: json['quietHoursStart'] ?? '22:00',
      quietHoursEnd: json['quietHoursEnd'] ?? '07:00',
      vibrationEnabled: json['vibrationEnabled'] ?? true,
      soundEnabled: json['soundEnabled'] ?? true,
      customSound: json['customSound'],
      badgeEnabled: json['badgeEnabled'] ?? true,
      inAppNotificationsEnabled: json['inAppNotificationsEnabled'] ?? true,
      pushNotificationsEnabled: json['pushNotificationsEnabled'] ?? true,
      lastUpdated: DateTime.parse(json['lastUpdated']),
    );
  }

  bool isCategoryEnabled(NotificationCategory category) {
    switch (category) {
      case NotificationCategory.activity:
        return activityReminders;
      case NotificationCategory.nutrition:
        return hydrationReminders;
      case NotificationCategory.hydration:
        return hydrationReminders;
      case NotificationCategory.social:
        return socialReminders;
      case NotificationCategory.cognitive:
        return activityReminders;
      case NotificationCategory.health:
        return morningReminders;
      case NotificationCategory.survey:
        return surveyReminders;
      case NotificationCategory.event:
        return eventReminders;
      case NotificationCategory.reward:
        return rewardNotifications;
      case NotificationCategory.general:
        return true;
    }
  }

  bool isQuietHours(DateTime dateTime) {
    if (!quietHoursEnabled) return false;
    
    final time = TimeOfDay.fromDateTime(dateTime);
    final start = TimeOfDay(
      hour: int.parse(quietHoursStart.split(':')[0]),
      minute: int.parse(quietHoursStart.split(':')[1]),
    );
    final end = TimeOfDay(
      hour: int.parse(quietHoursEnd.split(':')[0]),
      minute: int.parse(quietHoursEnd.split(':')[1]),
    );
    
    final timeMinutes = time.hour * 60 + time.minute;
    final startMinutes = start.hour * 60 + start.minute;
    final endMinutes = end.hour * 60 + end.minute;
    
    if (startMinutes <= endMinutes) {
      return timeMinutes >= startMinutes && timeMinutes <= endMinutes;
    } else {
      return timeMinutes >= startMinutes || timeMinutes <= endMinutes;
    }
  }
}
