import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../constants/app_constants.dart';
import '../../services/user_service.dart';
import '../../services/locale_service.dart';
import '../../l10n/app_localizations.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _dataSharingEnabled = false;
  bool _locationTrackingEnabled = false;
  bool _healthDataSharingEnabled = false;
  bool _researchParticipationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.settings),
        backgroundColor: AppConstants.primaryTeal,
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
            // Profile Section
            _buildProfileSection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Language Section
            _buildLanguageSection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Notifications Section
            _buildNotificationsSection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Privacy & Data Sharing Section
            _buildPrivacySection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Research Participation Section
            _buildResearchSection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // App Information Section
            _buildAppInfoSection(context),
            
            const SizedBox(height: AppConstants.spacingL),
            
            // Support Section
            _buildSupportSection(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Consumer<UserService>(
      builder: (context, userService, child) {
        final user = userService.currentUser;
        
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.profile,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingM),
                ListTile(
                  leading: const CircleAvatar(
                    backgroundColor: AppConstants.primaryTeal,
                    child: Icon(Icons.person, color: Colors.white),
                  ),
                  title: Text(user != null ? '${user!.firstName} ${user!.lastName}' : AppLocalizations.of(context)!.userName),
                  subtitle: Text(user?.email ?? AppLocalizations.of(context)!.userEmail),
                  trailing: const Icon(Icons.edit),
                  onTap: () => _editProfile(context),
                ),
                const Divider(),
                ListTile(
                  leading: const Icon(Icons.security, color: AppConstants.primaryTeal),
                  title: Text(AppLocalizations.of(context)!.changePassword),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => _changePassword(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildLanguageSection(BuildContext context) {
    return Consumer<LocaleService>(
      builder: (context, localeService, child) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingM),
                
                // Current Language Display
                Container(
                  padding: const EdgeInsets.all(AppConstants.spacingM),
                  decoration: BoxDecoration(
                    color: AppConstants.primaryTeal.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(AppConstants.radiusM),
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: AppConstants.primaryTeal,
                        child: Text(
                          localeService.currentLocale.languageCode.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(width: AppConstants.spacingM),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              localeService.getLanguageName(localeService.currentLocale),
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: AppConstants.primaryTeal,
                              ),
                            ),
                            Text(
                              localeService.getLanguageDescription(localeService.currentLocale),
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
                
                const SizedBox(height: AppConstants.spacingM),
                
                // Language Options
                ListTile(
                  leading: const Icon(Icons.language, color: AppConstants.primaryTeal),
                  title: Text(AppLocalizations.of(context)!.selectLanguage),
                  subtitle: Text(AppLocalizations.of(context)!.selectLanguageDescription),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () => _showLanguageSelector(context),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildNotificationsSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.notifications,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.pushNotifications),
              subtitle: Text(AppLocalizations.of(context)!.receiveRemindersAndUpdates),
              value: _notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.dailyHealthReminders),
              subtitle: Text(AppLocalizations.of(context)!.morningRemindersForHealthTracking),
              value: _notificationsEnabled,
              onChanged: _notificationsEnabled ? (value) {
                // TODO: Implement daily reminder toggle
              } : null,
            ),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.surveyReminders),
              subtitle: Text(AppLocalizations.of(context)!.notificationsForPendingSurveys),
              value: _notificationsEnabled,
              onChanged: _notificationsEnabled ? (value) {
                // TODO: Implement survey reminder toggle
              } : null,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPrivacySection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.privacyAndDataSharing,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingM),
              decoration: BoxDecoration(
                color: AppConstants.infoColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppConstants.radiusM),
              ),
              child: Row(
                children: [
                  Icon(Icons.info, color: AppConstants.infoColor),
                  const SizedBox(width: AppConstants.spacingS),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.dataPrivacyInfo,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.infoColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.shareDataWithResearchCenters),
              subtitle: Text(AppLocalizations.of(context)!.helpAdvanceDementiaResearch),
              value: _dataSharingEnabled,
              onChanged: (value) {
                setState(() {
                  _dataSharingEnabled = value;
                });
                if (value) {
                  _showDataSharingDialog(context);
                }
              },
            ),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.healthDataSharing),
              subtitle: Text(AppLocalizations.of(context)!.shareHealthMetricsWithHealthcareProvider),
              value: _healthDataSharingEnabled,
              onChanged: (value) {
                setState(() {
                  _healthDataSharingEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.locationTracking),
              subtitle: Text(AppLocalizations.of(context)!.allowLocationDataForActivityTracking),
              value: _locationTrackingEnabled,
              onChanged: (value) {
                setState(() {
                  _locationTrackingEnabled = value;
                });
              },
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            ListTile(
              leading: const Icon(Icons.privacy_tip, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.privacyPolicy),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _showPrivacyPolicy(context),
            ),
            ListTile(
              leading: const Icon(Icons.description, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.termsOfService),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _showTermsOfService(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildResearchSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.researchParticipation,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            
            Container(
              padding: const EdgeInsets.all(AppConstants.spacingM),
              decoration: BoxDecoration(
                color: AppConstants.successColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(AppConstants.radiusM),
              ),
              child: Row(
                children: [
                  Icon(Icons.science, color: AppConstants.successColor),
                  const SizedBox(width: AppConstants.spacingS),
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!.researchParticipationInfo,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.successColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: AppConstants.spacingM),
            
            SwitchListTile(
              title: Text(AppLocalizations.of(context)!.participateInResearchStudies),
              subtitle: Text(AppLocalizations.of(context)!.joinStudiesConductedByLucyCavendishCollege),
              value: _researchParticipationEnabled,
              onChanged: (value) {
                setState(() {
                  _researchParticipationEnabled = value;
                });
                if (value) {
                  _showResearchParticipationDialog(context);
                }
              },
            ),
            
            ListTile(
              leading: const Icon(Icons.article, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.currentResearchStudies),
              subtitle: Text(AppLocalizations.of(context)!.viewAvailableStudiesYouCanParticipateIn),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _showResearchStudies(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppInfoSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.appInformation,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            ListTile(
              leading: const Icon(Icons.info, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.version),
              subtitle: Text(AppLocalizations.of(context)!.versionNumber),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.school, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.developedBy),
              subtitle: Text(AppLocalizations.of(context)!.lucyCavendishCollegeUniversityOfCambridge),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: const Icon(Icons.bug_report, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.reportABug),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _reportBug(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportSection(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppConstants.spacingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocalizations.of(context)!.support,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: AppConstants.spacingM),
            ListTile(
              leading: const Icon(Icons.help, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.helpAndFAQ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _showHelp(context),
            ),
            ListTile(
              leading: const Icon(Icons.contact_support, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.contactSupport),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _contactSupport(context),
            ),
            ListTile(
              leading: const Icon(Icons.feedback, color: AppConstants.primaryTeal),
              title: Text(AppLocalizations.of(context)!.sendFeedback),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => _sendFeedback(context),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: AppConstants.errorColor),
              title: Text(AppLocalizations.of(context)!.signOut),
              onTap: () => _signOut(context),
            ),
          ],
        ),
      ),
    );
  }

  void _editProfile(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.editProfile),
        content: Text(AppLocalizations.of(context)!.profileEditingFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _changePassword(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.changePasswordTitle),
        content: Text(AppLocalizations.of(context)!.passwordChangeFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _showDataSharingDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.dataSharingConsent),
        content: Text(AppLocalizations.of(context)!.dataSharingConsentText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _dataSharingEnabled = false;
              });
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.iUnderstand),
          ),
        ],
      ),
    );
  }

  void _showResearchParticipationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.researchParticipationTitle),
        content: Text(AppLocalizations.of(context)!.researchParticipationText),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                _researchParticipationEnabled = false;
              });
            },
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.iAgree),
          ),
        ],
      ),
    );
  }

  void _showPrivacyPolicy(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.privacyPolicyTitle),
        content: SingleChildScrollView(
          child: Text(AppLocalizations.of(context)!.privacyPolicyText),
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

  void _showTermsOfService(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.termsOfServiceTitle),
        content: SingleChildScrollView(
          child: Text(AppLocalizations.of(context)!.termsOfServiceText),
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

  void _showResearchStudies(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.currentResearchStudiesTitle),
        content: Text(AppLocalizations.of(context)!.researchStudiesFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _reportBug(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.reportABugTitle),
        content: Text(AppLocalizations.of(context)!.bugReportingFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _showHelp(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.helpAndFAQTitle),
        content: Text(AppLocalizations.of(context)!.helpSectionComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _contactSupport(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.contactSupportTitle),
        content: Text(AppLocalizations.of(context)!.supportContactFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _sendFeedback(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.sendFeedbackTitle),
        content: Text(AppLocalizations.of(context)!.feedbackFeatureComingSoon),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.ok),
          ),
        ],
      ),
    );
  }

  void _signOut(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(AppLocalizations.of(context)!.signOutTitle),
        content: Text(AppLocalizations.of(context)!.areYouSureYouWantToSignOut),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(AppLocalizations.of(context)!.cancel),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              // TODO: Implement sign out logic
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(AppLocalizations.of(context)!.signedOutSuccessfully),
                  backgroundColor: AppConstants.successColor,
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppConstants.errorColor,
            ),
            child: Text(AppLocalizations.of(context)!.signOut),
          ),
        ],
      ),
    );
  }

  void _showLanguageSelector(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.7,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            // Handle bar
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            // Title
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                AppLocalizations.of(context)!.selectLanguage,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Language list
            Expanded(
              child: Consumer<LocaleService>(
                builder: (context, localeService, child) {
                  return ListView.builder(
                    itemCount: LocaleService.supportedLocales.length,
                    itemBuilder: (context, index) {
                      final locale = LocaleService.supportedLocales[index];
                      final isSelected = localeService.currentLocale.languageCode == locale.languageCode;
                      
                      return ListTile(
                        leading: CircleAvatar(
                          backgroundColor: isSelected 
                              ? AppConstants.primaryTeal 
                              : AppConstants.borderColor,
                          child: Text(
                            locale.languageCode.toUpperCase(),
                            style: TextStyle(
                              color: isSelected ? Colors.white : AppConstants.textSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        title: Text(
                          localeService.getLanguageName(locale),
                          style: TextStyle(
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected ? AppConstants.primaryTeal : AppConstants.textPrimary,
                          ),
                        ),
                        subtitle: Text(
                          localeService.getLanguageDescription(locale),
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: AppConstants.textSecondary,
                          ),
                        ),
                        trailing: isSelected 
                            ? Icon(
                                Icons.check_circle,
                                color: AppConstants.primaryTeal,
                              )
                            : null,
                        onTap: () async {
                          await localeService.changeLocale(locale);
                          if (context.mounted) {
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(AppLocalizations.of(context)!.languageChanged),
                                backgroundColor: AppConstants.successColor,
                              ),
                            );
                          }
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

}