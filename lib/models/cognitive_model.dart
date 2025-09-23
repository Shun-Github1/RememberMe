import 'package:uuid/uuid.dart';

class CognitiveExercise {
  final String id;
  final String title;
  final String description;
  final ExerciseType type;
  final ExerciseCategory category;
  final int estimatedDurationMinutes;
  final DifficultyLevel difficulty;
  final List<String> instructions;
  final Map<String, dynamic> content; // exercise-specific data
  final String? imageUrl;
  final List<String> tags;
  final bool isActive;
  final DateTime createdAt;

  CognitiveExercise({
    String? id,
    required this.title,
    required this.description,
    required this.type,
    required this.category,
    this.estimatedDurationMinutes = 10,
    required this.difficulty,
    this.instructions = const [],
    Map<String, dynamic>? content,
    this.imageUrl,
    this.tags = const [],
    this.isActive = true,
    DateTime? createdAt,
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now(),
    content = content ?? {};

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'type': type.toString().split('.').last,
      'category': category.toString().split('.').last,
      'estimatedDurationMinutes': estimatedDurationMinutes,
      'difficulty': difficulty.toString().split('.').last,
      'instructions': instructions,
      'content': content,
      'imageUrl': imageUrl,
      'tags': tags,
      'isActive': isActive,
      'createdAt': createdAt.toIso8601String(),
    };
  }

