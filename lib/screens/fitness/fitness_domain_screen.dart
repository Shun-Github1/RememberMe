import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/domain_card.dart';
import '../../l10n/app_localizations.dart';

class FitnessDomainScreen extends StatelessWidget {
  const FitnessDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.physicalActivity),
        backgroundColor: AppConstants.fitnessColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          left: AppConstants.spacingM,
          right: AppConstants.spacingM,
          top: AppConstants.spacingM,
          bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingL),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppConstants.fitnessColor, AppConstants.primaryTeal],
                ),
                borderRadius: BorderRadius.circular(AppConstants.radiusL),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.stayActive,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppConstants.spacingS),
                        Text(
                          'Regular physical activity can reduce dementia risk by up to 30%',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.directions_run,
                    size: 48,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Activity Tracker
            DomainCard(
              title: AppLocalizations.of(context)!.activityTracker,
              description: AppLocalizations.of(context)!.trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration,
              icon: Icons.directions_walk,
              color: AppConstants.fitnessColor,
              onTap: () => context.push('/activity-tracker'),
              progress: 0.8,
              lastActivity: AppLocalizations.of(context)!.goalAchievedToday,
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Exercise Goals
            DomainCard(
              title: AppLocalizations.of(context)!.exerciseGoals,
              description: AppLocalizations.of(context)!.setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio,
              icon: Icons.track_changes,
              color: AppConstants.primaryTeal,
              onTap: () => _showExerciseGoals(context),
              progress: 0.6,
              lastActivity: '3 goals completed this week',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Social Activities
            DomainCard(
              title: AppLocalizations.of(context)!.socialActivities,
              description: AppLocalizations.of(context)!.joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation,
              icon: Icons.groups,
              color: AppConstants.primaryBlue,
              onTap: () => context.push('/community-events'),
              progress: 0.4,
              lastActivity: 'Last group walk: 1 week ago',
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Fitness Tips
            _buildFitnessTipsCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFitnessTipsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.fitness_center,
                  color: AppConstants.fitnessColor,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.fitnessTips,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildTipItem(
              context,
              'Aim for 10,000 steps daily',
              'Walking is one of the best exercises for brain health. Start with smaller goals and gradually increase.',
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.mixCardioAndStrengthTraining,
              AppLocalizations.of(context)!.bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.stayConsistent,
              AppLocalizations.of(context)!.regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.listenToYourBody,
              AppLocalizations.of(context)!.startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipItem(BuildContext context, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: AppConstants.fitnessColor,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: AppConstants.spacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppConstants.textSecondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showExerciseGoals(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.exerciseGoals),
        content: Text(AppLocalizations.of(context)!.exerciseGoalSettingFeatureComingSoon),
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
