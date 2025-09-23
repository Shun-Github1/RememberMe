import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/domain_card.dart';
import '../../l10n/app_localizations.dart';

class CognitiveDomainScreen extends StatelessWidget {
  const CognitiveDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.cognitiveTraining),
        backgroundColor: AppConstants.cognitiveColor,
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
                  colors: [AppConstants.cognitiveColor, AppConstants.primaryTeal],
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
                          AppLocalizations.of(context)!.brainTraining,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppConstants.spacingS),
                        Text(
                          'Keep your mind sharp with evidence-based cognitive exercises and reminiscence therapy',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.psychology,
                    size: 48,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Cognitive Training
            DomainCard(
              title: AppLocalizations.of(context)!.brainExercises,
              description: AppLocalizations.of(context)!.memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive,
              icon: Icons.psychology,
              color: AppConstants.cognitiveColor,
              onTap: () => context.push('/cognitive-training'),
              progress: 0.7,
              lastActivity: AppLocalizations.of(context)!.exerciseCompletedYesterday,
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Reminiscence Therapy
            DomainCard(
              title: AppLocalizations.of(context)!.reminiscenceTherapy,
              description: AppLocalizations.of(context)!.shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing,
              icon: Icons.history_edu,
              color: AppConstants.primaryTeal,
              onTap: () => _showReminiscenceTherapy(context),
              progress: 0.5,
              lastActivity: 'Last session: 3 days ago',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Cognitive Assessment
            DomainCard(
              title: AppLocalizations.of(context)!.cognitiveAssessment,
              description: AppLocalizations.of(context)!.regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement,
              icon: Icons.quiz,
              color: AppConstants.primaryBlue,
              onTap: () => _showCognitiveAssessment(context),
              progress: 0.9,
              lastActivity: 'Assessment completed 1 week ago',
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Cognitive Tips
            _buildCognitiveTipsCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildCognitiveTipsCard(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.lightbulb,
                  color: AppConstants.cognitiveColor,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.brainHealthTips,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.stayMentallyActive,
              AppLocalizations.of(context)!.readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.shareYourMemories,
              AppLocalizations.of(context)!.talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.staySociallyConnected,
              AppLocalizations.of(context)!.regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.manageStress,
              AppLocalizations.of(context)!.chronicStressCanNegativelyImpactMemoryAndCognitiveFunction,
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
              color: AppConstants.cognitiveColor,
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

  void _showReminiscenceTherapy(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.reminiscenceTherapy),
        content: Text(AppLocalizations.of(context)!.reminiscenceTherapySessionsComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _showCognitiveAssessment(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.cognitiveAssessment),
        content: Text(AppLocalizations.of(context)!.cognitiveAssessmentToolsComingSoon),
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
