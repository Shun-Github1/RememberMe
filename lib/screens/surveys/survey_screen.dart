import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class SurveyScreen extends StatefulWidget {
  const SurveyScreen({super.key});

  @override
  State<SurveyScreen> createState() => _SurveyScreenState();
}

class _SurveyScreenState extends State<SurveyScreen> {
  final List<Map<String, dynamic>> _surveys = [
    {
      'id': '1',
      'title': '6-Month Comprehensive Assessment',
      'description': 'A comprehensive survey to assess your dementia risk factors and overall health status.',
      'category': 'Comprehensive',
      'questions': 10,
      'duration': 15,
      'isCompleted': false,
      'color': AppConstants.primaryTeal,
    },
    {
      'id': '2',
      'title': 'Monthly Lifestyle Check-in',
      'description': 'Quick monthly assessment of your lifestyle habits and progress.',
      'category': 'Lifestyle',
      'questions': 5,
      'duration': 5,
      'isCompleted': true,
      'color': AppConstants.fitnessColor,
    },
    {
      'id': '3',
      'title': 'Weekly Wellbeing Survey',
      'description': 'Reflect on your emotional and mental wellbeing over the past week.',
      'category': 'Wellbeing',
      'questions': 8,
      'duration': 8,
      'isCompleted': false,
      'color': AppConstants.healthColor,
    },
  ];

  String? _selectedCategory;

