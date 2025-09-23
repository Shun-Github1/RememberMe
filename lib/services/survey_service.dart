import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/survey_model.dart';
import '../constants/app_constants.dart';

class SurveyService extends ChangeNotifier {
  List<SurveyModel> _surveys = [];
  List<SurveyResponse> _responses = [];
  bool _isLoading = false;
  String? _error;

  List<SurveyModel> get surveys => List.unmodifiable(_surveys);
  List<SurveyResponse> get responses => List.unmodifiable(_responses);
  bool get isLoading => _isLoading;
  String? get error => _error;

  static void initialize() {
    // Initialize survey service
  }

  Future<void> initializeService(String userId) async {
    _isLoading = true;
    try {
      await loadSurveyData(userId);
      await generateMockSurveys(userId);
    } catch (e) {
      _setError('Failed to initialize survey service: $e');
    } finally {
      _isLoading = false;
    }
  }

  Future<void> loadSurveyData(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final surveysData = prefs.getString('surveys_$userId');
      final responsesData = prefs.getString('survey_responses_$userId');
      
      if (surveysData != null) {
        final surveysJson = json.decode(surveysData) as List;
        _surveys = surveysJson
            .map((json) => SurveyModel.fromJson(json))
            .toList();
      }
      
      if (responsesData != null) {
        final responsesJson = json.decode(responsesData) as List;
        _responses = responsesJson
            .map((json) => SurveyResponse.fromJson(json))
            .toList();
      }
    } catch (e) {
      _setError('Failed to load survey data: $e');
    }
  }

  Future<void> saveSurveyData(String userId) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final surveysJson = _surveys.map((s) => s.toJson()).toList();
      await prefs.setString('surveys_$userId', json.encode(surveysJson));
      
      final responsesJson = _responses.map((r) => r.toJson()).toList();
      await prefs.setString('survey_responses_$userId', json.encode(responsesJson));
    } catch (e) {
      _setError('Failed to save survey data: $e');
    }
  }

  Future<void> generateMockSurveys(String userId) async {
    if (_surveys.isNotEmpty) return; // Surveys already exist

    // Generate baseline survey
    final baselineSurvey = _createBaselineSurvey(userId);
    _surveys.add(baselineSurvey);

    // Generate follow-up surveys (every 6 months)
    final now = DateTime.now();
    for (int i = 1; i <= 4; i++) {
      final followUpDate = now.subtract(Duration(days: i * 180)); // 6 months apart
      final followUpSurvey = _createFollowUpSurvey(userId, followUpDate);
      _surveys.add(followUpSurvey);
    }

    // Generate monthly check-in surveys
    for (int i = 1; i <= 12; i++) {
      final monthlyDate = now.subtract(Duration(days: i * 30));
      final monthlySurvey = _createMonthlySurvey(userId, monthlyDate);
      _surveys.add(monthlySurvey);
    }

    await saveSurveyData(userId);
    notifyListeners();
  }

  SurveyModel _createBaselineSurvey(String userId) {
    final questions = [
      // Demographics
      SurveyQuestion(
        questionText: 'What is your age?',
        type: QuestionType.number,
        validation: {'min': 18, 'max': 120},
      ),
      SurveyQuestion(
        questionText: 'What is your gender?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Male', value: 'male'),
          QuestionOption(text: 'Female', value: 'female'),
          QuestionOption(text: 'Other', value: 'other'),
          QuestionOption(text: 'Prefer not to say', value: 'prefer_not_to_say'),
        ],
      ),
      
      // Health History
      SurveyQuestion(
        questionText: 'Do you have any of the following conditions? (Select all that apply)',
        type: QuestionType.multipleChoice,
        options: [
          QuestionOption(text: 'Diabetes', value: 'diabetes'),
          QuestionOption(text: 'High blood pressure', value: 'hypertension'),
          QuestionOption(text: 'Heart disease', value: 'heart_disease'),
          QuestionOption(text: 'Stroke', value: 'stroke'),
          QuestionOption(text: 'Depression', value: 'depression'),
          QuestionOption(text: 'Anxiety', value: 'anxiety'),
          QuestionOption(text: 'None of the above', value: 'none'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'Do you have a family history of dementia or Alzheimer\'s disease?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Yes, in immediate family', value: 'immediate'),
          QuestionOption(text: 'Yes, in extended family', value: 'extended'),
          QuestionOption(text: 'No', value: 'no'),
          QuestionOption(text: 'Not sure', value: 'not_sure'),
        ],
      ),
      
      // Lifestyle
      SurveyQuestion(
        questionText: 'How often do you engage in physical activity?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Daily', value: 'daily'),
          QuestionOption(text: '3-4 times per week', value: '3_4_times'),
          QuestionOption(text: '1-2 times per week', value: '1_2_times'),
          QuestionOption(text: 'Rarely', value: 'rarely'),
          QuestionOption(text: 'Never', value: 'never'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'How would you rate your current diet?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Excellent', value: 'excellent'),
          QuestionOption(text: 'Good', value: 'good'),
          QuestionOption(text: 'Fair', value: 'fair'),
          QuestionOption(text: 'Poor', value: 'poor'),
        ],
      ),
      
      // Cognitive Assessment
      SurveyQuestion(
        questionText: 'How would you rate your memory compared to 5 years ago?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Much better', value: 'much_better'),
          QuestionOption(text: 'Somewhat better', value: 'somewhat_better'),
          QuestionOption(text: 'About the same', value: 'same'),
          QuestionOption(text: 'Somewhat worse', value: 'somewhat_worse'),
          QuestionOption(text: 'Much worse', value: 'much_worse'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'How often do you feel lonely or isolated?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Never', value: 'never'),
          QuestionOption(text: 'Rarely', value: 'rarely'),
          QuestionOption(text: 'Sometimes', value: 'sometimes'),
          QuestionOption(text: 'Often', value: 'often'),
          QuestionOption(text: 'Always', value: 'always'),
        ],
      ),
      
      // Sleep
      SurveyQuestion(
        questionText: 'How many hours of sleep do you typically get per night?',
        type: QuestionType.number,
        validation: {'min': 0, 'max': 24},
      ),
      
      SurveyQuestion(
        questionText: 'How would you rate the quality of your sleep?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Excellent', value: 'excellent'),
          QuestionOption(text: 'Good', value: 'good'),
          QuestionOption(text: 'Fair', value: 'fair'),
          QuestionOption(text: 'Poor', value: 'poor'),
        ],
      ),
    ];

    return SurveyModel(
      userId: userId,
      type: SurveyType.baseline,
      title: 'Baseline Health Assessment',
      description: 'This comprehensive survey helps us understand your current health status and lifestyle. It takes about 15-20 minutes to complete.',
      questions: questions,
      estimatedDurationMinutes: 20,
    );
  }

  SurveyModel _createFollowUpSurvey(String userId, DateTime createdAt) {
    final questions = [
      SurveyQuestion(
        questionText: 'How has your overall health changed since your last assessment?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Much improved', value: 'much_improved'),
          QuestionOption(text: 'Somewhat improved', value: 'somewhat_improved'),
          QuestionOption(text: 'About the same', value: 'same'),
          QuestionOption(text: 'Somewhat declined', value: 'somewhat_declined'),
          QuestionOption(text: 'Much declined', value: 'much_declined'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'Have you been diagnosed with any new health conditions?',
        type: QuestionType.text,
        helpText: 'Please describe any new diagnoses or health concerns',
      ),
      
      SurveyQuestion(
        questionText: 'How often have you used the RememberMe app in the past 6 months?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Daily', value: 'daily'),
          QuestionOption(text: 'Most days', value: 'most_days'),
          QuestionOption(text: 'Weekly', value: 'weekly'),
          QuestionOption(text: 'Monthly', value: 'monthly'),
          QuestionOption(text: 'Rarely', value: 'rarely'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'Which features of the app have you found most helpful?',
        type: QuestionType.multipleChoice,
        options: [
          QuestionOption(text: 'Activity tracking', value: 'activity'),
          QuestionOption(text: 'Nutrition tips', value: 'nutrition'),
          QuestionOption(text: 'Social features', value: 'social'),
          QuestionOption(text: 'Cognitive exercises', value: 'cognitive'),
          QuestionOption(text: 'Health monitoring', value: 'health'),
          QuestionOption(text: 'Surveys', value: 'surveys'),
        ],
      ),
    ];

    return SurveyModel(
      userId: userId,
      type: SurveyType.followUp,
      title: '6-Month Follow-up Assessment',
      description: 'Let\'s check in on your progress and see how the app is helping you.',
      questions: questions,
      estimatedDurationMinutes: 10,
      createdAt: createdAt,
    );
  }

  SurveyModel _createMonthlySurvey(String userId, DateTime createdAt) {
    final questions = [
      SurveyQuestion(
        questionText: 'How are you feeling today?',
        type: QuestionType.singleChoice,
        options: [
          QuestionOption(text: 'Excellent', value: 'excellent'),
          QuestionOption(text: 'Good', value: 'good'),
          QuestionOption(text: 'Fair', value: 'fair'),
          QuestionOption(text: 'Poor', value: 'poor'),
        ],
      ),
      
      SurveyQuestion(
        questionText: 'How many days this month did you meet your step goal?',
        type: QuestionType.number,
        validation: {'min': 0, 'max': 31},
      ),
      
      SurveyQuestion(
        questionText: 'How would you rate your sleep quality this month?',
        type: QuestionType.scale,
        validation: {'min': 1, 'max': 10},
      ),
      
      SurveyQuestion(
        questionText: 'Have you attended any community events or social activities this month?',
        type: QuestionType.boolean,
      ),
      
      SurveyQuestion(
        questionText: 'Any additional comments or concerns?',
        type: QuestionType.text,
        isRequired: false,
      ),
    ];

    return SurveyModel(
      userId: userId,
      type: SurveyType.monthly,
      title: 'Monthly Health Check-in',
      description: 'Quick check-in to see how you\'re doing this month.',
      questions: questions,
      estimatedDurationMinutes: 5,
      createdAt: createdAt,
    );
  }

  Future<void> startSurvey(String surveyId) async {
    final surveyIndex = _surveys.indexWhere((s) => s.id == surveyId);
    if (surveyIndex != -1) {
      _surveys[surveyIndex] = _surveys[surveyIndex].copyWith(
        status: SurveyStatus.inProgress,
      );
      notifyListeners();
    }
  }

  Future<void> updateSurveyProgress(String surveyId, Map<String, dynamic> responses) async {
    final surveyIndex = _surveys.indexWhere((s) => s.id == surveyId);
    if (surveyIndex != -1) {
      final updatedResponses = Map<String, dynamic>.from(_surveys[surveyIndex].responses);
      updatedResponses.addAll(responses);
      
      _surveys[surveyIndex] = _surveys[surveyIndex].copyWith(
        responses: updatedResponses,
      );
      notifyListeners();
    }
  }

  Future<void> completeSurvey(String surveyId, Map<String, dynamic> finalResponses) async {
    _isLoading = true;
    try {
      final surveyIndex = _surveys.indexWhere((s) => s.id == surveyId);
      if (surveyIndex != -1) {
        final survey = _surveys[surveyIndex];
        final updatedResponses = Map<String, dynamic>.from(survey.responses);
        updatedResponses.addAll(finalResponses);
        
        _surveys[surveyIndex] = survey.copyWith(
          status: SurveyStatus.completed,
          completedAt: DateTime.now(),
          isCompleted: true,
          responses: updatedResponses,
        );
        
        // Create survey response record
        final response = SurveyResponse(
          surveyId: surveyId,
          userId: survey.userId,
          responses: updatedResponses,
          completionTimeMinutes: survey.estimatedDurationMinutes,
        );
        
        _responses.add(response);
        
        await saveSurveyData(survey.userId);
        notifyListeners();
      }
    } catch (e) {
      _setError('Failed to complete survey: $e');
    } finally {
      _isLoading = false;
    }
  }

  List<SurveyModel> getAvailableSurveys(String userId) {
    return _surveys.where((s) => 
        s.userId == userId && 
        s.status == SurveyStatus.pending
    ).toList();
  }

  List<SurveyModel> getCompletedSurveys(String userId) {
    return _surveys.where((s) => 
        s.userId == userId && 
        s.status == SurveyStatus.completed
    ).toList();
  }

  SurveyModel? getSurveyById(String surveyId) {
    try {
      return _surveys.firstWhere((s) => s.id == surveyId);
    } catch (e) {
      return null;
    }
  }

  SurveyResponse? getSurveyResponse(String surveyId) {
    try {
      return _responses.firstWhere((r) => r.surveyId == surveyId);
    } catch (e) {
      return null;
    }
  }

  bool isSurveyDue(String userId) {
    final lastCompletedSurvey = getCompletedSurveys(userId).isNotEmpty
        ? getCompletedSurveys(userId).first
        : null;
    
    if (lastCompletedSurvey == null) {
      return true; // No surveys completed yet
    }
    
    final daysSinceLastSurvey = DateTime.now()
        .difference(lastCompletedSurvey.completedAt!)
        .inDays;
    
    return daysSinceLastSurvey >= AppConstants.followUpSurveyInterval;
  }

  int getDaysUntilNextSurvey(String userId) {
    final lastCompletedSurvey = getCompletedSurveys(userId).isNotEmpty
        ? getCompletedSurveys(userId).first
        : null;
    
    if (lastCompletedSurvey == null) {
      return 0;
    }
    
    final daysSinceLastSurvey = DateTime.now()
        .difference(lastCompletedSurvey.completedAt!)
        .inDays;
    
    return (AppConstants.followUpSurveyInterval - daysSinceLastSurvey).clamp(0, 
        AppConstants.followUpSurveyInterval);
  }

  double getSurveyCompletionRate(String userId) {
    final userSurveys = _surveys.where((s) => s.userId == userId).toList();
    if (userSurveys.isEmpty) return 0.0;
    
    final completedSurveys = userSurveys.where((s) => s.isCompleted).length;
    return completedSurveys / userSurveys.length;
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
