import 'package:uuid/uuid.dart';

class SurveyModel {
  final String id;
  final String userId;
  final SurveyType type;
  final String title;
  final String description;
  final DateTime createdAt;
  final DateTime? completedAt;
  final bool isCompleted;
  final List<SurveyQuestion> questions;
  final Map<String, dynamic> responses;
  final int estimatedDurationMinutes;
  final SurveyStatus status;

  SurveyModel({
    String? id,
    required this.userId,
    required this.type,
    required this.title,
    required this.description,
    DateTime? createdAt,
    this.completedAt,
    this.isCompleted = false,
    required this.questions,
    Map<String, dynamic>? responses,
    this.estimatedDurationMinutes = 15,
    this.status = SurveyStatus.pending,
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now(),
    responses = responses ?? {};

  SurveyModel copyWith({
    String? userId,
    SurveyType? type,
    String? title,
    String? description,
    DateTime? createdAt,
    DateTime? completedAt,
    bool? isCompleted,
    List<SurveyQuestion>? questions,
    Map<String, dynamic>? responses,
    int? estimatedDurationMinutes,
    SurveyStatus? status,
  }) {
    return SurveyModel(
      id: id,
      userId: userId ?? this.userId,
      type: type ?? this.type,
      title: title ?? this.title,
      description: description ?? this.description,
      createdAt: createdAt ?? this.createdAt,
      completedAt: completedAt ?? this.completedAt,
      isCompleted: isCompleted ?? this.isCompleted,
      questions: questions ?? this.questions,
      responses: responses ?? this.responses,
      estimatedDurationMinutes: estimatedDurationMinutes ?? this.estimatedDurationMinutes,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'type': type.toString().split('.').last,
      'title': title,
      'description': description,
      'createdAt': createdAt.toIso8601String(),
      'completedAt': completedAt?.toIso8601String(),
      'isCompleted': isCompleted,
      'questions': questions.map((q) => q.toJson()).toList(),
      'responses': responses,
      'estimatedDurationMinutes': estimatedDurationMinutes,
      'status': status.toString().split('.').last,
    };
  }

  factory SurveyModel.fromJson(Map<String, dynamic> json) {
    return SurveyModel(
      id: json['id'],
      userId: json['userId'],
      type: SurveyType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      title: json['title'],
      description: json['description'],
      createdAt: DateTime.parse(json['createdAt']),
      completedAt: json['completedAt'] != null ? DateTime.parse(json['completedAt']) : null,
      isCompleted: json['isCompleted'] ?? false,
      questions: (json['questions'] as List<dynamic>)
          .map((q) => SurveyQuestion.fromJson(q))
          .toList(),
      responses: Map<String, dynamic>.from(json['responses'] ?? {}),
      estimatedDurationMinutes: json['estimatedDurationMinutes'] ?? 15,
      status: SurveyStatus.values.firstWhere(
        (e) => e.toString().split('.').last == json['status'],
        orElse: () => SurveyStatus.pending,
      ),
    );
  }

  double get completionProgress {
    if (questions.isEmpty) return 0.0;
    final answeredQuestions = questions.where((q) => responses.containsKey(q.id)).length;
    return answeredQuestions / questions.length;
  }

  int get answeredQuestionsCount => responses.length;
  int get totalQuestionsCount => questions.length;
}

enum SurveyType {
  baseline,
  followUp,
  monthly,
  cognitive,
  mood,
  lifestyle,
  health,
}

enum SurveyStatus {
  pending,
  inProgress,
  completed,
  expired,
}

class SurveyQuestion {
  final String id;
  final String questionText;
  final QuestionType type;
  final List<QuestionOption> options;
  final bool isRequired;
  final String? helpText;
  final Map<String, dynamic> validation;

  SurveyQuestion({
    String? id,
    required this.questionText,
    required this.type,
    this.options = const [],
    this.isRequired = true,
    this.helpText,
    Map<String, dynamic>? validation,
  }) : 
    id = id ?? const Uuid().v4(),
    validation = validation ?? {};

  SurveyQuestion copyWith({
    String? questionText,
    QuestionType? type,
    List<QuestionOption>? options,
    bool? isRequired,
    String? helpText,
    Map<String, dynamic>? validation,
  }) {
    return SurveyQuestion(
      id: id,
      questionText: questionText ?? this.questionText,
      type: type ?? this.type,
      options: options ?? this.options,
      isRequired: isRequired ?? this.isRequired,
      helpText: helpText ?? this.helpText,
      validation: validation ?? this.validation,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'questionText': questionText,
      'type': type.toString().split('.').last,
      'options': options.map((o) => o.toJson()).toList(),
      'isRequired': isRequired,
      'helpText': helpText,
      'validation': validation,
    };
  }

  factory SurveyQuestion.fromJson(Map<String, dynamic> json) {
    return SurveyQuestion(
      id: json['id'],
      questionText: json['questionText'],
      type: QuestionType.values.firstWhere(
        (e) => e.toString().split('.').last == json['type'],
      ),
      options: (json['options'] as List<dynamic>?)
          ?.map((o) => QuestionOption.fromJson(o))
          .toList() ?? [],
      isRequired: json['isRequired'] ?? true,
      helpText: json['helpText'],
      validation: Map<String, dynamic>.from(json['validation'] ?? {}),
    );
  }
}

enum QuestionType {
  singleChoice,
  multipleChoice,
  text,
  number,
  scale,
  date,
  time,
  boolean,
}

class QuestionOption {
  final String id;
  final String text;
  final dynamic value;
  final String? description;
  final bool isOther;

  QuestionOption({
    String? id,
    required this.text,
    required this.value,
    this.description,
    this.isOther = false,
  }) : id = id ?? const Uuid().v4();

  QuestionOption copyWith({
    String? text,
    dynamic value,
    String? description,
    bool? isOther,
  }) {
    return QuestionOption(
      id: id,
      text: text ?? this.text,
      value: value ?? this.value,
      description: description ?? this.description,
      isOther: isOther ?? this.isOther,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'value': value,
      'description': description,
      'isOther': isOther,
    };
  }

  factory QuestionOption.fromJson(Map<String, dynamic> json) {
    return QuestionOption(
      id: json['id'],
      text: json['text'],
      value: json['value'],
      description: json['description'],
      isOther: json['isOther'] ?? false,
    );
  }
}

class SurveyResponse {
  final String id;
  final String surveyId;
  final String userId;
  final DateTime timestamp;
  final Map<String, dynamic> responses;
  final int completionTimeMinutes;
  final String? notes;

  SurveyResponse({
    String? id,
    required this.surveyId,
    required this.userId,
    DateTime? timestamp,
    required this.responses,
    this.completionTimeMinutes = 0,
    this.notes,
  }) : 
    id = id ?? const Uuid().v4(),
    timestamp = timestamp ?? DateTime.now();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'surveyId': surveyId,
      'userId': userId,
      'timestamp': timestamp.toIso8601String(),
      'responses': responses,
      'completionTimeMinutes': completionTimeMinutes,
      'notes': notes,
    };
  }

  factory SurveyResponse.fromJson(Map<String, dynamic> json) {
    return SurveyResponse(
      id: json['id'],
      surveyId: json['surveyId'],
      userId: json['userId'],
      timestamp: DateTime.parse(json['timestamp']),
      responses: Map<String, dynamic>.from(json['responses']),
      completionTimeMinutes: json['completionTimeMinutes'] ?? 0,
      notes: json['notes'],
    );
  }
}


