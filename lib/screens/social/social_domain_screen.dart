import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/app_constants.dart';
import '../../widgets/domain_card.dart';
import '../../l10n/app_localizations.dart';

class SocialDomainScreen extends StatelessWidget {
  const SocialDomainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.socialEngagement),
        backgroundColor: AppConstants.socialColor,
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
                  colors: [AppConstants.socialColor, AppConstants.primaryTeal],
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
                          AppLocalizations.of(context)!.socialConnection,
                          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: AppConstants.spacingS),
                        Text(
                          AppLocalizations.of(context)!.stayConnectedWithYourCommunityAndCombatLoneliness,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.people,
                    size: 48,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Features
            Text(
              AppLocalizations.of(context)!.socialFeatures,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Community Events
            DomainCard(
              title: AppLocalizations.of(context)!.communityEvents,
              description: AppLocalizations.of(context)!.discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters,
              icon: Icons.event,
              color: AppConstants.socialColor,
              onTap: () => context.push('/community-events'),
              progress: 0.3,
              lastActivity: 'Last attended: 2 weeks ago',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Community Forum
            DomainCard(
              title: AppLocalizations.of(context)!.communityForum,
              description: AppLocalizations.of(context)!.connectWithOthersShareExperiencesAndGetSupportFromTheCommunity,
              icon: Icons.forum,
              color: AppConstants.primaryTeal,
              onTap: () => context.push('/forum'),
              progress: 0.6,
              lastActivity: 'Last post: 3 days ago',
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            // Dementia Encyclopedia
            DomainCard(
              title: AppLocalizations.of(context)!.dementiaEncyclopedia,
              description: AppLocalizations.of(context)!.learnAboutDementiaPreventionStrategiesAndFindHelpfulResources,
              icon: Icons.menu_book,
              color: AppConstants.primaryBlue,
              onTap: () => context.push('/encyclopedia'),
              progress: 0.8,
              lastActivity: 'Last read: 1 week ago',
            ),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Social Tips
            _buildSocialTipsCard(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialTipsCard(BuildContext context) {
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
                  color: AppConstants.socialColor,
                  size: 24,
                ),
                const SizedBox(width: AppConstants.spacingS),
                Text(
                  AppLocalizations.of(context)!.socialConnectionTips,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.joinLocalGroups,
              AppLocalizations.of(context)!.lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.stayInTouch,
              AppLocalizations.of(context)!.regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.volunteer,
              AppLocalizations.of(context)!.givingBackToYourCommunityCanProvidePurposeAndSocialConnection,
            ),
            
            _buildTipItem(
              context,
              AppLocalizations.of(context)!.learnSomethingNew,
              AppLocalizations.of(context)!.takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople,
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
              color: AppConstants.socialColor,
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
}
