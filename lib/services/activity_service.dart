import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'dart:math';

import '../models/activity_model.dart';
import '../constants/app_constants.dart';

class ActivityService extends ChangeNotifier {
  List<ActivityModel> _activities = [];
  List<DailyActivitySummary> _dailySummaries = [];
  List<WeeklyActivitySummary> _weeklySummaries = [];
  bool _isLoading = false;
  String? _error;

  List<ActivityModel> get activities => List.unmodifiable(_activities);
  List<DailyActivitySummary> get dailySummaries => List.unmodifiable(_dailySummaries);
  List<WeeklyActivitySummary> get weeklySummaries => List.unmodifiable(_weeklySummaries);
  bool get isLoading => _isLoading;
  String? get error => _error;

  static void initialize() {
    // Initialize activity tracking permissions and services
  }

  Future<void> initializeService(String userId) async {
    _isLoading = true;
    try {
      await loadActivityData(userId);
      await generateMockData(userId);
    } catch (e) {
      _setError('Failed to initialize activity service: $e');
    } finally {
      _isLoading = false;
    }
  }

  Future<void> loadActivityData(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final activitiesData = prefs.getString('activities_$userId');
      final summariesData = prefs.getString('activity_summaries_$userId');
      
      if (activitiesData != null) {
        final activitiesJson = json.decode(activitiesData) as List;
        _activities = activitiesJson
            .map((json) => ActivityModel.fromJson(json))
            .toList();
      }
      
      if (summariesData != null) {
        final summariesJson = json.decode(summariesData) as Map<String, dynamic>;
        _dailySummaries = (summariesJson['daily'] as List)
            .map((json) => DailyActivitySummary.fromJson(json))
            .toList();
        _weeklySummaries = (summariesJson['weekly'] as List)
            .map((json) => WeeklyActivitySummary.fromJson(json))
            .toList();
      }
    } catch (e) {
      _setError('Failed to load activity data: $e');
    }
  }

  Future<void> saveActivityData(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final activitiesJson = _activities.map((a) => a.toJson()).toList();
      await prefs.setString('activities_$userId', json.encode(activitiesJson));
      
      final summariesJson = {
        'daily': _dailySummaries.map((s) => s.toJson()).toList(),
        'weekly': _weeklySummaries.map((s) => s.toJson()).toList(),
      };
      await prefs.setString('activity_summaries_$userId', json.encode(summariesJson));
    } catch (e) {
      _setError('Failed to save activity data: $e');
    }
  }

  Future<void> generateMockData(String userId) async {
    if (_activities.isNotEmpty) return; // Data already exists

    final random = Random();
    final now = DateTime.now();
    
    // Generate activities for the last 30 days
    for (int i = 0; i < 30; i++) {
      final date = now.subtract(Duration(days: i));
      
      // Generate 2-5 activities per day
      final activityCount = random.nextInt(4) + 2;
      
      for (int j = 0; j < activityCount; j++) {
        final activityType = ActivityType.values[random.nextInt(ActivityType.values.length)];
        final duration = random.nextInt(60) + 10; // 10-70 minutes
        final steps = _generateStepsForActivity(activityType, duration);
        final distance = steps * 0.0008; // Rough estimate: 1 step = 0.8m
        final calories = _calculateCalories(activityType, duration, 70.0); // Assuming 70kg weight
        
        final activity = ActivityModel(
          userId: userId,
          type: activityType,
          timestamp: date.add(Duration(hours: random.nextInt(12) + 6)), // 6 AM to 6 PM
          steps: steps,
          distance: distance,
          calories: calories,
          duration: duration,
          heartRate: random.nextInt(40) + 80.0, // 80-120 BPM
        );
        
        _activities.add(activity);
      }
    }
    
    // Generate daily summaries
    await _generateDailySummaries(userId);
    
    // Generate weekly summaries
    await _generateWeeklySummaries(userId);
    
    await saveActivityData(userId);
    notifyListeners();
  }

  Future<void> addActivity(ActivityModel activity) async {
    _isLoading = true;
    try {
      _activities.add(activity);
      await _updateDailySummary(activity.userId, activity.timestamp);
      await saveActivityData(activity.userId);
      notifyListeners();
    } catch (e) {
      _setError('Failed to add activity: $e');
    } finally {
      _isLoading = false;
    }
  }

  Future<void> _generateDailySummaries(String userId) async {
    final now = DateTime.now();
    
    for (int i = 0; i < 30; i++) {
      final date = now.subtract(Duration(days: i));
      final dayActivities = _activities.where((a) => 
          a.userId == userId && 
          a.timestamp.year == date.year &&
          a.timestamp.month == date.month &&
          a.timestamp.day == date.day
      ).toList();
      
      if (dayActivities.isNotEmpty) {
        final totalSteps = dayActivities.fold(0, (sum, a) => sum + a.steps);
        final totalDistance = dayActivities.fold(0.0, (sum, a) => sum + a.distance);
        final totalCalories = dayActivities.fold(0, (sum, a) => sum + a.calories);
        final totalDuration = dayActivities.fold(0, (sum, a) => sum + a.duration);
        final averageHeartRate = dayActivities.isNotEmpty 
            ? dayActivities.fold(0.0, (sum, a) => sum + a.heartRate) / dayActivities.length
            : 0.0;
        
        final summary = DailyActivitySummary(
          userId: userId,
          date: date,
          totalSteps: totalSteps,
          totalDistance: totalDistance,
          totalCalories: totalCalories,
          totalDuration: totalDuration,
          averageHeartRate: averageHeartRate,
          stepGoal: AppConstants.defaultStepGoal,
          activities: dayActivities,
        );
        
        _dailySummaries.add(summary);
      }
    }
  }

  Future<void> _generateWeeklySummaries(String userId) async {
    final now = DateTime.now();
    
    for (int i = 0; i < 4; i++) {
      final weekStart = now.subtract(Duration(days: (i + 1) * 7));
      final weekEnd = weekStart.add(const Duration(days: 6));
      
      final weekDailySummaries = _dailySummaries.where((s) => 
          s.userId == userId &&
          s.date.isAfter(weekStart.subtract(const Duration(days: 1))) &&
          s.date.isBefore(weekEnd.add(const Duration(days: 1)))
      ).toList();
      
      if (weekDailySummaries.isNotEmpty) {
        final totalSteps = weekDailySummaries.fold(0, (sum, s) => sum + s.totalSteps);
        final totalDistance = weekDailySummaries.fold(0.0, (sum, s) => sum + s.totalDistance);
        final totalCalories = weekDailySummaries.fold(0, (sum, s) => sum + s.totalCalories);
        final totalDuration = weekDailySummaries.fold(0, (sum, s) => sum + s.totalDuration);
        
        final summary = WeeklyActivitySummary(
          userId: userId,
          weekStart: weekStart,
          weekEnd: weekEnd,
          totalSteps: totalSteps,
          totalDistance: totalDistance,
          totalCalories: totalCalories,
          totalDuration: totalDuration,
          dailySummaries: weekDailySummaries,
        );
        
        _weeklySummaries.add(summary);
      }
    }
  }

  Future<void> _updateDailySummary(String userId, DateTime activityDate) async {
    final date = DateTime(activityDate.year, activityDate.month, activityDate.day);
    
    final existingSummaryIndex = _dailySummaries.indexWhere((s) => 
        s.userId == userId && 
        s.date.year == date.year &&
        s.date.month == date.month &&
        s.date.day == date.day
    );
    
    final dayActivities = _activities.where((a) => 
        a.userId == userId && 
        a.timestamp.year == date.year &&
        a.timestamp.month == date.month &&
        a.timestamp.day == date.day
    ).toList();
    
    final totalSteps = dayActivities.fold(0, (sum, a) => sum + a.steps);
    final totalDistance = dayActivities.fold(0.0, (sum, a) => sum + a.distance);
    final totalCalories = dayActivities.fold(0, (sum, a) => sum + a.calories);
    final totalDuration = dayActivities.fold(0, (sum, a) => sum + a.duration);
    final averageHeartRate = dayActivities.isNotEmpty 
        ? dayActivities.fold(0.0, (sum, a) => sum + a.heartRate) / dayActivities.length
        : 0.0;
    
    final summary = DailyActivitySummary(
      userId: userId,
      date: date,
      totalSteps: totalSteps,
      totalDistance: totalDistance,
      totalCalories: totalCalories,
      totalDuration: totalDuration,
      averageHeartRate: averageHeartRate,
      stepGoal: AppConstants.defaultStepGoal,
      activities: dayActivities,
    );
    
    if (existingSummaryIndex != -1) {
      _dailySummaries[existingSummaryIndex] = summary;
    } else {
      _dailySummaries.add(summary);
    }
  }

  DailyActivitySummary? getTodaySummary(String userId) {
    final today = DateTime.now();
    return _dailySummaries.firstWhere(
      (s) => s.userId == userId && 
          s.date.year == today.year &&
          s.date.month == today.month &&
          s.date.day == today.day,
      orElse: () => DailyActivitySummary(userId: userId, date: today),
    );
  }

  List<DailyActivitySummary> getLastWeekSummaries(String userId) {
    final oneWeekAgo = DateTime.now().subtract(const Duration(days: 7));
    return _dailySummaries.where((s) => 
        s.userId == userId && s.date.isAfter(oneWeekAgo)
    ).toList();
  }

  List<DailyActivitySummary> getLastMonthSummaries(String userId) {
    final oneMonthAgo = DateTime.now().subtract(const Duration(days: 30));
    return _dailySummaries.where((s) => 
        s.userId == userId && s.date.isAfter(oneMonthAgo)
    ).toList();
  }

  double getAverageStepsLastWeek(String userId) {
    final lastWeek = getLastWeekSummaries(userId);
    if (lastWeek.isEmpty) return 0.0;
    
    final totalSteps = lastWeek.fold(0, (sum, s) => sum + s.totalSteps);
    return totalSteps / lastWeek.length;
  }

  double getAverageStepsLastMonth(String userId) {
    final lastMonth = getLastMonthSummaries(userId);
    if (lastMonth.isEmpty) return 0.0;
    
    final totalSteps = lastMonth.fold(0, (sum, s) => sum + s.totalSteps);
    return totalSteps / lastMonth.length;
  }

  int getGoalAchievementDays(String userId, int days) {
    final now = DateTime.now();
    final pastDays = _dailySummaries.where((s) => 
        s.userId == userId && 
        s.date.isAfter(now.subtract(Duration(days: days)))
    ).toList();
    
    return pastDays.where((s) => s.goalAchieved).length;
  }

  double getGoalAchievementRate(String userId, int days) {
    final now = DateTime.now();
    final pastDays = _dailySummaries.where((s) => 
        s.userId == userId && 
        s.date.isAfter(now.subtract(Duration(days: days)))
    ).toList();
    
    if (pastDays.isEmpty) return 0.0;
    return pastDays.where((s) => s.goalAchieved).length / pastDays.length;
  }

  List<ActivityModel> getActivitiesByType(String userId, ActivityType type) {
    return _activities.where((a) => a.userId == userId && a.type == type).toList();
  }

  List<ActivityModel> getActivitiesByDateRange(String userId, DateTime start, DateTime end) {
    return _activities.where((a) => 
        a.userId == userId &&
        a.timestamp.isAfter(start) &&
        a.timestamp.isBefore(end)
    ).toList();
  }

  int _generateStepsForActivity(ActivityType type, int duration) {
    final random = Random();
    switch (type) {
      case ActivityType.walking:
        return (random.nextInt(20) + 80) * duration; // 80-100 steps/min
      case ActivityType.running:
        return (random.nextInt(30) + 140) * duration; // 140-170 steps/min
      case ActivityType.cycling:
        return (random.nextInt(10) + 20) * duration; // 20-30 steps/min (cycling)
      case ActivityType.swimming:
        return (random.nextInt(5) + 5) * duration; // 5-10 steps/min (swimming)
      case ActivityType.strengthTraining:
        return (random.nextInt(10) + 15) * duration; // 15-25 steps/min
      case ActivityType.yoga:
        return (random.nextInt(5) + 10) * duration; // 10-15 steps/min
      default:
        return (random.nextInt(20) + 30) * duration; // 30-50 steps/min
    }
  }

  int _calculateCalories(ActivityType type, int duration, double weight) {
    final random = Random();
    double caloriesPerMinute;
    
    switch (type) {
      case ActivityType.walking:
        caloriesPerMinute = weight * 0.05; // 5 cal/kg/min
        break;
      case ActivityType.running:
        caloriesPerMinute = weight * 0.12; // 12 cal/kg/min
        break;
      case ActivityType.cycling:
        caloriesPerMinute = weight * 0.08; // 8 cal/kg/min
        break;
      case ActivityType.swimming:
        caloriesPerMinute = weight * 0.1; // 10 cal/kg/min
        break;
      case ActivityType.strengthTraining:
        caloriesPerMinute = weight * 0.07; // 7 cal/kg/min
        break;
      case ActivityType.yoga:
        caloriesPerMinute = weight * 0.03; // 3 cal/kg/min
        break;
      default:
        caloriesPerMinute = weight * 0.04; // 4 cal/kg/min
    }
    
    return (caloriesPerMinute * duration * (0.8 + random.nextDouble() * 0.4)).round();
  }

  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}
