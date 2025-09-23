import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class NHSHealthCheckScreen extends StatefulWidget {
  const NHSHealthCheckScreen({super.key});

  @override
  State<NHSHealthCheckScreen> createState() => _NHSHealthCheckScreenState();
}

class _NHSHealthCheckScreenState extends State<NHSHealthCheckScreen> {
  bool _hasCompletedCheck = false;
  DateTime? _lastCheckDate;
  DateTime? _nextCheckDue;

  bool get _isOverdue {
    if (_lastCheckDate == null) return false;
    return DateTime.now().difference(_lastCheckDate!).inDays > 365;
  }

  @override
  void initState() {
    super.initState();
    _loadHealthCheckStatus();
  }

  void _loadHealthCheckStatus() {
    // Mock data - in real app, load from user profile
    setState(() {
      _hasCompletedCheck = false;
      _lastCheckDate = DateTime.now().subtract(const Duration(days: 400)); // Overdue
      _nextCheckDue = DateTime.now().add(const Duration(days: 35));
    });
  }

  Future<void> _launchNHSWebsite() async {
    const url = 'https://www.nhs.uk/conditions/nhs-health-check/';
    final uri = Uri.parse(url);
    
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.couldNotOpenNHSWebsite),
            backgroundColor: AppConstants.errorColor,
          ),
        );
      }
    }
  }

  Future<void> _launchBookingWebsite() async {
    const url = 'https://www.nhs.uk/service-search/other-services/NHS-Health-Check/LocationSearch/1808';
    final uri = Uri.parse(url);
    
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.couldNotOpenNHSBookingWebsite),
            backgroundColor: AppConstants.errorColor,
          ),
        );
      }
    }
  }

  void _markAsCompleted() {
    setState(() {
      _hasCompletedCheck = true;
      _lastCheckDate = DateTime.now();
      _nextCheckDue = DateTime.now().add(const Duration(days: 365)); // Next year
    });
    
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.healthCheckMarkedAsCompleted),
        backgroundColor: AppConstants.successColor,
      ),
    );
  }

  Widget _buildStatusCard() {
    final isOverdue = _lastCheckDate != null && 
        DateTime.now().difference(_lastCheckDate!).inDays > 365;
    final daysUntilDue = _nextCheckDue != null ? 
        _nextCheckDue!.difference(DateTime.now()).inDays : 0;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _hasCompletedCheck 
                        ? AppConstants.successColor.withValues(alpha: 0.1)
                        : isOverdue 
                            ? AppConstants.errorColor.withValues(alpha: 0.1)
                            : AppConstants.warningColor.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    _hasCompletedCheck 
                        ? Icons.check_circle
                        : isOverdue 
                            ? Icons.warning
                            : Icons.schedule,
                    color: _hasCompletedCheck 
                        ? AppConstants.successColor
                        : isOverdue 
                            ? AppConstants.errorColor
                            : AppConstants.warningColor,
                    size: 32,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _hasCompletedCheck 
                            ? AppLocalizations.of(context)!.healthCheckComplete
                            : isOverdue 
                                ? AppLocalizations.of(context)!.healthCheckOverdue
                                : AppLocalizations.of(context)!.healthCheckDueSoon,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: _hasCompletedCheck 
                              ? AppConstants.successColor
                              : isOverdue 
                                  ? AppConstants.errorColor
                                  : AppConstants.warningColor,
                        ),
                      ),
                      const SizedBox(height: 4),
                      if (_lastCheckDate != null && _hasCompletedCheck)
                        Text(
                          'Completed: ${_formatDate(_lastCheckDate!)}',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                        )
                      else if (_nextCheckDue != null)
                        Text(
                          _isOverdue 
                              ? 'Overdue by ${DateTime.now().difference(_lastCheckDate!).inDays - 365} days'
                              : 'Due in $daysUntilDue days',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInformationCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is an NHS Health Check?',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            const Text(
              'The NHS Health Check is a free check-up of your overall health. It can tell you whether you\'re at higher risk of getting certain health problems, such as:',
              style: TextStyle(height: 1.5),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildInfoItem('• Heart disease'),
            _buildInfoItem('• Diabetes'),
            _buildInfoItem('• Kidney disease'),
            _buildInfoItem('• Stroke'),
            _buildInfoItem('• Dementia'),
            
            const SizedBox(height: AppConstants.spacingM),
            
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingM),
              decoration: BoxDecoration(
                color: AppConstants.infoColor.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(AppConstants.radiusM),
                border: Border.all(
                  color: AppConstants.infoColor.withValues(alpha: 0.3),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.lightbulb,
                    color: AppConstants.infoColor,
                    size: 20,
                  ),
                  const SizedBox(width: AppConstants.spacingS),
                  Expanded(
                    child: Text(
                      'If you\'re aged 40-74 and don\'t have a pre-existing condition, you should be invited every 5 years.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.infoColor,
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

  Widget _buildInfoItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(
        text,
        style: const TextStyle(height: 1.4),
      ),
    );
  }

  Widget _buildBenefitsCard() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.benefitsOfNHSHealthCheck,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildBenefitItem(
              Icons.favorite,
              AppLocalizations.of(context)!.earlyDetection,
              AppLocalizations.of(context)!.identifiesHealthRisksBeforeTheyBecomeSeriousProblems,
            ),
            
            _buildBenefitItem(
              Icons.psychology,
              AppLocalizations.of(context)!.dementiaPrevention,
              AppLocalizations.of(context)!.helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice,
            ),
            
            _buildBenefitItem(
              Icons.free_breakfast,
              AppLocalizations.of(context)!.lifestyleAdvice,
              AppLocalizations.of(context)!.getPersonalizedAdviceOnDietExerciseAndHealthyLiving,
            ),
            
            _buildBenefitItem(
              Icons.medical_services,
              AppLocalizations.of(context)!.freeService,
              AppLocalizations.of(context)!.completelyFreeAndTakesAbout20To30Minutes,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBenefitItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppConstants.spacingS),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppConstants.primaryTeal.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: AppConstants.primaryTeal,
              size: 20,
            ),
          ),
          const SizedBox(width: AppConstants.spacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: AppConstants.textSecondary,
                    height: 1.3,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    if (_hasCompletedCheck) {
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _launchNHSWebsite,
              icon: const Icon(Icons.info_outline),
              label: Text(AppLocalizations.of(context)!.learnMoreAboutHealthChecks),
            ),
          ),
          const SizedBox(height: AppConstants.spacingM),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _markAsCompleted,
              icon: const Icon(Icons.edit),
              label: Text(AppLocalizations.of(context)!.markAsNotCompleted),
            ),
          ),
        ],
      );
    }

    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: _launchBookingWebsite,
            icon: const Icon(Icons.calendar_today),
            label: Text(AppLocalizations.of(context)!.bookYourHealthCheck),
            style: ElevatedButton.styleFrom(
              backgroundColor: AppConstants.primaryTeal,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingM),
        
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: _launchNHSWebsite,
            icon: const Icon(Icons.info_outline),
            label: Text(AppLocalizations.of(context)!.learnMore),
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingM),
        
        SizedBox(
          width: double.infinity,
          child: TextButton.icon(
            onPressed: _markAsCompleted,
            icon: const Icon(Icons.check),
            label: Text(AppLocalizations.of(context)!.iveAlreadyHadMyHealthCheck),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.nhsHealthCheck),
        backgroundColor: AppConstants.healthColor,
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
            // Status Card
            _buildStatusCard(),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Action Buttons
            _buildActionButtons(),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Information Card
            _buildInformationCard(),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Benefits Card
            _buildBenefitsCard(),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Additional Information
            Card(
              child: Padding(
                padding: const EdgeInsets.all(AppConstants.spacingL),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RememberMe & Your Health',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    
                    const SizedBox(height: AppConstants.spacingM),
                    
                    Text(
                      'Regular health checks are an important part of maintaining brain health and reducing dementia risk. The NHS Health Check provides valuable insights that complement your RememberMe journey.',
                      style: const TextStyle(height: 1.5),
                    ),
                    
                    const SizedBox(height: AppConstants.spacingM),
                    
                    Container(
                      padding: const EdgeInsets.all(AppConstants.spacingM),
                      decoration: BoxDecoration(
                        color: AppConstants.primaryTeal.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(AppConstants.radiusM),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.health_and_safety,
                            color: AppConstants.primaryTeal,
                            size: 24,
                          ),
                          const SizedBox(width: AppConstants.spacingM),
                          Expanded(
                            child: Text(
                              'Keep track of your health check results in RememberMe to monitor your dementia risk factors over time.',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: AppConstants.primaryTeal,
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
            ),
          ],
        ),
      ),
    );
  }
}
