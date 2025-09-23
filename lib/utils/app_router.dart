import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screens/splash_screen.dart';
import '../screens/onboarding_screen.dart';
import '../screens/dashboard_screen.dart';
import '../screens/health/health_domain_screen.dart';
import '../screens/social/social_domain_screen.dart';
import '../screens/fitness/fitness_domain_screen.dart';
import '../screens/cognitive/cognitive_domain_screen.dart';
import '../screens/nutrition/nutrition_domain_screen.dart';
import '../screens/surveys/survey_screen.dart';
import '../screens/rewards/rewards_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/settings/settings_screen.dart';
import '../screens/weight_diary/weight_diary_screen.dart';
import '../screens/health/nhs_health_check_screen.dart';
import '../screens/nutrition_tips/nutrition_tips_screen.dart';
import '../screens/diet_reflection/diet_reflection_screen.dart';
import '../screens/activity_tracker/activity_tracker_screen.dart';
import '../screens/cognitive_training/cognitive_training_screen.dart';
import '../screens/community_events/community_events_screen.dart';
import '../screens/forum/forum_screen.dart';
import '../screens/encyclopedia/encyclopedia_screen.dart';

class AppRouter {
  static final GoRouter _router = GoRouter(
    initialLocation: '/splash',
    routes: [
      // Splash and Onboarding
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingScreen(),
      ),
      
      // Main Dashboard
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardScreen(),
      ),
      
      // Domain Screens
      GoRoute(
        path: '/health',
        builder: (context, state) => const HealthDomainScreen(),
      ),
      GoRoute(
        path: '/social',
        builder: (context, state) => const SocialDomainScreen(),
      ),
      GoRoute(
        path: '/fitness',
        builder: (context, state) => const FitnessDomainScreen(),
      ),
      GoRoute(
        path: '/cognitive',
        builder: (context, state) => const CognitiveDomainScreen(),
      ),
      GoRoute(
        path: '/nutrition',
        builder: (context, state) => const NutritionDomainScreen(),
      ),
      
      // Feature Screens
      GoRoute(
        path: '/surveys',
        builder: (context, state) => const SurveyScreen(),
      ),
      GoRoute(
        path: '/rewards',
        builder: (context, state) => const RewardsScreen(),
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfileScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      
      // Sub-feature Screens
        GoRoute(
          path: '/weight-diary',
          builder: (context, state) => const WeightDiaryScreen(),
        ),
        GoRoute(
          path: '/nhs-health-check',
          builder: (context, state) => const NHSHealthCheckScreen(),
        ),
      GoRoute(
        path: '/activity-tracker',
        builder: (context, state) => const ActivityTrackerScreen(),
      ),
      GoRoute(
        path: '/cognitive-training',
        builder: (context, state) => const CognitiveTrainingScreen(),
      ),
      GoRoute(
        path: '/nutrition-tips',
        builder: (context, state) => const NutritionTipsScreen(),
      ),
      GoRoute(
        path: '/community-events',
        builder: (context, state) => const CommunityEventsScreen(),
      ),
      GoRoute(
        path: '/forum',
        builder: (context, state) => const ForumScreen(),
      ),
        GoRoute(
          path: '/encyclopedia',
          builder: (context, state) => const EncyclopediaScreen(),
        ),
        
        // Nutrition Domain Screens
        GoRoute(
          path: '/nutrition-tips',
          builder: (context, state) => const NutritionTipsScreen(),
        ),
        GoRoute(
          path: '/diet-reflection',
          builder: (context, state) => const DietReflectionScreen(),
        ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red,
            ),
            const SizedBox(height: 16),
            Text(
              'Page not found',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'The page you are looking for does not exist.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => context.go('/dashboard'),
              child: const Text('Go to Dashboard'),
            ),
          ],
        ),
      ),
    ),
  );
  
  static GoRouter get router => _router;
}
