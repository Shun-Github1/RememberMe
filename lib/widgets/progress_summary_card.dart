import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../models/user_model.dart';
import '../l10n/app_localizations.dart';

class ProgressSummaryCard extends StatelessWidget {
  final UserModel? user;

  const ProgressSummaryCard({
    super.key,
    this.user,
  });

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.spacingL),
          child: Center(
            child: Text(AppLocalizations.of(context)!.noUserDataAvailable),
          ),
        ),
      );
    }

    final profileCompletion = _calculateProfileCompletion();
    final surveyCompletion = user!.hasCompletedBaselineSurvey ? 1.0 : 0.0;
    final overallProgress = (profileCompletion + surveyCompletion) / 2;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.yourProgress,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppConstants.spacingS,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: _getProgressColor(overallProgress).withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusS),
                  ),
                  child: Text(
                    '${(overallProgress * 100).round()}% ${AppLocalizations.of(context)!.complete}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: _getProgressColor(overallProgress),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Overall Progress Bar
            LinearProgressIndicator(
              value: overallProgress,
              backgroundColor: AppConstants.borderColor,
              valueColor: AlwaysStoppedAnimation<Color>(_getProgressColor(overallProgress)),
              borderRadius: BorderRadius.circular(AppConstants.radiusS),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Progress Items
            Row(
              children: [
                Expanded(
                  child: _buildProgressItem(
                    context,
                    AppLocalizations.of(context)!.profile,
                    profileCompletion,
                    Icons.person,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildProgressItem(
                    context,
                    AppLocalizations.of(context)!.survey,
                    surveyCompletion,
                    Icons.assignment,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Health Profile Status
            if (user!.healthProfile.hasNHSHealthCheck)
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingS),
                decoration: BoxDecoration(
                  color: AppConstants.successColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: AppConstants.successColor,
                      size: 16,
                    ),
                    const SizedBox(width: AppConstants.spacingS),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.nhsHealthCheckCompleted,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.successColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            else
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingS),
                decoration: BoxDecoration(
                  color: AppConstants.warningColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.info,
                      color: AppConstants.warningColor,
                      size: 16,
                    ),
                    const SizedBox(width: AppConstants.spacingS),
                    Expanded(
                      child: Text(
                        AppLocalizations.of(context)!.nhsHealthCheckRecommended,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.warningColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressItem(
    BuildContext context,
    String title,
    double progress,
    IconData icon,
  ) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              size: 16,
              color: progress >= 1.0 ? AppConstants.successColor : AppConstants.textMuted,
            ),
            const SizedBox(width: 4),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppConstants.textSecondary,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: progress,
          backgroundColor: AppConstants.borderColor,
          valueColor: AlwaysStoppedAnimation<Color>(
            progress >= 1.0 ? AppConstants.successColor : AppConstants.primaryTeal,
          ),
          borderRadius: BorderRadius.circular(AppConstants.radiusS),
        ),
        const SizedBox(height: 4),
        Text(
          '${(progress * 100).round()}%',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: progress >= 1.0 ? AppConstants.successColor : AppConstants.textSecondary,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  double _calculateProfileCompletion() {
    if (user == null) return 0.0;
    
    final healthProfile = user!.healthProfile;
    int completedItems = 0;
    int totalItems = 0;
    
    // Height
    totalItems++;
    if (healthProfile.height != null) completedItems++;
    
    // Weight
    totalItems++;
    if (healthProfile.currentWeight != null) completedItems++;
    
    // GP Information
    totalItems++;
    if (healthProfile.hasGP) completedItems++;
    
    // Emergency Contact
    totalItems++;
    if (healthProfile.emergencyContact != null && 
        healthProfile.emergencyContactPhone != null) completedItems++;
    
    return totalItems > 0 ? completedItems / totalItems : 0.0;
  }

  Color _getProgressColor(double progress) {
    if (progress >= 0.8) return AppConstants.successColor;
    if (progress >= 0.6) return AppConstants.primaryTeal;
    if (progress >= 0.4) return AppConstants.warningColor;
    return AppConstants.errorColor;
  }
}


