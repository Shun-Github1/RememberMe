import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/domain_card.dart';
import '../../l10n/app_localizations.dart';

class NutritionDomainScreen extends StatelessWidget {
  const NutritionDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.healthyDiet),
        backgroundColor: AppConstants.nutritionColor,
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
                  colors: [AppConstants.nutritionColor, AppConstants.primaryTeal],
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
                          AppLocalizations.of(context)!.brainHealthyEating,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppConstants.spacingS),
                        Text(
                          'Evidence-based nutrition tips from the Alzheimer\'s Association',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.restaurant,
                    size: 48,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Nutrition Tips
            DomainCard(
              title: AppLocalizations.of(context)!.nutritionTips,
              description: AppLocalizations.of(context)!.evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk,
              icon: Icons.lightbulb,
              color: AppConstants.nutritionColor,
              onTap: () => context.push('/nutrition-tips'),
              progress: 0.8,
              lastActivity: 'Last tip read: 2 days ago',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Diet Reflection
            DomainCard(
              title: AppLocalizations.of(context)!.dietReflection,
              description: AppLocalizations.of(context)!.logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices,
              icon: Icons.restaurant_menu,
              color: AppConstants.primaryTeal,
              onTap: () => context.push('/diet-reflection'),
              progress: 0.4,
              lastActivity: 'Last reflection: 1 day ago',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Hydration
            DomainCard(
              title: AppLocalizations.of(context)!.hydrationTracker,
              description: AppLocalizations.of(context)!.trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated,
              icon: Icons.local_drink,
              color: AppConstants.primaryBlue,
              onTap: () => _showHydrationTracker(context),
              progress: 0.6,
              lastActivity: '6 glasses today',
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Nutrition Guidelines
            _buildNutritionGuidelinesCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildNutritionGuidelinesCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.eco,
                  color: AppConstants.nutritionColor,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingS),
                Text(
                  'Brain-Healthy Foods',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildFoodGroupItem(
              context,
              AppLocalizations.of(context)!.leafyGreens,
              AppLocalizations.of(context)!.spinachKaleAndOtherGreensAreRichInFolateAndVitaminK,
              Icons.eco,
            ),
            
            _buildFoodGroupItem(
              context,
              AppLocalizations.of(context)!.berries,
              AppLocalizations.of(context)!.blueberriesStrawberriesAndOtherBerriesContainAntioxidants,
              Icons.agriculture,
            ),
            
            _buildFoodGroupItem(
              context,
              'Nuts & Seeds',
              'Walnuts, almonds, and flaxseeds provide healthy omega-3 fatty acids',
              Icons.forest,
            ),
            
            _buildFoodGroupItem(
              context,
              AppLocalizations.of(context)!.wholeGrains,
              AppLocalizations.of(context)!.brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber,
              Icons.grain,
            ),
            
            _buildFoodGroupItem(
              context,
              AppLocalizations.of(context)!.fish,
              AppLocalizations.of(context)!.salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s,
              Icons.set_meal,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodGroupItem(BuildContext context, String title, String description, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: AppConstants.nutritionColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              icon,
              color: AppConstants.nutritionColor,
              size: 16,
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

  void _showMealTracking(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.mealTracking),
        content: Text(AppLocalizations.of(context)!.mealTrackingFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _showHydrationTracker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.hydrationTracker),
        content: Text(AppLocalizations.of(context)!.hydrationTrackingFeatureComingSoon),
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