  List<Map<String, dynamic>> get _filteredSurveys {
    return _surveys.where((survey) {
      final matchesCategory = _selectedCategory == null || survey['category'] == _selectedCategory;
      return matchesCategory;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.surveys),
        backgroundColor: AppConstants.primaryTeal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Header
          Container(
            margin: const EdgeInsets.all(AppConstants.spacingM),
            padding: const EdgeInsets.all(AppConstants.spacingL),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [AppConstants.primaryTeal, AppConstants.primaryBlue],
              ),
              borderRadius: BorderRadius.circular(AppConstants.radiusL),
            ),
            child: Column(
              children: [
                Text(
                  'Health & Lifestyle Surveys',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          // Category filter
          _buildCategoryFilter(),

          // Surveys list
          Expanded(
            child: _filteredSurveys.isEmpty
                ? Center(
                    child: Text(
                      'No surveys found for this category.',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(color: AppConstants.textMuted),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.only(
                      left: AppConstants.spacingM,
                      right: AppConstants.spacingM,
                      bottom: MediaQuery.of(context).padding.bottom + AppConstants.spacingM,
                    ),
                    itemCount: _filteredSurveys.length,
                    itemBuilder: (context, index) {
                      final survey = _filteredSurveys[index];
                      return _buildSurveyCard(context, survey);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoryFilter() {
    final categories = [AppLocalizations.of(context)!.allSurveys, AppLocalizations.of(context)!.comprehensive, AppLocalizations.of(context)!.lifestyle, AppLocalizations.of(context)!.wellbeing];
    
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingM, vertical: AppConstants.spacingS),
      color: AppConstants.cardColor,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: categories.map((category) => _buildFilterChip(category)).toList(),
        ),
      ),
    );
  }

  Widget _buildFilterChip(String category) {
    final isSelected = _selectedCategory == null 
        ? category == AppLocalizations.of(context)!.allSurveys
        : _selectedCategory == category;
        
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS / 2),
      child: ChoiceChip(
        label: Text(category),
        selected: isSelected,
        onSelected: (selected) {
          setState(() {
            _selectedCategory = category == AppLocalizations.of(context)!.allSurveys ? null : category;
          });
        },
        selectedColor: AppConstants.primaryTeal.withOpacity(0.2),
        labelStyle: TextStyle(
          color: isSelected ? AppConstants.primaryTeal : AppConstants.textSecondary,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
        ),
        side: BorderSide(
          color: isSelected ? AppConstants.primaryTeal : AppConstants.borderColor,
        ),
      ),
    );
  }

  Widget _buildSurveyCard(BuildContext context, Map<String, dynamic> survey) {
    final isCompleted = survey['isCompleted'] as bool;
    final color = survey['color'] as Color;
    
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: InkWell(
        onTap: () => _startSurvey(context, survey),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingL),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(AppConstants.radiusS),
                    ),
                    child: Text(
                      survey['category'],
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: color,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Spacer(),
                  if (isCompleted)
                    Icon(
                      Icons.check_circle,
                      color: AppConstants.successColor,
                      size: 20,
                    ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                survey['title'],
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingS),
              
              Text(
                survey['description'],
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: AppConstants.textSecondary,
                ),
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              Row(
                children: [
                  Icon(
                    Icons.quiz,
                    size: 16,
                    color: AppConstants.textMuted,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${survey['questions']} questions',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                  const SizedBox(width: AppConstants.spacingM),
                  Icon(
                    Icons.timer,
                    size: 16,
                    color: AppConstants.textMuted,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    '${survey['duration']} min',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    DateFormat('MMM d').format(DateTime.now()),
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textMuted,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: AppConstants.spacingM),
              
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => _startSurvey(context, survey),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isCompleted ? AppConstants.successColor : AppConstants.primaryTeal,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(isCompleted ? AppLocalizations.of(context)!.reviewResults : AppLocalizations.of(context)!.startSurvey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _startSurvey(BuildContext context, Map<String, dynamic> survey) {
    if (survey['isCompleted']) {
      _showSurveyResults(context, survey);
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SurveyQuestionScreen(survey: survey),
        ),
      ).then((_) {
        setState(() {
          // Mark survey as completed
          final index = _surveys.indexWhere((s) => s['id'] == survey['id']);
          if (index != -1) {
            _surveys[index]['isCompleted'] = true;
          }
        });
      });
    }
  }

  void _showSurveyResults(BuildContext context, Map<String, dynamic> survey) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${survey['title']} - Results'),
        content: Text(AppLocalizations.of(context)!.surveyResultsFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }
}

class SurveyQuestionScreen extends StatefulWidget {
  final Map<String, dynamic> survey;

  const SurveyQuestionScreen({super.key, required this.survey});

  @override
  State<SurveyQuestionScreen> createState() => _SurveyQuestionScreenState();
}

class _SurveyQuestionScreenState extends State<SurveyQuestionScreen> {
  int _currentQuestionIndex = 0;
  Map<String, dynamic> _answers = {};
  
  final List<Map<String, dynamic>> _questions = [
    {
      'id': 'q1',
      'text': 'How would you rate your overall health?',
      'type': 'singleChoice',
      'options': ['Excellent', 'Very Good', 'Good', 'Fair', 'Poor'],
      'required': true,
    },
    {
      'id': 'q2',
      'text': 'How often do you engage in physical exercise?',
      'type': 'singleChoice',
      'options': ['Daily', '3-4 times per week', '1-2 times per week', 'Rarely', 'Never'],
      'required': true,
    },
    {
      'id': 'q3',
      'text': 'How many hours of sleep do you typically get per night?',
      'type': 'number',
      'required': true,
    },
    {
      'id': 'q4',
      'text': 'Do you have a family history of dementia?',
      'type': 'boolean',
      'required': true,
    },
    {
      'id': 'q5',
      'text': 'What is your current weight (in kg)?',
      'type': 'number',
      'required': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / _questions.length;

    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text('${AppLocalizations.of(context)!.question} ${_currentQuestionIndex + 1} ${AppLocalizations.of(context)!.ofQuestions} ${_questions.length}'),
        backgroundColor: AppConstants.primaryTeal,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          // Progress bar
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppConstants.borderColor,
            valueColor: const AlwaysStoppedAnimation<Color>(AppConstants.primaryTeal),
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // Question
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: AppConstants.spacingM,
                right: AppConstants.spacingM,
                top: AppConstants.spacingM,
                bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    currentQuestion['text'],
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const SizedBox(height: AppConstants.spacingL),
                  
                  Expanded(
                    child: _buildQuestionWidget(currentQuestion),
                  ),
                  
                  const SizedBox(height: AppConstants.spacingL),
                  
                  // Navigation buttons
                  Row(
                    children: [
                      if (_currentQuestionIndex > 0)
                        Expanded(
                          child: OutlinedButton(
                            onPressed: _previousQuestion,
                            child: Text(AppLocalizations.of(context)!.previous),
                          ),
                        ),
                      if (_currentQuestionIndex > 0)
                        const SizedBox(width: AppConstants.spacingM),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: _canProceed(currentQuestion) ? _nextQuestion : null,
                          child: Text(_currentQuestionIndex == _questions.length - 1 ? AppLocalizations.of(context)!.complete : AppLocalizations.of(context)!.next),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionWidget(Map<String, dynamic> question) {
    switch (question['type']) {
      case 'singleChoice':
        return Column(
          children: (question['options'] as List<String>).map((option) => 
            RadioListTile<String>(
              title: Text(option),
              value: option,
              groupValue: _answers[question['id']],
              onChanged: (value) {
                setState(() {
                  _answers[question['id']] = value;
                });
              },
            ),
          ).toList(),
        );
        
      case 'number':
        return TextField(
          keyboardType: TextInputType.number,
          decoration: const InputDecoration(
            hintText: 'Enter a number...',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            _answers[question['id']] = int.tryParse(value);
          },
        );
        
      case 'boolean':
        return Column(
          children: [
            RadioListTile<bool>(
              title: Text(AppLocalizations.of(context)!.yes),
              value: true,
              groupValue: _answers[question['id']],
              onChanged: (value) {
                setState(() {
                  _answers[question['id']] = value;
                });
              },
            ),
            RadioListTile<bool>(
              title: Text(AppLocalizations.of(context)!.no),
              value: false,
              groupValue: _answers[question['id']],
              onChanged: (value) {
                setState(() {
                  _answers[question['id']] = value;
                });
              },
            ),
          ],
        );
        
      default:
        return Text(AppLocalizations.of(context)!.unsupportedQuestionType);
    }
  }

  bool _canProceed(Map<String, dynamic> question) {
    if (!question['required']) return true;
    
    final answer = _answers[question['id']];
    return answer != null;
  }

  void _previousQuestion() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
      });
    }
  }

  void _nextQuestion() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      _completeSurvey();
    }
  }

  void _completeSurvey() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.surveyCompletedSuccessfully),
        backgroundColor: AppConstants.successColor,
      ),
    );
    Navigator.pop(context);
  }
}