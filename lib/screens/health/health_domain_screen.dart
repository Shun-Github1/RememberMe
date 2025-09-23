import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../services/user_service.dart';
import '../../widgets/domain_card.dart';
import '../../l10n/app_localizations.dart';

class HealthDomainScreen extends StatelessWidget {
  const HealthDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.health),
        backgroundColor: AppConstants.healthColor,
        foregroundColor: Colors.white,
      ),
      body: Consumer<UserService>(
        builder: (context, userService, child) {
          final user = userService.currentUser;
          if (user == null) {
            return Center(
              child: Text(AppLocalizations.of(context)!.noUserDataAvailable),
            );
          }

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
                // Header
                Container(
                  padding: const EdgeInsets.all(AppConstants.spacingL),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppConstants.healthColor, AppConstants.primaryTeal],
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
                              AppLocalizations.of(context)!.healthMonitoring,
                              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: AppConstants.spacingS),
                            Text(
                              AppLocalizations.of(context)!.healthMonitoringDescription,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.white.withOpacity(0.9),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.favorite,
                        size: 48,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Health Stats Overview
                _buildHealthStatsOverview(context, user),
                
                const SizedBox(height: AppConstants.spacingL),
                
                // Features
                Text(
                  AppLocalizations.of(context)!.healthFeatures,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                // NHS Health Check
                DomainCard(
                  title: AppLocalizations.of(context)!.nhsHealthCheck,
                  description: AppLocalizations.of(context)!.nhsHealthCheckDescription,
                  iconWidget: _buildNHSIcon(),
                  color: AppConstants.primaryTeal,
                  onTap: () => context.push('/nhs-health-check'),
                  progress: user.healthProfile.hasNHSHealthCheck ? 1.0 : 0.0,
                  lastActivity: user.healthProfile.hasNHSHealthCheck
                      ? user.healthProfile.lastNHSHealthCheck != null 
                          ? AppLocalizations.of(context)!.completed(_formatDate(user.healthProfile.lastNHSHealthCheck!, context))
                          : AppLocalizations.of(context)!.completedRecently
                      : userService.isNHSHealthCheckDue() 
                          ? AppLocalizations.of(context)!.dueNow
                          : AppLocalizations.of(context)!.notDueYet,
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                // Weight Diary
                DomainCard(
                  title: AppLocalizations.of(context)!.weightDiary,
                  description: AppLocalizations.of(context)!.weightDiaryDescription,
                  icon: Icons.monitor_weight,
                  color: AppConstants.healthColor,
                  onTap: () => context.push('/weight-diary'),
                  progress: user.healthProfile.currentWeight != null ? 0.8 : 0.0,
                  lastActivity: user.healthProfile.currentWeight != null 
                      ? AppLocalizations.of(context)!.lastLogged(user.healthProfile.currentWeight!.toStringAsFixed(1))
                      : AppLocalizations.of(context)!.notLoggedYet,
                ),
                
                const SizedBox(height: AppConstants.spacingM),
                
                // Health Profile
                DomainCard(
                  title: AppLocalizations.of(context)!.healthProfile,
                  description: AppLocalizations.of(context)!.healthProfileDescription,
                  icon: Icons.medical_information,
                  color: AppConstants.primaryBlue,
                  onTap: () => _showHealthProfile(context),
                  progress: _calculateHealthProfileCompletion(user),
                  lastActivity: user.healthProfile.hasGP 
                      ? AppLocalizations.of(context)!.gpRegistered(user.healthProfile.gpName ?? 'Registered')
                      : AppLocalizations.of(context)!.noGpRegistered,
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
                      child: _buildQuickActionCard(
                        context,
                        AppLocalizations.of(context)!.logWeight,
                        Icons.monitor_weight,
                        AppConstants.healthColor,
                        () => context.push('/weight-diary'),
                      ),
                    ),
                    const SizedBox(width: AppConstants.spacingM),
                    Expanded(
                      child: _buildQuickActionCard(
                        context,
                        AppLocalizations.of(context)!.healthTips,
                        Icons.lightbulb,
                        AppConstants.primaryTeal,
                        () => _showHealthTips(context),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildHealthStatsOverview(BuildContext context, user) {
    final bmi = user.healthProfile.bmi;
    final bmiCategory = user.healthProfile.bmiCategory;
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingM),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.healthOverview,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // First row - Weight and BMI
            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    context,
                    AppLocalizations.of(context)!.weight,
                    user.healthProfile.currentWeight != null 
                        ? '${user.healthProfile.currentWeight!.toStringAsFixed(1)} kg'
                        : AppLocalizations.of(context)!.notSet,
                    Icons.monitor_weight,
                    AppConstants.healthColor,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildStatCard(
                    context,
                    AppLocalizations.of(context)!.bmi,
                    bmi != null 
                        ? bmi.toStringAsFixed(1)
                        : AppLocalizations.of(context)!.calculate,
                    Icons.straighten,
                    bmi != null 
                        ? _getBMIColor(bmi)
                        : AppConstants.textMuted,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Second row - Category (full width)
            _buildStatCard(
              context,
              AppLocalizations.of(context)!.bmiCategory,
              bmiCategory ?? AppLocalizations.of(context)!.unknown,
              Icons.info,
              bmi != null 
                  ? _getBMIColor(bmi)
                  : AppConstants.textMuted,
              isFullWidth: true,
            ),
            
            if (bmi != null && bmiCategory != null) ...[
              const SizedBox(height: AppConstants.spacingM),
              Container(
                padding: const EdgeInsets.all(AppConstants.spacingS),
                decoration: BoxDecoration(
                  color: _getBMIColor(bmi).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(AppConstants.radiusS),
                ),
                child: Row(
                  children: [
                    Icon(
                      _getBMIIcon(bmi),
                      color: _getBMIColor(bmi),
                      size: 16,
                    ),
                    const SizedBox(width: AppConstants.spacingS),
                    Expanded(
                      child: Text(
                        _getBMIMessage(bmi, bmiCategory, context),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: _getBMIColor(bmi),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildStatCard(
    BuildContext context,
    String title,
    String value,
    IconData icon,
    Color color, {
    bool isFullWidth = false,
  }) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
      ),
      child: isFullWidth 
          ? Row(
              children: [
                Icon(
                  icon,
                  color: color,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        value,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
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
                  value,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
    );
  }

  Widget _buildQuickActionCard(
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
        padding: const EdgeInsets.all(AppConstants.spacingM),
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
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
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


  void _showHealthProfile(BuildContext context) {
    // TODO: Implement health profile management
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(AppLocalizations.of(context)!.healthProfileManagementComingSoon)),
    );
  }

  void _showHealthTips(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.healthTips),
        content: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                AppLocalizations.of(context)!.maintainAHealthyWeight,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(AppLocalizations.of(context)!.keepYourBMIBetween18Point5And24Point9ForOptimalHealth),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.regularHealthChecks,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(AppLocalizations.of(context)!.bookYourFreeNHSHealthCheckEvery5Years),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.knowYourNumbers,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(AppLocalizations.of(context)!.monitorYourBloodPressureCholesterolAndBloodSugarRegularly),
              const SizedBox(height: 12),
              Text(
                AppLocalizations.of(context)!.stayActive,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(AppLocalizations.of(context)!.aimForAtLeast150MinutesOfModerateExercisePerWeek),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.close),
          ),
        ],
      ),
    );
  }

  double _calculateHealthProfileCompletion(user) {
    final profile = user.healthProfile;
    int completed = 0;
    int total = 0;
    
    total++; // Height
    if (profile.height != null) completed++;
    
    total++; // Weight
    if (profile.currentWeight != null) completed++;
    
    total++; // GP
    if (profile.hasGP) completed++;
    
    total++; // Emergency Contact
    if (profile.emergencyContact != null) completed++;
    
    return total > 0 ? completed / total : 0.0;
  }

  String _formatDate(DateTime date, BuildContext context) {
    final now = DateTime.now();
    final difference = now.difference(date).inDays;
    
    if (difference == 0) return AppLocalizations.of(context)!.today;
    if (difference == 1) return AppLocalizations.of(context)!.yesterday;
    if (difference < 7) return AppLocalizations.of(context)!.daysAgo(difference);
    if (difference < 30) return AppLocalizations.of(context)!.weeksAgo((difference / 7).round());
    if (difference < 365) return AppLocalizations.of(context)!.monthsAgo((difference / 30).round());
    return AppLocalizations.of(context)!.yearsAgo((difference / 365).round());
  }

  Color _getBMIColor(double bmi) {
    if (bmi < 18.5) return AppConstants.infoColor; // Underweight
    if (bmi < 25) return AppConstants.successColor; // Normal
    if (bmi < 30) return AppConstants.warningColor; // Overweight
    return AppConstants.errorColor; // Obese
  }

  IconData _getBMIIcon(double bmi) {
    if (bmi < 18.5) return Icons.trending_down;
    if (bmi < 25) return Icons.check_circle;
    if (bmi < 30) return Icons.warning;
    return Icons.error;
  }

  String _getBMIMessage(double bmi, String category, BuildContext context) {
    switch (category) {
      case 'Underweight':
        return AppLocalizations.of(context)!.bmiMessageUnderweight;
      case 'Normal weight':
        return AppLocalizations.of(context)!.bmiMessageNormal;
      case 'Overweight':
        return AppLocalizations.of(context)!.bmiMessageOverweight;
      case 'Obese':
        return AppLocalizations.of(context)!.bmiMessageObese;
      default:
        return AppLocalizations.of(context)!.bmiMessageDefault;
    }
  }

  Widget _buildNHSIcon() {
    return Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        color: AppConstants.nhsBlue,
        borderRadius: BorderRadius.circular(3),
      ),
      child: const Center(
        child: Text(
          'NHS',
          style: TextStyle(
            color: Colors.white,
            fontSize: 8,
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
