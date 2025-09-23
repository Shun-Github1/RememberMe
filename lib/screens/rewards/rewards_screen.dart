import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../models/reward_model.dart';
import '../../l10n/app_localizations.dart';

class RewardsScreen extends StatefulWidget {
  const RewardsScreen({super.key});

  @override
  State<RewardsScreen> createState() => _RewardsScreenState();
}

class _RewardsScreenState extends State<RewardsScreen> {
  final UserPoints _userPoints = UserPoints(
    userId: 'current_user',
    totalPoints: 1250,
    availablePoints: 850,
    spentPoints: 400,
    pointsByActivity: {
      'walking': 300,
      'survey': 200,
      'cognitive_training': 150,
      'social_engagement': 100,
      'nutrition_tracking': 50,
    },
  );

  final List<Reward>     _rewards = [
      Reward(
        id: 'r1',
        title: 'Coffee Voucher - Cambridge Coffee House',
        description: 'Enjoy a free coffee at Cambridge Coffee House, a local independent cafe.',
        type: RewardType.discount,
        category: RewardCategory.food,
        pointsRequired: 100,
        partnerBusiness: 'Cambridge Coffee House',
        location: '12 King Street, Cambridge',
        validFrom: DateTime.now(),
        validUntil: DateTime.now().add(const Duration(days: 30)),
      ),
      Reward(
        id: 'r2',
        title: 'Bookstore Discount - Heffers',
        description: 'Get 20% off your next book purchase at Heffers bookstore.',
        type: RewardType.discount,
        category: RewardCategory.entertainment,
        pointsRequired: 150,
        partnerBusiness: 'Heffers Bookshop',
        location: '20 Trinity Street, Cambridge',
        validFrom: DateTime.now(),
        validUntil: DateTime.now().add(const Duration(days: 60)),
      ),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.rewards),
        backgroundColor: AppConstants.warningColor,
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
            // Points summary
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingL),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [AppConstants.warningColor, AppConstants.primaryTeal],
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
                          AppLocalizations.of(context)!.availablePoints,
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${_userPoints.availablePoints}',
                          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.totalEarned,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.white.withOpacity(0.8),
                        ),
                      ),
                      Text(
                        '${_userPoints.totalPoints}',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: AppConstants.spacingL),

            // Available rewards
            Text(
              AppLocalizations.of(context)!.availableRewards,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),

            ..._rewards.map((reward) => _buildRewardCard(context, reward)).toList(),
          ],
        ),
      ),
    );
  }

  Widget _buildRewardCard(BuildContext context, Reward reward) {
    return Card(
      margin: const EdgeInsets.only(bottom: AppConstants.spacingM),
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reward.title,
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: AppConstants.spacingS),
                      Text(
                        reward.description,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppConstants.textSecondary,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: AppConstants.spacingS, vertical: 4),
                  decoration: BoxDecoration(
                    color: AppConstants.warningColor,
                    borderRadius: BorderRadius.circular(AppConstants.radiusS),
                  ),
                  child: Text(
                    '${reward.pointsRequired} pts',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppConstants.spacingM),
            Text(
              reward.partnerBusiness ?? AppLocalizations.of(context)!.partner,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: AppConstants.textMuted,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => _redeemReward(context, reward),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppConstants.warningColor,
                  foregroundColor: Colors.white,
                ),
                child: Text(AppLocalizations.of(context)!.redeem),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _redeemReward(BuildContext context, Reward reward) {
    if (_userPoints.availablePoints < reward.pointsRequired) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.notEnoughPointsToRedeemThisReward),
          backgroundColor: AppConstants.errorColor,
        ),
      );
      return;
    }

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.redeemReward),
        content: Text('${AppLocalizations.of(context)!.areYouSureYouWantToRedeem} "${reward.title}" ${AppLocalizations.of(context)!.forText} ${reward.pointsRequired} ${AppLocalizations.of(context)!.points}?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('${AppLocalizations.of(context)!.successfullyRedeemed} "${reward.title}"!'),
                  backgroundColor: AppConstants.successColor,
                ),
              );
            },
            child: Text(AppLocalizations.of(context)!.redeem),
          ),
        ],
      ),
    );
  }
}