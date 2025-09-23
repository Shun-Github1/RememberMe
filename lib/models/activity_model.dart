import 'package:uuid/uuid.dart';

class ActivityModel {
  final String id;
  final String userId;
  final ActivityType type;
  final DateTime timestamp;
  final int steps;
  final double distance; // in km
  final int calories;
  final int duration; // in minutes
  final double heartRate; // average BPM
  final Map<String, dynamic> metadata;

  ActivityModel({
    String? id,
    required this.userId,
    required this.type,
    required this.timestamp,
    this.steps = 0,
    this.distance = 0.0,
    this.calories = 0,
    this.duration = 0,
    this.heartRate = 0.0,
    Map<String, dynamic>? metadata,
  }) : 
    id = id ?? const Uuid().v4(),
    metadata = metadata ?? {};

  ActivityModel copyWith({
    String? userId,
    ActivityType? type,
    DateTime? timestamp,
    int? steps,
    double? distance,
    int? calories,
    int? duration,
    double? heartRate,
    Map<String, dynamic>? metadata,
  }) {
    return ActivityModel(
      id: id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      timestamp: timestamp ?? this.timestamp,
      steps: steps ?? this.steps,
      distance: distance ?? this.distance,
      calories: calories ?? this.calories,
      duration: duration ?? this.duration,
      heartRate: heartRate ?? this.heartRate,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': type.toString().split('.').last,
      'timestamp': timestamp.toIso8601String(),
      'steps': steps,
      'distance': distance,
      'calories': calories,
      'duration': duration,
      'heartRate': heartRate,
      'metadata': metadata,
    };
  }

  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      id: json['id'],
      userId: json['userId'],
      type: ActivityType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      timestamp: DateTime.parse(json['timestamp']),
      steps: json['steps'] ?? 0,
      distance: (json['distance'] ?? 0.0).toDouble(),
      calories: json['calories'] ?? 0,
      duration: json['duration'] ?? 0,
      heartRate: (json['heartRate'] ?? 0.0).toDouble(),
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }
}

enum ActivityType {
  walking,
  running,
  cycling,
  swimming,
  strengthTraining,
  yoga,
  other,
}

class DailyActivitySummary {
  final String id;
  final String userId;
  final DateTime date;
  final int totalSteps;
  final double totalDistance;
  final int totalCalories;
  final int totalDuration;
  final double averageHeartRate;
  final int stepGoal;
  final bool goalAchieved;
  final List<ActivityModel> activities;

  DailyActivitySummary({
    String? id,
    required this.userId,
    required this.date,
    this.totalSteps = 0,
    this.totalDistance = 0.0,
    this.totalCalories = 0,
    this.totalDuration = 0,
    this.averageHeartRate = 0.0,
    this.stepGoal = 10000,
    this.activities = const [],
  }) : 
    id = id ?? const Uuid().v4(),
    goalAchieved = totalSteps >= stepGoal;

  DailyActivitySummary copyWith({
    String? userId,
    DateTime? date,
    int? totalSteps,
    double? totalDistance,
    int? totalCalories,
    int? totalDuration,
    double? averageHeartRate,
    int? stepGoal,
    List<ActivityModel>? activities,
  }) {
    return DailyActivitySummary(
      id: id,
      userId: userId ?? this.userId,
      date: date ?? this.date,
      totalSteps: totalSteps ?? this.totalSteps,
      totalDistance: totalDistance ?? this.totalDistance,
      totalCalories: totalCalories ?? this.totalCalories,
      totalDuration: totalDuration ?? this.totalDuration,
      averageHeartRate: averageHeartRate ?? this.averageHeartRate,
      stepGoal: stepGoal ?? this.stepGoal,
      activities: activities ?? this.activities,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String().split('T')[0], // YYYY-MM-DD format
      'totalSteps': totalSteps,
      'totalDistance': totalDistance,
      'totalCalories': totalCalories,
      'totalDuration': totalDuration,
      'averageHeartRate': averageHeartRate,
      'stepGoal': stepGoal,
      'goalAchieved': goalAchieved,
      'activities': activities.map((e) => e.toJson()).toList(),
    };
  }

