import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class DietReflectionScreen extends StatefulWidget {
  const DietReflectionScreen({super.key});

  @override
  State<DietReflectionScreen> createState() => _DietReflectionScreenState();
}

class _DietReflectionScreenState extends State<DietReflectionScreen> {
  final TextEditingController _reflectionController = TextEditingController();
  String _selectedQuality = 'average';
  final List<String> _improvementAreas = [];
  List<String> get _availableImprovements => [
    AppLocalizations.of(context)!.moreFruitsAndVegetables,
    AppLocalizations.of(context)!.reduceProcessedFoods,
    AppLocalizations.of(context)!.increaseWaterIntake,
    AppLocalizations.of(context)!.moreWholeGrains,
    AppLocalizations.of(context)!.reduceSugarIntake,
    AppLocalizations.of(context)!.moreLeanProteins,
    AppLocalizations.of(context)!.betterPortionControl,
    AppLocalizations.of(context)!.regularMealTiming,
  ];
  bool _isLoading = false;

  @override
  void dispose() {
    _reflectionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.dietReflection),
        backgroundColor: AppConstants.nutritionColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppConstants.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingL),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppConstants.nutritionColor, AppConstants.primaryTeal],
                ),
                borderRadius: BorderRadius.circular(AppConstants.radiusL),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.dailyDietReflection,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppConstants.spacingS),
                  Text(
                    AppLocalizations.of(context)!.reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppConstants.spacingL),

            // Date selector
            _buildDateSelector(),

            const SizedBox(height: AppConstants.spacingL),

            // Quality rating
            _buildQualityRating(),

            const SizedBox(height: AppConstants.spacingL),

            // Reflection text
            _buildReflectionInput(),

            const SizedBox(height: AppConstants.spacingL),

            // Improvement areas
            _buildImprovementAreas(),

            const SizedBox(height: AppConstants.spacingL),

            // Submit button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isLoading ? null : _submitReflection,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppConstants.nutritionColor,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: AppConstants.spacingL),
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      )
                    : Text(AppLocalizations.of(context)!.saveReflection),
              ),
            ),

            const SizedBox(height: AppConstants.spacingL),

            // Recent reflections
            _buildRecentReflections(),
          ],
        ),
      ),
    );
  }

  Widget _buildDateSelector() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.date,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingS),
            InkWell(
              onTap: () async {
                final DateTime? picked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 30)),
                  lastDate: DateTime.now(),
                );
                if (picked != null) {
                  setState(() {
                    // Update selected date
                  });
                }
              },
              child: Container(
                padding: const EdgeInsets.all(AppConstants.spacingM),
                decoration: BoxDecoration(
                  border: Border.all(color: AppConstants.borderColor),
                  borderRadius: BorderRadius.circular(AppConstants.radiusM),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.calendar_today, color: AppConstants.primaryTeal),
                    const SizedBox(width: AppConstants.spacingM),
                    Text(
                      DateFormat('EEEE, MMMM d, yyyy').format(DateTime.now()),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQualityRating() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How would you rate your diet quality today?',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingM),
            ...['excellent', 'good', 'average', 'poor', 'very_poor'].map((quality) => 
              RadioListTile<String>(
                title: Text(_getQualityTitle(quality)),
                subtitle: Text(_getQualityDescription(quality)),
                value: quality,
                groupValue: _selectedQuality,
                onChanged: (value) {
                  setState(() {
                    _selectedQuality = value!;
                  });
                },
                activeColor: AppConstants.nutritionColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReflectionInput() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.reflection,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingS),
            Text(
              'What did you eat today? How did you feel about your food choices? What went well and what could be improved?',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppConstants.textSecondary),
            ),
            const SizedBox(height: AppConstants.spacingM),
            TextField(
              controller: _reflectionController,
              maxLines: 6,
              decoration: const InputDecoration(
                hintText: 'Write your thoughts here...',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImprovementAreas() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.areasForImprovement,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: AppConstants.spacingS),
            Text(
              'Select areas you\'d like to focus on tomorrow:',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppConstants.textSecondary),
            ),
            const SizedBox(height: AppConstants.spacingM),
            Wrap(
              spacing: AppConstants.spacingS,
              runSpacing: AppConstants.spacingS,
              children: _availableImprovements.map((improvement) => FilterChip(
                label: Text(improvement),
                selected: _improvementAreas.contains(improvement),
                onSelected: (selected) {
                  setState(() {
                    if (selected) {
                      _improvementAreas.add(improvement);
                    } else {
                      _improvementAreas.remove(improvement);
                    }
                  });
                },
                selectedColor: AppConstants.nutritionColor.withOpacity(0.2),
                checkmarkColor: AppConstants.nutritionColor,
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentReflections() {
    // Mock data for recent reflections
    final recentReflections = [
      {
        'date': DateTime.now().subtract(const Duration(days: 1)),
        'quality': 'good',
        'text': 'Had a good day with lots of vegetables and lean protein. Could drink more water.',
        'improvements': ['Increase water intake', 'More fruits'],
      },
      {
        'date': DateTime.now().subtract(const Duration(days: 2)),
        'quality': 'poor',
        'text': 'Ate too many processed snacks today. Need to prepare healthier options.',
        'improvements': ['Reduce processed foods', 'Better meal planning'],
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.recentReflections,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: AppConstants.spacingM),
        ...recentReflections.map((reflection) => Card(
          margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      DateFormat('MMM d').format(reflection['date'] as DateTime),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 2),
                      decoration: BoxDecoration(
                        color: _getQualityColor(reflection['quality'] as String).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(AppConstants.radiusS),
                      ),
                      child: Text(
                        _getQualityTitle(reflection['quality'] as String),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: _getQualityColor(reflection['quality'] as String),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppConstants.spacingS),
                Text(
                  reflection['text'] as String,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppConstants.textSecondary),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                if ((reflection['improvements'] as List<String>).isNotEmpty) ...[
                  const SizedBox(height: AppConstants.spacingS),
                  Wrap(
                    spacing: AppConstants.spacingS / 2,
                    runSpacing: AppConstants.spacingS / 2,
                    children: (reflection['improvements'] as List<String>).map((area) => Chip(
                      label: Text(area),
                      backgroundColor: AppConstants.nutritionColor.withOpacity(0.1),
                      labelStyle: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.nutritionColor,
                      ),
                    )).toList(),
                  ),
                ],
              ],
            ),
          ),
        )),
      ],
    );
  }

  Future<void> _submitReflection() async {
    if (_reflectionController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.pleaseWriteAReflectionBeforeSubmitting),
          backgroundColor: AppConstants.errorColor,
        ),
      );
      return;
    }

    setState(() {
      _isLoading = true;
    });

    // Mock submission
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      _isLoading = false;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.reflectionSavedSuccessfully),
        backgroundColor: AppConstants.successColor,
      ),
    );

    // Reset form
    _reflectionController.clear();
    setState(() {
      _selectedQuality = 'average';
      _improvementAreas.clear();
    });
  }

  String _getQualityTitle(String quality) {
    switch (quality) {
      case 'excellent':
        return AppLocalizations.of(context)!.excellent;
      case 'good':
        return AppLocalizations.of(context)!.good;
      case 'average':
        return AppLocalizations.of(context)!.average;
      case 'poor':
        return AppLocalizations.of(context)!.poor;
      case 'very_poor':
        return AppLocalizations.of(context)!.veryPoor;
      default:
        return AppLocalizations.of(context)!.unknown;
    }
  }

  String _getQualityDescription(String quality) {
    switch (quality) {
      case 'excellent':
        return 'Ate mostly whole foods, plenty of fruits and vegetables';
      case 'good':
        return AppLocalizations.of(context)!.goodChoicesWithRoomForMinorImprovements;
      case 'average':
        return 'Mixed choices, some healthy and some less healthy foods';
      case 'poor':
        return 'Too many processed foods, not enough nutrients';
      case 'very_poor':
        return 'Mostly unhealthy choices, minimal nutrition';
      default:
        return '';
    }
  }

  Color _getQualityColor(String quality) {
    switch (quality) {
      case 'excellent':
        return AppConstants.successColor;
      case 'good':
        return AppConstants.infoColor;
      case 'average':
        return AppConstants.warningColor;
      case 'poor':
        return AppConstants.errorColor;
      case 'very_poor':
        return Colors.red[800]!;
      default:
        return AppConstants.textSecondary;
    }
  }
}