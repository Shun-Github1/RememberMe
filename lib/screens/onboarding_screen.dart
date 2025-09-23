import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../constants/app_constants.dart';
import '../services/user_service.dart';
import '../widgets/nhs_logo_widget.dart';
import '../l10n/app_localizations.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  final int _totalPages = 4;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _nextPage() {
    if (_currentPage < _totalPages - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _completeOnboarding();
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _completeOnboarding() async {
    final userService = Provider.of<UserService>(context, listen: false);
    await userService.createMockUser();
    
    if (!mounted) return;
    context.go('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            // Progress Indicator
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingM),
              child: Row(
                children: [
                  Expanded(
                    child: LinearProgressIndicator(
                      value: (_currentPage + 1) / _totalPages,
                      backgroundColor: AppConstants.borderColor,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                        AppConstants.primaryTeal,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppConstants.spacingM),
                  Text(
                    '${_currentPage + 1}/$_totalPages',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            
            // Page Content
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  _buildWelcomePage(),
                  _buildPurposePage(),
                  _buildFeaturesPage(),
                  _buildPrivacyPage(),
                ],
              ),
            ),
            
            // Navigation Buttons
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingL),
              child: Row(
                children: [
                  if (_currentPage > 0)
                    Expanded(
                      child: OutlinedButton(
                        onPressed: _previousPage,
                        child: Text(AppLocalizations.of(context)!.back),
                      ),
                    ),
                  
                  if (_currentPage > 0) const SizedBox(width: AppConstants.spacingM),
                  
                  Expanded(
                    flex: _currentPage == 0 ? 1 : 1,
                    child: ElevatedButton(
                      onPressed: _nextPage,
                      child: Text(
                        _currentPage == _totalPages - 1 
                            ? AppLocalizations.of(context)!.getStarted 
                            : AppLocalizations.of(context)!.next,
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

  Widget _buildWelcomePage() {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.spacingL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 200,
            fit: BoxFit.contain,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Text(
            AppLocalizations.of(context)!.welcomeToRememberMe,
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppConstants.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          // NHS Partnership Badge
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppConstants.spacingM,
              vertical: AppConstants.spacingS,
            ),
            decoration: BoxDecoration(
              color: AppConstants.nhsBlue.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppConstants.radiusM),
              border: Border.all(
                color: AppConstants.nhsBlue.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const NHSLogoWidget(
                  height: 30,
                  showText: false,
                ),
                const SizedBox(width: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.nhsPartnership,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppConstants.nhsBlue,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: AppConstants.spacingM),
          
          Text(
            'Your personal dementia prevention lifestyle tracker, developed by Lucy Cavendish College at the University of Cambridge in partnership with the NHS.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppConstants.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Container(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            decoration: BoxDecoration(
              color: AppConstants.cardColor,
              borderRadius: BorderRadius.circular(AppConstants.radiusM),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.school,
                  color: AppConstants.primaryTeal,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: Text(
                    'Evidence-based approach to dementia prevention',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPurposePage() {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.spacingL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.health_and_safety,
            size: 80,
            color: AppConstants.primaryTeal,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Text(
            AppLocalizations.of(context)!.supportingYourBrainHealth,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppConstants.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingL),
          
          Text(
            'RememberMe helps you maintain healthy habits that can reduce your risk of dementia by up to 30%.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppConstants.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Column(
            children: [
              _buildPurposeItem(
                Icons.directions_walk,
                AppLocalizations.of(context)!.physicalActivity,
                AppLocalizations.of(context)!.dailyWalksAndExerciseToKeepYourBrainActive,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPurposeItem(
                Icons.restaurant,
                AppLocalizations.of(context)!.healthyNutrition,
                AppLocalizations.of(context)!.brainHealthyFoodsAndHydrationReminders,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPurposeItem(
                Icons.people,
                AppLocalizations.of(context)!.socialConnection,
                AppLocalizations.of(context)!.stayConnectedWithCommunityAndFriends,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPurposeItem(
                Icons.psychology,
                AppLocalizations.of(context)!.cognitiveTraining,
                AppLocalizations.of(context)!.memoryExercisesAndReminiscenceTherapy,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPurposeItem(IconData icon, String title, String description) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: AppConstants.cardColor,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppConstants.spacingS),
            decoration: BoxDecoration(
              color: AppConstants.primaryTeal.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppConstants.radiusS),
            ),
            child: Icon(
              icon,
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
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppConstants.textPrimary,
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

  Widget _buildFeaturesPage() {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.spacingL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.dashboard,
            size: 80,
            color: AppConstants.primaryTeal,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Text(
            AppLocalizations.of(context)!.yourPersonalDashboard,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppConstants.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingL),
          
          Text(
            'Track your progress across five key health domains with personalized goals and insights.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppConstants.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: AppConstants.spacingM,
              mainAxisSpacing: AppConstants.spacingM,
              children: [
                _buildFeatureCard(
                  AppLocalizations.of(context)!.health,
                  Icons.favorite,
                  AppConstants.healthColor,
                ),
                _buildFeatureCard(
                  AppLocalizations.of(context)!.social,
                  Icons.people,
                  AppConstants.socialColor,
                ),
                _buildFeatureCard(
                  AppLocalizations.of(context)!.fitness,
                  Icons.directions_run,
                  AppConstants.fitnessColor,
                ),
                _buildFeatureCard(
                  AppLocalizations.of(context)!.cognitive,
                  Icons.psychology,
                  AppConstants.cognitiveColor,
                ),
                _buildFeatureCard(
                  AppLocalizations.of(context)!.nutrition,
                  Icons.restaurant,
                  AppConstants.nutritionColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureCard(String title, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: AppConstants.cardColor,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
        border: Border.all(color: color.withOpacity(0.2)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: color,
          ),
          const SizedBox(height: AppConstants.spacingS),
          Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: AppConstants.textPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyPage() {
    return Padding(
      padding: const EdgeInsets.all(AppConstants.spacingL),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.security,
            size: 80,
            color: AppConstants.primaryTeal,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Text(
            AppLocalizations.of(context)!.yourPrivacyMatters,
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppConstants.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingL),
          
          Text(
            'We are committed to protecting your personal information and giving you control over your data.',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: AppConstants.textSecondary,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Column(
            children: [
              _buildPrivacyItem(
                Icons.lock,
                AppLocalizations.of(context)!.secureDataStorage,
                AppLocalizations.of(context)!.yourInformationIsEncryptedAndStoredSecurely,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPrivacyItem(
                Icons.visibility_off,
                AppLocalizations.of(context)!.optInDataSharing,
                AppLocalizations.of(context)!.chooseWhetherToShareDataWithResearchPartners,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPrivacyItem(
                Icons.policy,
                AppLocalizations.of(context)!.transparentPolicies,
                AppLocalizations.of(context)!.clearPrivacyPoliciesAndDataUsageInformation,
              ),
              const SizedBox(height: AppConstants.spacingM),
              _buildPrivacyItem(
                Icons.delete_forever,
                AppLocalizations.of(context)!.dataControl,
                AppLocalizations.of(context)!.deleteYourDataAtAnyTime,
              ),
            ],
          ),
          
          const SizedBox(height: AppConstants.spacingXL),
          
          Container(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            decoration: BoxDecoration(
              color: AppConstants.primaryTeal.withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppConstants.radiusM),
              border: Border.all(color: AppConstants.primaryTeal.withOpacity(0.3)),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.info,
                  color: AppConstants.primaryTeal,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingM),
                Expanded(
                  child: Text(
                    'By continuing, you agree to our Privacy Policy and Terms of Service.',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppConstants.primaryTeal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacyItem(IconData icon, String title, String description) {
    return Container(
      padding: const EdgeInsets.all(AppConstants.spacingM),
      decoration: BoxDecoration(
        color: AppConstants.cardColor,
        borderRadius: BorderRadius.circular(AppConstants.radiusM),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: AppConstants.primaryTeal,
            size: 24,
          ),
          const SizedBox(width: AppConstants.spacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppConstants.textPrimary,
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
}