  factory CognitiveExercise.fromJson(Map<String, dynamic> json) {
    return CognitiveExercise(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      type: ExerciseType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      category: ExerciseCategory.values.firstWhere(
        (e) => e.toString().split('.').last == json['category'],
      ),
      estimatedDurationMinutes: json['estimatedDurationMinutes'] ?? 10,
      difficulty: DifficultyLevel.values.firstWhere(
        (e) => e.toString().split('.').last == json['difficulty'],
      ),
      instructions: List<String>.from(json['instructions'] ?? []),
      content: Map<String, dynamic>.from(json['content'] ?? {}),
      imageUrl: json['imageUrl'],
      tags: List<String>.from(json['tags'] ?? []),
      isActive: json['isActive'] ?? true,
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}

enum ExerciseType {
  memory,
  attention,
  processingSpeed,
  executiveFunction,
  language,
  visualSpatial,
  reminiscence,
  problemSolving,
  creative,
}

enum ExerciseCategory {
  reminiscence,
  cognitiveTesting,
  brainTraining,
  creative,
  social,
}

enum DifficultyLevel {
  beginner,
  intermediate,
  advanced,
}

class CognitiveSession {
  final String id;
  final String userId;
  final String exerciseId;
  final DateTime startedAt;
  final DateTime? completedAt;
  final SessionStatus status;
  final Map<String, dynamic> responses;
  final int score;
  final int maxScore;
  final int timeSpentSeconds;
  final List<String> correctAnswers;
  final List<String> incorrectAnswers;
  final String? notes;
  final Map<String, dynamic> metadata;

  CognitiveSession({
    String? id,
    required this.userId,
    required this.exerciseId,
    DateTime? startedAt,
    this.completedAt,
    this.status = SessionStatus.inProgress,
    Map<String, dynamic>? responses,
    this.score = 0,
    this.maxScore = 100,
    this.timeSpentSeconds = 0,
    this.correctAnswers = const [],
    this.incorrectAnswers = const [],
    this.notes,
    Map<String, dynamic>? metadata,
  }) : 
    id = id ?? const Uuid().v4(),
    startedAt = startedAt ?? DateTime.now(),
    responses = responses ?? {},
    metadata = metadata ?? {};

  CognitiveSession copyWith({
    DateTime? completedAt,
    SessionStatus? status,
    Map<String, dynamic>? responses,
    int? score,
    int? maxScore,
    int? timeSpentSeconds,
    List<String>? correctAnswers,
    List<String>? incorrectAnswers,
    String? notes,
    Map<String, dynamic>? metadata,
  }) {
    return CognitiveSession(
      id: id,
      userId: userId,
      exerciseId: exerciseId,
      startedAt: startedAt,
      completedAt: completedAt ?? this.completedAt,
      status: status ?? this.status,
      responses: responses ?? this.responses,
      score: score ?? this.score,
      maxScore: maxScore ?? this.maxScore,
      timeSpentSeconds: timeSpentSeconds ?? this.timeSpentSeconds,
      correctAnswers: correctAnswers ?? this.correctAnswers,
      incorrectAnswers: incorrectAnswers ?? this.incorrectAnswers,
      notes: notes ?? this.notes,
      metadata: metadata ?? this.metadata,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'exerciseId': exerciseId,
      'startedAt': startedAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'status': status.toString().split('.').last,
      'responses': responses,
      'score': score,
      'maxScore': maxScore,
      'timeSpentSeconds': timeSpentSeconds,
      'correctAnswers': correctAnswers,
      'incorrectAnswers': incorrectAnswers,
      'notes': notes,
      'metadata': metadata,
    };
  }

  factory CognitiveSession.fromJson(Map<String, dynamic> json) {
    return CognitiveSession(
      id: json['id'],
      userId: json['userId'],
      exerciseId: json['exerciseId'],
      startedAt: DateTime.parse(json['startedAt']),
      completedAt: json['completedAt'] != null ? DateTime.parse(json['completedAt']) : null,
      status: SessionStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => SessionStatus.inProgress,
      ),
      responses: Map<String, dynamic>.from(json['responses'] ?? {}),
      score: json['score'] ?? 0,
      maxScore: json['maxScore'] ?? 100,
      timeSpentSeconds: json['timeSpentSeconds'] ?? 0,
      correctAnswers: List<String>.from(json['correctAnswers'] ?? []),
      incorrectAnswers: List<String>.from(json['incorrectAnswers'] ?? []),
      notes: json['notes'],
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }

  double get accuracy => maxScore > 0 ? (score / maxScore) : 0.0;
  Duration get duration => completedAt != null 
      ? completedAt!.difference(startedAt) 
      : DateTime.now().difference(startedAt);
  bool get isCompleted => status == SessionStatus.completed;
  String get performanceLevel {
    if (accuracy >= 0.9) return 'Excellent';
    if (accuracy >= 0.8) return 'Good';
    if (accuracy >= 0.7) return 'Fair';
    if (accuracy >= 0.6) return 'Below Average';
    return 'Needs Improvement';
  }
}

enum SessionStatus {
  inProgress,
  completed,
  abandoned,
  expired,
}

class ReminiscenceSession {
  final String id;
  final String userId;
  final ReminiscenceType type;
  final DateTime startedAt;
  final DateTime? completedAt;
  final Map<String, dynamic> prompts;
  final Map<String, dynamic> responses;
  final List<String> memories;
  final String? audioRecording;
  final String? notes;
  final int emotionalRating; // 1-5 scale
  final SessionStatus status;

  ReminiscenceSession({
    String? id,
    required this.userId,
    required this.type,
    DateTime? startedAt,
    this.completedAt,
    Map<String, dynamic>? prompts,
    Map<String, dynamic>? responses,
    this.memories = const [],
    this.audioRecording,
    this.notes,
    this.emotionalRating = 3,
    this.status = SessionStatus.inProgress,
  }) : 
    id = id ?? const Uuid().v4(),
    startedAt = startedAt ?? DateTime.now(),
    prompts = prompts ?? {},
    responses = responses ?? {};

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': type.toString().split('.').last,
      'startedAt': startedAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'prompts': prompts,
      'responses': responses,
      'memories': memories,
      'audioRecording': audioRecording,
      'notes': notes,
      'emotionalRating': emotionalRating,
      'status': status.toString().split('.').last,
    };
  }

  factory ReminiscenceSession.fromJson(Map<String, dynamic> json) {
    return ReminiscenceSession(
      id: json['id'],
      userId: json['userId'],
      type: ReminiscenceType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      startedAt: DateTime.parse(json['startedAt']),
      completedAt: json['completedAt'] != null ? DateTime.parse(json['completedAt']) : null,
      prompts: Map<String, dynamic>.from(json['prompts'] ?? {}),
      responses: Map<String, dynamic>.from(json['responses'] ?? {}),
      memories: List<String>.from(json['memories'] ?? []),
      audioRecording: json['audioRecording'],
      notes: json['notes'],
      emotionalRating: json['emotionalRating'] ?? 3,
      status: SessionStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => SessionStatus.inProgress,
      ),
    );
  }

  Duration get duration => completedAt != null 
      ? completedAt!.difference(startedAt) 
      : DateTime.now().difference(startedAt);
  bool get isCompleted => status == SessionStatus.completed;
}

enum ReminiscenceType {
  childhood,
  family,
  career,
  travel,
  hobbies,
  music,
  food,
  holidays,
  school,
  relationships,
  achievements,
  general,
}