  factory DailyActivitySummary.fromJson(Map<String, dynamic> json) {
    return DailyActivitySummary(
      id: json['id'],
      userId: json['userId'],
      date: DateTime.parse(json['date']),
      totalSteps: json['totalSteps'] ?? 0,
      totalDistance: (json['totalDistance'] ?? 0.0).toDouble(),
      totalCalories: json['totalCalories'] ?? 0,
      totalDuration: json['totalDuration'] ?? 0,
      averageHeartRate: (json['averageHeartRate'] ?? 0.0).toDouble(),
      stepGoal: json['stepGoal'] ?? 10000,
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => ActivityModel.fromJson(e))
          .toList() ?? [],
    );
  }

  double get stepGoalProgress => stepGoal > 0 ? (totalSteps / stepGoal).clamp(0.0, 1.0) : 0.0;
  int get remainingSteps => (stepGoal - totalSteps).clamp(0, stepGoal);
}

class WeeklyActivitySummary {
  final String id;
  final String userId;
  final DateTime weekStart;
  final DateTime weekEnd;
  final int totalSteps;
  final double totalDistance;
  final int totalCalories;
  final int totalDuration;
  final double averageStepsPerDay;
  final double averageDistancePerDay;
  final double averageCaloriesPerDay;
  final int daysWithGoalAchieved;
  final double goalAchievementRate;
  final List<DailyActivitySummary> dailySummaries;

  WeeklyActivitySummary({
    String? id,
    required this.userId,
    required this.weekStart,
    required this.weekEnd,
    this.totalSteps = 0,
    this.totalDistance = 0.0,
    this.totalCalories = 0,
    this.totalDuration = 0,
    this.dailySummaries = const [],
  }) : 
    id = id ?? const Uuid().v4(),
    averageStepsPerDay = dailySummaries.isNotEmpty ? totalSteps / dailySummaries.length : 0.0,
    averageDistancePerDay = dailySummaries.isNotEmpty ? totalDistance / dailySummaries.length : 0.0,
    averageCaloriesPerDay = dailySummaries.isNotEmpty ? totalCalories / dailySummaries.length : 0.0,
    daysWithGoalAchieved = dailySummaries.where((d) => d.goalAchieved).length,
    goalAchievementRate = dailySummaries.isNotEmpty 
        ? dailySummaries.where((d) => d.goalAchieved).length / dailySummaries.length 
        : 0.0;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'weekStart': weekStart.toIso8601String(),
      'weekEnd': weekEnd.toIso8601String(),
      'totalSteps': totalSteps,
      'totalDistance': totalDistance,
      'totalCalories': totalCalories,
      'totalDuration': totalDuration,
      'averageStepsPerDay': averageStepsPerDay,
      'averageDistancePerDay': averageDistancePerDay,
      'averageCaloriesPerDay': averageCaloriesPerDay,
      'daysWithGoalAchieved': daysWithGoalAchieved,
      'goalAchievementRate': goalAchievementRate,
      'dailySummaries': dailySummaries.map((e) => e.toJson()).toList(),
    };
  }

  factory WeeklyActivitySummary.fromJson(Map<String, dynamic> json) {
    return WeeklyActivitySummary(
      id: json['id'],
      userId: json['userId'],
      weekStart: DateTime.parse(json['weekStart']),
      weekEnd: DateTime.parse(json['weekEnd']),
      totalSteps: json['totalSteps'] ?? 0,
      totalDistance: (json['totalDistance'] ?? 0.0).toDouble(),
      totalCalories: json['totalCalories'] ?? 0,
      totalDuration: json['totalDuration'] ?? 0,
      dailySummaries: (json['dailySummaries'] as List<dynamic>?)
          ?.map((e) => DailyActivitySummary.fromJson(e))
          .toList() ?? [],
    );
  }
}


