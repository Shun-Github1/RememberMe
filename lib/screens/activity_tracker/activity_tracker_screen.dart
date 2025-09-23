import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../services/activity_service.dart';
import '../../l10n/app_localizations.dart';

class ActivityTrackerScreen extends StatelessWidget {
  const ActivityTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.activityTracker),
        backgroundColor: AppConstants.fitnessColor,
        foregroundColor: Colors.white,
      ),
      body: Consumer<ActivityService>(
        builder: (context, activityService, child) {
          return SingleChildScrollView(
            padding: EdgeInsets.only(
              left: AppConstants.spacingM,
              right: AppConstants.spacingM,
              top: AppConstants.spacingM,
              bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Today's Summary
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstants.spacingL),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.todaysActivity,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        const SizedBox(height: AppConstants.spacingM),
                        
                        Row(
                          children: [
                            Expanded(
                              child: _buildStatCard(
                                context,
                                AppLocalizations.of(context)!.steps,
                                '8,542',
                                '10,000',
                                Icons.directions_walk,
                                AppConstants.fitnessColor,
                                0.85,
                              ),
                            ),
                            const SizedBox(width: AppConstants.spacingM),
                            Expanded(
                              child: _buildStatCard(
                                context,
                                AppLocalizations.of(context)!.distance,
                                '6.2 km',
                                '7.0 km',
                                Icons.straighten,
                                AppConstants.primaryTeal,
                                0.89,
                              ),
                            ),
                          ],
                        ),
                        
                        const SizedBox(height: AppConstants.spacingM),
                        
                        Row(
                          children: [
                            Expanded(
                              child: _buildStatCard(
                                context,
                                AppLocalizations.of(context)!.calories,
                                '342',
                                '400',
                                Icons.local_fire_department,
                                AppConstants.warningColor,
                                0.86,
                              ),
                            ),
                            const SizedBox(width: AppConstants.spacingM),
                            Expanded(
                              child: _buildStatCard(
                                context,
                                AppLocalizations.of(context)!.duration,
                                '45 min',
                                '60 min',
                                Icons.timer,
                                AppConstants.primaryBlue,
                                0.75,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Quick Actions
                Text(
                  AppLocalizations.of(context)!.quickActions,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                Row(
                  children: [
                    Expanded(
                      child: _buildActionCard(
                        context,
                        AppLocalizations.of(context)!.logWalk,
                        Icons.directions_walk,
                        AppConstants.fitnessColor,
                        () => _logActivity(context, 'walk'),
                      ),
                    ),
                    const SizedBox(width: AppConstants.spacingM),
                    Expanded(
                      child: _buildActionCard(
                        context,
                        AppLocalizations.of(context)!.logExercise,
                        Icons.fitness_center,
                        AppConstants.primaryTeal,
                        () => _logActivity(context, 'exercise'),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                Row(
                  children: [
                    Expanded(
                      child: _buildActionCard(
                        context,
                        AppLocalizations.of(context)!.setGoals,
                        Icons.track_changes,
                        AppConstants.primaryBlue,
                        () => _setGoals(context),
                      ),
                    ),
                    const SizedBox(width: AppConstants.spacingM),
                    Expanded(
                      child: _buildActionCard(
                        context,
                        AppLocalizations.of(context)!.viewHistory,
                        Icons.history,
                        AppConstants.socialColor,
                        () => _viewHistory(context),
                      ),
                    ),
                  ],
                ),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Weekly Progress
                Text(
                  AppLocalizations.of(context)!.weeklyProgress,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(AppConstants.spacingL),
                    child: Column(
                      children: [
                        Icon(
                          Icons.show_chart,
                          size: 48,
                          color: AppConstants.textMuted,
                        ),
                        const SizedBox(height: AppConstants.spacingM),
                        Text(
                          AppLocalizations.of(context)!.activityChartsComingSoon,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppConstants.spacingS),
                        Text(
                          'Visualize your activity trends and progress with interactive charts and graphs.',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String title,
    String current,
    String goal,
    IconData icon,
    Color color,
    double progress,
  ) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 24,
          ),
          const SizedBox(height: AppConstants.spacingS),
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppConstants.textSecondary,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            current,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: color,
            ),
          ),
          Text(
            'of $goal',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: AppConstants.textMuted,
            ),
          ),
          const SizedBox(height: AppConstants.spacingS),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: AppConstants.borderColor,
            valueColor: AlwaysStoppedAnimation<Color>(color),
            borderRadius: BorderRadius.circular(AppConstants.radiusS),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppConstants.radiusM),
      child: Container(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          border: Border.all(color: color.withOpacity(0.3)),
        ),
        child: Column(
          children: [
            Icon(
              icon,
              color: color,
              size: 32,
            ),
            const SizedBox(height: AppConstants.spacingS),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: color,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _logActivity(BuildContext context, String type) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('${AppLocalizations.of(context)!.logActivity} $type'),
        content: Text(AppLocalizations.of(context)!.activityLoggingFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _setGoals(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.setGoals),
        content: Text(AppLocalizations.of(context)!.goalSettingFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _viewHistory(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.activityHistory),
        content: Text(AppLocalizations.of(context)!.activityHistoryFeatureComingSoon),
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