class CognitiveAssessment {
  final String id;
  final String userId;
  final AssessmentType type;
  final DateTime completedAt;
  final Map<String, dynamic> results;
  final int totalScore;
  final int maxScore;
  final AssessmentLevel level;
  final String? recommendations;
  final Map<String, dynamic> metadata;

  CognitiveAssessment({
    String? id,
    required this.userId,
    required this.type,
    required this.completedAt,
    required this.results,
    required this.totalScore,
    required this.maxScore,
    required this.level,
    this.recommendations,
    Map<String, dynamic>? metadata,
  }) : 
    id = id ?? const Uuid().v4(),
    metadata = metadata ?? {};

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': type.toString().split('.').last,
      'completedAt': completedAt.toIso8601String(),
      'results': results,
      'totalScore': totalScore,
      'maxScore': maxScore,
      'level': level.toString().split('.').last,
      'recommendations': recommendations,
      'metadata': metadata,
    };
  }

  factory CognitiveAssessment.fromJson(Map<String, dynamic> json) {
    return CognitiveAssessment(
      id: json['id'],
      userId: json['userId'],
      type: AssessmentType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      completedAt: DateTime.parse(json['completedAt']),
      results: Map<String, dynamic>.from(json['results']),
      totalScore: json['totalScore'],
      maxScore: json['maxScore'],
      level: AssessmentLevel.values.firstWhere(
        (e) => e.toString().split('.').last == json['level'],
      ),
      recommendations: json['recommendations'],
      metadata: Map<String, dynamic>.from(json['metadata'] ?? {}),
    );
  }

  double get scorePercentage => maxScore > 0 ? (totalScore / maxScore) : 0.0;
}

enum AssessmentType {
  miniMentalState,
  clockDrawing,
  verbalFluency,
  memoryRecall,
  attentionSpan,
  processingSpeed,
  executiveFunction,
  comprehensive,
}

enum AssessmentLevel {
  normal,
  mildImpairment,
  moderateImpairment,
  severeImpairment,
}

class DailyCognitiveSummary {
  final String id;
  final String userId;
  final DateTime date;
  final List<CognitiveSession> sessions;
  final List<ReminiscenceSession> reminiscenceSessions;
  final int totalTimeSpentMinutes;
  final double averageScore;
  final int exercisesCompleted;
  final int reminiscenceSessionsCompleted;
  final CognitiveMood mood;
  final String? notes;

  DailyCognitiveSummary({
    String? id,
    required this.userId,
    required this.date,
    this.sessions = const [],
    this.reminiscenceSessions = const [],
    this.totalTimeSpentMinutes = 0,
    this.averageScore = 0.0,
    this.exercisesCompleted = 0,
    this.reminiscenceSessionsCompleted = 0,
    this.mood = CognitiveMood.neutral,
    this.notes,
  }) : 
    id = id ?? const Uuid().v4();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'date': date.toIso8601String().split('T')[0],
      'sessions': sessions.map((s) => s.toJson()).toList(),
      'reminiscenceSessions': reminiscenceSessions.map((s) => s.toJson()).toList(),
      'totalTimeSpentMinutes': totalTimeSpentMinutes,
      'averageScore': averageScore,
      'exercisesCompleted': exercisesCompleted,
      'reminiscenceSessionsCompleted': reminiscenceSessionsCompleted,
      'mood': mood.toString().split('.').last,
      'notes': notes,
    };
  }

  factory DailyCognitiveSummary.fromJson(Map<String, dynamic> json) {
    return DailyCognitiveSummary(
      id: json['id'],
      userId: json['userId'],
      date: DateTime.parse(json['date']),
      sessions: (json['sessions'] as List<dynamic>?)
          ?.map((s) => CognitiveSession.fromJson(s))
          .toList() ?? [],
      reminiscenceSessions: (json['reminiscenceSessions'] as List<dynamic>?)
          ?.map((s) => ReminiscenceSession.fromJson(s))
          .toList() ?? [],
      totalTimeSpentMinutes: json['totalTimeSpentMinutes'] ?? 0,
      averageScore: (json['averageScore'] ?? 0.0).toDouble(),
      exercisesCompleted: json['exercisesCompleted'] ?? 0,
      reminiscenceSessionsCompleted: json['reminiscenceSessionsCompleted'] ?? 0,
      mood: CognitiveMood.values.firstWhere(
        (e) => e.toString().split('.').last == json['mood'],
        orElse: () => CognitiveMood.neutral,
      ),
      notes: json['notes'],
    );
  }
}

enum CognitiveMood {
  excellent,
  good,
  neutral,
  challenging,
  difficult,
}


