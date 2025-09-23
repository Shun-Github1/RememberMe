import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../constants/app_constants.dart';
import '../services/user_service.dart';
import '../services/activity_service.dart';
import '../services/survey_service.dart';
import '../widgets/domain_card.dart';
import '../widgets/progress_summary_card.dart';
import '../widgets/quick_stats_card.dart';
import '../widgets/reminder_card.dart';
import '../widgets/nhs_logo_widget.dart';
import '../l10n/app_localizations.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    
    // Initialize services
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initializeServices();
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Future<void> _initializeServices() async {
    final userService = Provider.of<UserService>(context, listen: false);
    final activityService = Provider.of<ActivityService>(context, listen: false);
    final surveyService = Provider.of<SurveyService>(context, listen: false);
    
    if (userService.currentUser != null) {
      await Future.wait([
        activityService.initializeService(userService.currentUser!.id),
        surveyService.initializeService(userService.currentUser!.id),
      ]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Consumer<UserService>(
          builder: (context, userService, child) {
            return Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 32,
                  height: 32,
                  fit: BoxFit.contain,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userService.getWelcomeMessage(),
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        userService.getProgressSummary(),
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {
              // TODO: Navigate to notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => context.push('/settings'),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.7),
          indicatorColor: Colors.white,
          indicatorWeight: 3,
          tabs: [
            Tab(text: AppLocalizations.of(context)!.overview),
            Tab(text: AppLocalizations.of(context)!.domains),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildOverviewTab(),
          _buildDomainsTab(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Quick action - could be activity logging, survey, etc.
          _showQuickActionSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildOverviewTab() {
    return RefreshIndicator(
      onRefresh: _refreshData,
      child: SingleChildScrollView(
        controller: _scrollController,
        padding: EdgeInsets.only(
          left: AppConstants.spacingM,
          right: AppConstants.spacingM,
          top: AppConstants.spacingM,
          bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom + 80, // Extra space for FAB
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quick Stats
            Consumer<ActivityService>(
              builder: (context, activityService, child) {
                final todaySummary = activityService.getTodaySummary(
                  Provider.of<UserService>(context, listen: false).currentUser?.id ?? '',
                );
                
                return QuickStatsCard(
                  steps: todaySummary?.totalSteps ?? 0,
                  stepGoal: todaySummary?.stepGoal ?? AppConstants.defaultStepGoal,
                  waterGlasses: 6, // TODO: Get from nutrition service
                  waterGoal: 8,
                  sleepHours: 7.5, // TODO: Get from health service
                  sleepGoal: 8,
                );
              },
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Progress Summary
            Consumer<UserService>(
              builder: (context, userService, child) {
                return ProgressSummaryCard(
                  user: userService.currentUser,
                );
              },
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Reminders
            _buildRemindersSection(),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Recent Activity
            _buildRecentActivitySection(),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Health Tips
            _buildHealthTipsSection(),
            
            const SizedBox(height: AppConstants.spacingXL),
            
            // NHS Partnership Info
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingM),
              decoration: BoxDecoration(
                color: AppConstants.nhsBlue.withOpacity(0.05),
                borderRadius: BorderRadius.circular(AppConstants.radiusM),
                border: Border.all(
                  color: AppConstants.nhsBlue.withOpacity(0.2),
                ),
              ),
              child: Column(
                children: [
                  const NHSLogoWidget(
                    height: 40,
                  ),
                  const SizedBox(height: AppConstants.spacingS),
                  Text(
                    AppLocalizations.of(context)!.developedInPartnershipWithNHS,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: AppConstants.nhsBlue,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppConstants.spacingXS),
                  Text(
                    'RememberMe is part of NHS efforts to support dementia prevention through lifestyle tracking.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.textSecondary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDomainsTab() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        left: AppConstants.spacingM,
        right: AppConstants.spacingM,
        top: AppConstants.spacingM,
        bottom: AppConstants.spacingM + MediaQuery.of(context).padding.bottom + 80, // Extra space for FAB
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.healthDomains,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: AppConstants.spacingS),
          Text(
            'Tap on any domain to explore features and track your progress.',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppConstants.textSecondary,
            ),
          ),
          
          const SizedBox(height: AppConstants.spacingL),
          
          // Health Domain
          DomainCard(
            title: AppLocalizations.of(context)!.health,
            description: AppLocalizations.of(context)!.healthDescription,
            icon: Icons.favorite,
            color: AppConstants.healthColor,
            onTap: () => context.push('/health'),
            progress: 0.7,
            lastActivity: 'Weight logged 2 days ago',
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // Social Domain
          DomainCard(
            title: AppLocalizations.of(context)!.socialEngagement,
            description: AppLocalizations.of(context)!.socialEngagementDescription,
            icon: Icons.people,
            color: AppConstants.socialColor,
            onTap: () => context.push('/social'),
            progress: 0.5,
            lastActivity: 'Attended event 1 week ago',
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // Fitness Domain
          DomainCard(
            title: AppLocalizations.of(context)!.physicalActivity,
            description: AppLocalizations.of(context)!.physicalActivityDescription,
            icon: Icons.directions_run,
            color: AppConstants.fitnessColor,
            onTap: () => context.push('/fitness'),
            progress: 0.8,
            lastActivity: AppLocalizations.of(context)!.goalAchievedToday,
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // Cognitive Domain
          DomainCard(
            title: AppLocalizations.of(context)!.cognitiveTraining,
            description: AppLocalizations.of(context)!.cognitiveTrainingDescription,
            icon: Icons.psychology,
            color: AppConstants.cognitiveColor,
            onTap: () => context.push('/cognitive'),
            progress: 0.6,
            lastActivity: AppLocalizations.of(context)!.exerciseCompletedYesterday,
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // Nutrition Domain
          DomainCard(
            title: AppLocalizations.of(context)!.healthyDiet,
            description: AppLocalizations.of(context)!.healthyDietDescription,
            icon: Icons.restaurant,
            color: AppConstants.nutritionColor,
            onTap: () => context.push('/nutrition'),
            progress: 0.4,
            lastActivity: 'Meal logged 1 day ago',
          ),
        ],
      ),
    );
  }

  Widget _buildRemindersSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.reminders,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                // TODO: Navigate to all reminders
              },
              child: Text(AppLocalizations.of(context)!.viewAll),
            ),
          ],
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Consumer<SurveyService>(
          builder: (context, surveyService, child) {
            final userService = Provider.of<UserService>(context, listen: false);
            final isSurveyDue = surveyService.isSurveyDue(userService.currentUser?.id ?? '');
            
            if (isSurveyDue) {
              return ReminderCard(
                title: AppLocalizations.of(context)!.healthSurveyDue,
                description: AppLocalizations.of(context)!.healthSurveyDueDescription,
                icon: Icons.assignment,
                color: AppConstants.primaryTeal,
                onTap: () => context.push('/surveys'),
                actionText: AppLocalizations.of(context)!.takeSurvey,
              );
            }
            
            return const SizedBox.shrink();
          },
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Consumer<UserService>(
          builder: (context, userService, child) {
            final isNHSHealthCheckDue = userService.isNHSHealthCheckDue();
            
            if (isNHSHealthCheckDue) {
              return ReminderCard(
                title: AppLocalizations.of(context)!.nhsHealthCheck,
                description: AppLocalizations.of(context)!.nhsHealthCheckDescription,
                icon: Icons.local_hospital,
                color: AppConstants.healthColor,
                onTap: () => context.push('/health'),
                actionText: AppLocalizations.of(context)!.learnMore,
              );
            }
            
            return const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  Widget _buildRecentActivitySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.recentActivity,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () => context.push('/activity-tracker'),
              child: Text(AppLocalizations.of(context)!.viewAll),
            ),
          ],
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Consumer<ActivityService>(
          builder: (context, activityService, child) {
            final recentActivities = activityService.getLastWeekSummaries(
              Provider.of<UserService>(context, listen: false).currentUser?.id ?? '',
            ).take(3).toList();
            
            if (recentActivities.isEmpty) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(AppConstants.spacingL),
                  child: Column(
                    children: [
                      Icon(
                        Icons.trending_up,
                        size: 48,
                        color: AppConstants.textMuted,
                      ),
                      const SizedBox(height: AppConstants.spacingM),
                      Text(
                        AppLocalizations.of(context)!.startTrackingYourActivities,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: AppConstants.spacingS),
                      Text(
                        'Log your daily activities to see your progress here.',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppConstants.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }
            
            return Column(
              children: recentActivities.map((summary) {
                return Card(
                  margin: const EdgeInsets.only(bottom: AppConstants.spacingS),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: AppConstants.primaryTeal.withOpacity(0.1),
                      child: Icon(
                        Icons.directions_walk,
                        color: AppConstants.primaryTeal,
                      ),
                    ),
                    title: Text(
                      '${summary.totalSteps} steps',
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      '${summary.totalCalories} calories • ${summary.totalDuration} min',
                    ),
                    trailing: Text(
                      summary.date.day.toString(),
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: AppConstants.primaryTeal,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () => context.push('/activity-tracker'),
                  ),
                );
              }).toList(),
            );
          },
        ),
      ],
    );
  }

  Widget _buildHealthTipsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.healthTipOfTheDay,
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        
        const SizedBox(height: AppConstants.spacingS),
        
        Card(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(AppConstants.spacingS),
                  decoration: BoxDecoration(
                    color: AppConstants.primaryTeal.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusS),
                  ),
                  child: const Icon(
                    Icons.lightbulb,
                    color: AppConstants.primaryTeal,
                    size: 24,
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.stayHydrated,
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Drinking enough water helps maintain cognitive function and overall brain health.',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppConstants.textSecondary,
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
    );
  }

  Future<void> _refreshData() async {
    await _initializeServices();
  }

  void _showQuickActionSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppLocalizations.of(context)!.quickActions,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            Row(
              children: [
                Expanded(
                  child: _buildQuickActionButton(
                    AppLocalizations.of(context)!.logActivity,
                    Icons.directions_walk,
                    AppConstants.fitnessColor,
                    () {
                      Navigator.pop(context);
                      context.push('/activity-tracker');
                    },
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildQuickActionButton(
                    AppLocalizations.of(context)!.takeSurvey,
                    Icons.assignment,
                    AppConstants.primaryTeal,
                    () {
                      Navigator.pop(context);
                      context.push('/surveys');
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            Row(
              children: [
                Expanded(
                  child: _buildQuickActionButton(
                    AppLocalizations.of(context)!.logWeight,
                    Icons.monitor_weight,
                    AppConstants.healthColor,
                    () {
                      Navigator.pop(context);
                      context.push('/weight-diary');
                    },
                  ),
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: _buildQuickActionButton(
                    AppLocalizations.of(context)!.community,
                    Icons.people,
                    AppConstants.socialColor,
                    () {
                      Navigator.pop(context);
                      context.push('/community-events');
                    },
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingXL),
            
            // NHS Footer
            const NHSFooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildQuickActionButton(
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
}
