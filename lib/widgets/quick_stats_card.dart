import 'package:flutter/material.dart';
import '../constants/app_constants.dart';
import '../l10n/app_localizations.dart';

class QuickStatsCard extends StatelessWidget {
  final int steps;
  final int stepGoal;
  final int waterGlasses;
  final int waterGoal;
  final double sleepHours;
  final int sleepGoal;

  const QuickStatsCard({
    super.key,
    required this.steps,
    required this.stepGoal,
    required this.waterGlasses,
    required this.waterGoal,
    required this.sleepHours,
    required this.sleepGoal,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.todaysStats,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            Row(
              children: [
                Expanded(
                  child: _buildStatItem(
                    context,
                    AppLocalizations.of(context)!.steps,
                    steps.toString(),
                    stepGoal.toString(),
                    Icons.directions_walk,
                    AppConstants.fitnessColor,
                    steps / stepGoal,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildStatItem(
                    context,
                    AppLocalizations.of(context)!.water,
                    '$waterGlasses ${AppLocalizations.of(context)!.glasses}',
                    '$waterGoal ${AppLocalizations.of(context)!.glasses}',
                    Icons.local_drink,
                    AppConstants.nutritionColor,
                    waterGlasses / waterGoal,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildStatItem(
                    context,
                    AppLocalizations.of(context)!.sleep,
                    '${sleepHours.toStringAsFixed(1)}h',
                    '${sleepGoal}h',
                    Icons.bedtime,
                    AppConstants.primaryTeal,
                    sleepHours / sleepGoal,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatItem(
    BuildContext context,
    String title,
    String current,
    String goal,
    IconData icon,
    Color color,
    double progress,
  ) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(AppConstants.spacingS),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(AppConstants.radiusS),
          ),
          child: Icon(
            icon,
            color: color,
            size: 20,
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Text(
          title,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppConstants.textSecondary,
            fontSize: 11,
          ),
        ),
        
        const SizedBox(height: 2),
        
        Text(
          current,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontWeight: FontWeight.bold,
            color: AppConstants.textPrimary,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        
        Text(
          '${AppLocalizations.of(context)!.ofText} $goal',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppConstants.textMuted,
            fontSize: 10,
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Container(
          height: 4,
          decoration: BoxDecoration(
            color: AppConstants.borderColor,
            borderRadius: BorderRadius.circular(2),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: progress.clamp(0.0, 1.0),
            child: Container(
              decoration: BoxDecoration(
                color: _getProgressColor(progress),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Color _getProgressColor(double progress) {
    if (progress >= 1.0) return AppConstants.successColor;
    if (progress >= 0.7) return AppConstants.primaryTeal;
    if (progress >= 0.5) return AppConstants.warningColor;
    return AppConstants.errorColor;
  }
}

