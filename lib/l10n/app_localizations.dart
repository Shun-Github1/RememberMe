import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bn.dart';
import 'app_localizations_en.dart';
import 'app_localizations_pa.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bn'),
    Locale('en'),
    Locale('pa'),
    Locale('pl'),
    Locale('ro'),
    Locale('ur'),
    Locale('zh'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'RememberMe'**
  String get appTitle;

  /// No description provided for @appDescription.
  ///
  /// In en, this message translates to:
  /// **'NHS Dementia Prevention Lifestyle Tracker'**
  String get appDescription;

  /// No description provided for @health.
  ///
  /// In en, this message translates to:
  /// **'Health'**
  String get health;

  /// No description provided for @healthMonitoring.
  ///
  /// In en, this message translates to:
  /// **'Health Monitoring'**
  String get healthMonitoring;

  /// No description provided for @healthMonitoringDescription.
  ///
  /// In en, this message translates to:
  /// **'Track your weight, BMI, and health check status'**
  String get healthMonitoringDescription;

  /// No description provided for @healthFeatures.
  ///
  /// In en, this message translates to:
  /// **'Health Features'**
  String get healthFeatures;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @weightDiary.
  ///
  /// In en, this message translates to:
  /// **'Weight Diary'**
  String get weightDiary;

  /// No description provided for @weightDiaryDescription.
  ///
  /// In en, this message translates to:
  /// **'Log your daily weight and track BMI changes over time'**
  String get weightDiaryDescription;

  /// No description provided for @lastLogged.
  ///
  /// In en, this message translates to:
  /// **'Last logged: {weight}kg'**
  String lastLogged(Object weight);

  /// No description provided for @notLoggedYet.
  ///
  /// In en, this message translates to:
  /// **'Not logged yet'**
  String get notLoggedYet;

  /// No description provided for @nhsHealthCheck.
  ///
  /// In en, this message translates to:
  /// **'NHS Health Check'**
  String get nhsHealthCheck;

  /// No description provided for @nhsHealthCheckDescription.
  ///
  /// In en, this message translates to:
  /// **'Book your free NHS Health Check to monitor your health'**
  String get nhsHealthCheckDescription;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed {date}'**
  String completed(Object date);

  /// No description provided for @completedRecently.
  ///
  /// In en, this message translates to:
  /// **'Completed recently'**
  String get completedRecently;

  /// No description provided for @dueNow.
  ///
  /// In en, this message translates to:
  /// **'Due now - Book your free check'**
  String get dueNow;

  /// No description provided for @notDueYet.
  ///
  /// In en, this message translates to:
  /// **'Not due yet'**
  String get notDueYet;

  /// No description provided for @healthProfile.
  ///
  /// In en, this message translates to:
  /// **'Health Profile'**
  String get healthProfile;

  /// No description provided for @healthProfileDescription.
  ///
  /// In en, this message translates to:
  /// **'Manage your medical conditions, medications, and emergency contacts'**
  String get healthProfileDescription;

  /// No description provided for @gpRegistered.
  ///
  /// In en, this message translates to:
  /// **'GP: {gpName}'**
  String gpRegistered(Object gpName);

  /// No description provided for @noGpRegistered.
  ///
  /// In en, this message translates to:
  /// **'No GP registered'**
  String get noGpRegistered;

  /// No description provided for @logWeight.
  ///
  /// In en, this message translates to:
  /// **'Log Weight'**
  String get logWeight;

  /// No description provided for @healthTips.
  ///
  /// In en, this message translates to:
  /// **'Health Tips'**
  String get healthTips;

  /// No description provided for @healthOverview.
  ///
  /// In en, this message translates to:
  /// **'Health Overview'**
  String get healthOverview;

  /// No description provided for @weight.
  ///
  /// In en, this message translates to:
  /// **'Weight'**
  String get weight;

  /// No description provided for @bmi.
  ///
  /// In en, this message translates to:
  /// **'BMI'**
  String get bmi;

  /// No description provided for @bmiCategory.
  ///
  /// In en, this message translates to:
  /// **'BMI Category'**
  String get bmiCategory;

  /// No description provided for @notSet.
  ///
  /// In en, this message translates to:
  /// **'Not set'**
  String get notSet;

  /// No description provided for @calculate.
  ///
  /// In en, this message translates to:
  /// **'Calculate'**
  String get calculate;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @underweight.
  ///
  /// In en, this message translates to:
  /// **'Underweight'**
  String get underweight;

  /// No description provided for @normalWeight.
  ///
  /// In en, this message translates to:
  /// **'Normal weight'**
  String get normalWeight;

  /// No description provided for @overweight.
  ///
  /// In en, this message translates to:
  /// **'Overweight'**
  String get overweight;

  /// No description provided for @obese.
  ///
  /// In en, this message translates to:
  /// **'Obese'**
  String get obese;

  /// No description provided for @bmiMessageUnderweight.
  ///
  /// In en, this message translates to:
  /// **'Consider speaking with your GP about healthy weight gain strategies.'**
  String get bmiMessageUnderweight;

  /// No description provided for @bmiMessageNormal.
  ///
  /// In en, this message translates to:
  /// **'Great! You\'re in a healthy weight range. Keep it up!'**
  String get bmiMessageNormal;

  /// No description provided for @bmiMessageOverweight.
  ///
  /// In en, this message translates to:
  /// **'Consider speaking with your GP about healthy weight management.'**
  String get bmiMessageOverweight;

  /// No description provided for @bmiMessageObese.
  ///
  /// In en, this message translates to:
  /// **'Please speak with your GP about weight management options.'**
  String get bmiMessageObese;

  /// No description provided for @bmiMessageDefault.
  ///
  /// In en, this message translates to:
  /// **'Monitor your weight regularly for optimal health.'**
  String get bmiMessageDefault;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @noUserDataAvailable.
  ///
  /// In en, this message translates to:
  /// **'No user data available'**
  String get noUserDataAvailable;

  /// No description provided for @healthProfileManagementComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Health Profile management coming soon'**
  String get healthProfileManagementComingSoon;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'today'**
  String get today;

  /// No description provided for @yesterday.
  ///
  /// In en, this message translates to:
  /// **'yesterday'**
  String get yesterday;

  /// No description provided for @daysAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} days ago'**
  String daysAgo(Object count);

  /// No description provided for @weeksAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} weeks ago'**
  String weeksAgo(Object count);

  /// No description provided for @monthsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} months ago'**
  String monthsAgo(Object count);

  /// No description provided for @yearsAgo.
  ///
  /// In en, this message translates to:
  /// **'{count} years ago'**
  String yearsAgo(Object count);

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @selectLanguageDescription.
  ///
  /// In en, this message translates to:
  /// **'Choose your preferred language for the app'**
  String get selectLanguageDescription;

  /// No description provided for @systemLanguageSettings.
  ///
  /// In en, this message translates to:
  /// **'System Language Settings'**
  String get systemLanguageSettings;

  /// No description provided for @systemLanguageSettingsDescription.
  ///
  /// In en, this message translates to:
  /// **'Open device language settings'**
  String get systemLanguageSettingsDescription;

  /// No description provided for @systemLanguageSettingsDialog.
  ///
  /// In en, this message translates to:
  /// **'This will open your device\'s language settings. The app will automatically detect and use your system language preference.'**
  String get systemLanguageSettingsDialog;

  /// No description provided for @systemSettingsFallback.
  ///
  /// In en, this message translates to:
  /// **'Please go to your device\'s Settings > Language & Region to change the system language.'**
  String get systemSettingsFallback;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @openSettings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get openSettings;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'User Name'**
  String get userName;

  /// No description provided for @userEmail.
  ///
  /// In en, this message translates to:
  /// **'user@example.com'**
  String get userEmail;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @pushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get pushNotifications;

  /// No description provided for @receiveRemindersAndUpdates.
  ///
  /// In en, this message translates to:
  /// **'Receive reminders and updates'**
  String get receiveRemindersAndUpdates;

  /// No description provided for @dailyHealthReminders.
  ///
  /// In en, this message translates to:
  /// **'Daily Health Reminders'**
  String get dailyHealthReminders;

  /// No description provided for @morningRemindersForHealthTracking.
  ///
  /// In en, this message translates to:
  /// **'Morning reminders for health tracking'**
  String get morningRemindersForHealthTracking;

  /// No description provided for @surveyReminders.
  ///
  /// In en, this message translates to:
  /// **'Survey Reminders'**
  String get surveyReminders;

  /// No description provided for @notificationsForPendingSurveys.
  ///
  /// In en, this message translates to:
  /// **'Notifications for pending surveys'**
  String get notificationsForPendingSurveys;

  /// No description provided for @privacyAndDataSharing.
  ///
  /// In en, this message translates to:
  /// **'Privacy & Data Sharing'**
  String get privacyAndDataSharing;

  /// No description provided for @dataPrivacyInfo.
  ///
  /// In en, this message translates to:
  /// **'Your data privacy is important to us. All data sharing is optional and can be changed at any time.'**
  String get dataPrivacyInfo;

  /// No description provided for @shareDataWithResearchCenters.
  ///
  /// In en, this message translates to:
  /// **'Share Data with Research Centers'**
  String get shareDataWithResearchCenters;

  /// No description provided for @helpAdvanceDementiaResearch.
  ///
  /// In en, this message translates to:
  /// **'Help advance dementia research (anonymized data only)'**
  String get helpAdvanceDementiaResearch;

  /// No description provided for @healthDataSharing.
  ///
  /// In en, this message translates to:
  /// **'Health Data Sharing'**
  String get healthDataSharing;

  /// No description provided for @shareHealthMetricsWithHealthcareProvider.
  ///
  /// In en, this message translates to:
  /// **'Share health metrics with your healthcare provider'**
  String get shareHealthMetricsWithHealthcareProvider;

  /// No description provided for @locationTracking.
  ///
  /// In en, this message translates to:
  /// **'Location Tracking'**
  String get locationTracking;

  /// No description provided for @allowLocationDataForActivityTracking.
  ///
  /// In en, this message translates to:
  /// **'Allow location data for activity tracking'**
  String get allowLocationDataForActivityTracking;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsOfService.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfService;

  /// No description provided for @researchParticipation.
  ///
  /// In en, this message translates to:
  /// **'Research Participation'**
  String get researchParticipation;

  /// No description provided for @researchParticipationInfo.
  ///
  /// In en, this message translates to:
  /// **'Participating in research helps advance dementia prevention and treatment.'**
  String get researchParticipationInfo;

  /// No description provided for @participateInResearchStudies.
  ///
  /// In en, this message translates to:
  /// **'Participate in Research Studies'**
  String get participateInResearchStudies;

  /// No description provided for @joinStudiesConductedByLucyCavendishCollege.
  ///
  /// In en, this message translates to:
  /// **'Join studies conducted by Lucy Cavendish College'**
  String get joinStudiesConductedByLucyCavendishCollege;

  /// No description provided for @currentResearchStudies.
  ///
  /// In en, this message translates to:
  /// **'Current Research Studies'**
  String get currentResearchStudies;

  /// No description provided for @viewAvailableStudiesYouCanParticipateIn.
  ///
  /// In en, this message translates to:
  /// **'View available studies you can participate in'**
  String get viewAvailableStudiesYouCanParticipateIn;

  /// No description provided for @appInformation.
  ///
  /// In en, this message translates to:
  /// **'App Information'**
  String get appInformation;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @versionNumber.
  ///
  /// In en, this message translates to:
  /// **'1.0.0'**
  String get versionNumber;

  /// No description provided for @developedBy.
  ///
  /// In en, this message translates to:
  /// **'Developed by'**
  String get developedBy;

  /// No description provided for @lucyCavendishCollegeUniversityOfCambridge.
  ///
  /// In en, this message translates to:
  /// **'Lucy Cavendish College, University of Cambridge'**
  String get lucyCavendishCollegeUniversityOfCambridge;

  /// No description provided for @reportABug.
  ///
  /// In en, this message translates to:
  /// **'Report a Bug'**
  String get reportABug;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @helpAndFAQ.
  ///
  /// In en, this message translates to:
  /// **'Help & FAQ'**
  String get helpAndFAQ;

  /// No description provided for @contactSupport.
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get contactSupport;

  /// No description provided for @sendFeedback.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get sendFeedback;

  /// No description provided for @signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @profileEditingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Profile editing feature coming soon!'**
  String get profileEditingFeatureComingSoon;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @changePasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePasswordTitle;

  /// No description provided for @passwordChangeFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Password change feature coming soon!'**
  String get passwordChangeFeatureComingSoon;

  /// No description provided for @dataSharingConsent.
  ///
  /// In en, this message translates to:
  /// **'Data Sharing Consent'**
  String get dataSharingConsent;

  /// No description provided for @dataSharingConsentText.
  ///
  /// In en, this message translates to:
  /// **'By enabling data sharing, you consent to sharing anonymized health data with dementia research centers. This helps advance scientific understanding of dementia prevention. Your personal information will never be shared.'**
  String get dataSharingConsentText;

  /// No description provided for @iUnderstand.
  ///
  /// In en, this message translates to:
  /// **'I Understand'**
  String get iUnderstand;

  /// No description provided for @researchParticipationTitle.
  ///
  /// In en, this message translates to:
  /// **'Research Participation'**
  String get researchParticipationTitle;

  /// No description provided for @researchParticipationText.
  ///
  /// In en, this message translates to:
  /// **'By participating in research studies, you help advance dementia prevention research. You can opt out of any study at any time, and your participation is completely voluntary.'**
  String get researchParticipationText;

  /// No description provided for @iAgree.
  ///
  /// In en, this message translates to:
  /// **'I Agree'**
  String get iAgree;

  /// No description provided for @privacyPolicyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicyTitle;

  /// No description provided for @privacyPolicyText.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy content would go here. This would include detailed information about how we collect, use, and protect your personal data, in compliance with UK GDPR regulations.'**
  String get privacyPolicyText;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @termsOfServiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service'**
  String get termsOfServiceTitle;

  /// No description provided for @termsOfServiceText.
  ///
  /// In en, this message translates to:
  /// **'Terms of Service content would go here. This would include the terms and conditions for using the RememberMe app.'**
  String get termsOfServiceText;

  /// No description provided for @currentResearchStudiesTitle.
  ///
  /// In en, this message translates to:
  /// **'Current Research Studies'**
  String get currentResearchStudiesTitle;

  /// No description provided for @researchStudiesFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Research studies feature coming soon!'**
  String get researchStudiesFeatureComingSoon;

  /// No description provided for @reportABugTitle.
  ///
  /// In en, this message translates to:
  /// **'Report a Bug'**
  String get reportABugTitle;

  /// No description provided for @bugReportingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Bug reporting feature coming soon!'**
  String get bugReportingFeatureComingSoon;

  /// No description provided for @helpAndFAQTitle.
  ///
  /// In en, this message translates to:
  /// **'Help & FAQ'**
  String get helpAndFAQTitle;

  /// No description provided for @helpSectionComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Help section coming soon!'**
  String get helpSectionComingSoon;

  /// No description provided for @contactSupportTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact Support'**
  String get contactSupportTitle;

  /// No description provided for @supportContactFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Support contact feature coming soon!'**
  String get supportContactFeatureComingSoon;

  /// No description provided for @sendFeedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Send Feedback'**
  String get sendFeedbackTitle;

  /// No description provided for @feedbackFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Feedback feature coming soon!'**
  String get feedbackFeatureComingSoon;

  /// No description provided for @signOutTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOutTitle;

  /// No description provided for @areYouSureYouWantToSignOut.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to sign out?'**
  String get areYouSureYouWantToSignOut;

  /// No description provided for @signedOutSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Signed out successfully'**
  String get signedOutSuccessfully;

  /// No description provided for @overview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// No description provided for @domains.
  ///
  /// In en, this message translates to:
  /// **'Domains'**
  String get domains;

  /// No description provided for @developedInPartnershipWithNHS.
  ///
  /// In en, this message translates to:
  /// **'Developed in partnership with the NHS'**
  String get developedInPartnershipWithNHS;

  /// No description provided for @healthDomains.
  ///
  /// In en, this message translates to:
  /// **'Health Domains'**
  String get healthDomains;

  /// No description provided for @healthDescription.
  ///
  /// In en, this message translates to:
  /// **'Weight tracking, NHS Health Check reminders, and health monitoring'**
  String get healthDescription;

  /// No description provided for @socialEngagement.
  ///
  /// In en, this message translates to:
  /// **'Social Engagement'**
  String get socialEngagement;

  /// No description provided for @socialEngagementDescription.
  ///
  /// In en, this message translates to:
  /// **'Community events, forums, and social activities'**
  String get socialEngagementDescription;

  /// No description provided for @physicalActivity.
  ///
  /// In en, this message translates to:
  /// **'Physical Activity'**
  String get physicalActivity;

  /// No description provided for @physicalActivityDescription.
  ///
  /// In en, this message translates to:
  /// **'Step tracking, exercise goals, and activity monitoring'**
  String get physicalActivityDescription;

  /// No description provided for @goalAchievedToday.
  ///
  /// In en, this message translates to:
  /// **'Goal achieved today'**
  String get goalAchievedToday;

  /// No description provided for @cognitiveTraining.
  ///
  /// In en, this message translates to:
  /// **'Cognitive Training'**
  String get cognitiveTraining;

  /// No description provided for @cognitiveTrainingDescription.
  ///
  /// In en, this message translates to:
  /// **'Memory exercises, reminiscence therapy, and brain training'**
  String get cognitiveTrainingDescription;

  /// No description provided for @exerciseCompletedYesterday.
  ///
  /// In en, this message translates to:
  /// **'Exercise completed yesterday'**
  String get exerciseCompletedYesterday;

  /// No description provided for @healthyDiet.
  ///
  /// In en, this message translates to:
  /// **'Healthy Diet'**
  String get healthyDiet;

  /// No description provided for @healthyDietDescription.
  ///
  /// In en, this message translates to:
  /// **'Nutrition tips, meal tracking, and healthy eating guidance'**
  String get healthyDietDescription;

  /// No description provided for @reminders.
  ///
  /// In en, this message translates to:
  /// **'Reminders'**
  String get reminders;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @healthSurveyDue.
  ///
  /// In en, this message translates to:
  /// **'Health Survey Due'**
  String get healthSurveyDue;

  /// No description provided for @healthSurveyDueDescription.
  ///
  /// In en, this message translates to:
  /// **'Complete your health assessment to track your progress'**
  String get healthSurveyDueDescription;

  /// No description provided for @takeSurvey.
  ///
  /// In en, this message translates to:
  /// **'Take Survey'**
  String get takeSurvey;

  /// No description provided for @learnMore.
  ///
  /// In en, this message translates to:
  /// **'Learn More'**
  String get learnMore;

  /// No description provided for @recentActivity.
  ///
  /// In en, this message translates to:
  /// **'Recent Activity'**
  String get recentActivity;

  /// No description provided for @startTrackingYourActivities.
  ///
  /// In en, this message translates to:
  /// **'Start tracking your activities'**
  String get startTrackingYourActivities;

  /// No description provided for @healthTipOfTheDay.
  ///
  /// In en, this message translates to:
  /// **'Health Tip of the Day'**
  String get healthTipOfTheDay;

  /// No description provided for @stayHydrated.
  ///
  /// In en, this message translates to:
  /// **'Stay Hydrated'**
  String get stayHydrated;

  /// No description provided for @logActivity.
  ///
  /// In en, this message translates to:
  /// **'Log'**
  String get logActivity;

  /// No description provided for @community.
  ///
  /// In en, this message translates to:
  /// **'Community'**
  String get community;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get getStarted;

  /// No description provided for @welcomeToRememberMe.
  ///
  /// In en, this message translates to:
  /// **'Welcome to RememberMe'**
  String get welcomeToRememberMe;

  /// No description provided for @nhsPartnership.
  ///
  /// In en, this message translates to:
  /// **'NHS Partnership'**
  String get nhsPartnership;

  /// No description provided for @supportingYourBrainHealth.
  ///
  /// In en, this message translates to:
  /// **'Supporting Your Brain Health'**
  String get supportingYourBrainHealth;

  /// No description provided for @dailyWalksAndExerciseToKeepYourBrainActive.
  ///
  /// In en, this message translates to:
  /// **'Daily walks and exercise to keep your brain active'**
  String get dailyWalksAndExerciseToKeepYourBrainActive;

  /// No description provided for @healthyNutrition.
  ///
  /// In en, this message translates to:
  /// **'Healthy Nutrition'**
  String get healthyNutrition;

  /// No description provided for @brainHealthyFoodsAndHydrationReminders.
  ///
  /// In en, this message translates to:
  /// **'Brain-healthy foods and hydration reminders'**
  String get brainHealthyFoodsAndHydrationReminders;

  /// No description provided for @socialConnection.
  ///
  /// In en, this message translates to:
  /// **'Social Connection'**
  String get socialConnection;

  /// No description provided for @stayConnectedWithCommunityAndFriends.
  ///
  /// In en, this message translates to:
  /// **'Stay connected with community and friends'**
  String get stayConnectedWithCommunityAndFriends;

  /// No description provided for @memoryExercisesAndReminiscenceTherapy.
  ///
  /// In en, this message translates to:
  /// **'Memory exercises and reminiscence therapy'**
  String get memoryExercisesAndReminiscenceTherapy;

  /// No description provided for @yourPersonalDashboard.
  ///
  /// In en, this message translates to:
  /// **'Your Personal Dashboard'**
  String get yourPersonalDashboard;

  /// No description provided for @social.
  ///
  /// In en, this message translates to:
  /// **'Social'**
  String get social;

  /// No description provided for @fitness.
  ///
  /// In en, this message translates to:
  /// **'Fitness'**
  String get fitness;

  /// No description provided for @cognitive.
  ///
  /// In en, this message translates to:
  /// **'Cognitive'**
  String get cognitive;

  /// No description provided for @nutrition.
  ///
  /// In en, this message translates to:
  /// **'Nutrition'**
  String get nutrition;

  /// No description provided for @yourPrivacyMatters.
  ///
  /// In en, this message translates to:
  /// **'Your Privacy Matters'**
  String get yourPrivacyMatters;

  /// No description provided for @secureDataStorage.
  ///
  /// In en, this message translates to:
  /// **'Secure Data Storage'**
  String get secureDataStorage;

  /// No description provided for @yourInformationIsEncryptedAndStoredSecurely.
  ///
  /// In en, this message translates to:
  /// **'Your information is encrypted and stored securely'**
  String get yourInformationIsEncryptedAndStoredSecurely;

  /// No description provided for @optInDataSharing.
  ///
  /// In en, this message translates to:
  /// **'Opt-in Data Sharing'**
  String get optInDataSharing;

  /// No description provided for @chooseWhetherToShareDataWithResearchPartners.
  ///
  /// In en, this message translates to:
  /// **'Choose whether to share data with research partners'**
  String get chooseWhetherToShareDataWithResearchPartners;

  /// No description provided for @transparentPolicies.
  ///
  /// In en, this message translates to:
  /// **'Transparent Policies'**
  String get transparentPolicies;

  /// No description provided for @clearPrivacyPoliciesAndDataUsageInformation.
  ///
  /// In en, this message translates to:
  /// **'Clear privacy policies and data usage information'**
  String get clearPrivacyPoliciesAndDataUsageInformation;

  /// No description provided for @dataControl.
  ///
  /// In en, this message translates to:
  /// **'Data Control'**
  String get dataControl;

  /// No description provided for @deleteYourDataAtAnyTime.
  ///
  /// In en, this message translates to:
  /// **'Delete your data at any time'**
  String get deleteYourDataAtAnyTime;

  /// No description provided for @brainHealthyEating.
  ///
  /// In en, this message translates to:
  /// **'Brain-Healthy Eating'**
  String get brainHealthyEating;

  /// No description provided for @nutritionTips.
  ///
  /// In en, this message translates to:
  /// **'Nutrition Tips'**
  String get nutritionTips;

  /// No description provided for @evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk.
  ///
  /// In en, this message translates to:
  /// **'Evidence-based dietary recommendations to support brain health and reduce dementia risk'**
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk;

  /// No description provided for @dietReflection.
  ///
  /// In en, this message translates to:
  /// **'Diet Reflection'**
  String get dietReflection;

  /// No description provided for @logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices.
  ///
  /// In en, this message translates to:
  /// **'Log your meals and get personalized feedback on your nutrition choices'**
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices;

  /// No description provided for @hydrationTracker.
  ///
  /// In en, this message translates to:
  /// **'Hydration Tracker'**
  String get hydrationTracker;

  /// No description provided for @trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated.
  ///
  /// In en, this message translates to:
  /// **'Track your daily water intake and receive reminders to stay hydrated'**
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated;

  /// No description provided for @leafyGreens.
  ///
  /// In en, this message translates to:
  /// **'Leafy Greens'**
  String get leafyGreens;

  /// No description provided for @spinachKaleAndOtherGreensAreRichInFolateAndVitaminK.
  ///
  /// In en, this message translates to:
  /// **'Spinach, kale, and other greens are rich in folate and vitamin K'**
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK;

  /// No description provided for @berries.
  ///
  /// In en, this message translates to:
  /// **'Berries'**
  String get berries;

  /// No description provided for @blueberriesStrawberriesAndOtherBerriesContainAntioxidants.
  ///
  /// In en, this message translates to:
  /// **'Blueberries, strawberries, and other berries contain antioxidants'**
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants;

  /// No description provided for @wholeGrains.
  ///
  /// In en, this message translates to:
  /// **'Whole Grains'**
  String get wholeGrains;

  /// No description provided for @brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber.
  ///
  /// In en, this message translates to:
  /// **'Brown rice, quinoa, and oats provide sustained energy and fiber'**
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber;

  /// No description provided for @fish.
  ///
  /// In en, this message translates to:
  /// **'Fish'**
  String get fish;

  /// No description provided for @salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s.
  ///
  /// In en, this message translates to:
  /// **'Salmon, sardines, and other fatty fish are excellent sources of omega-3s'**
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s;

  /// No description provided for @mealTracking.
  ///
  /// In en, this message translates to:
  /// **'Meal Tracking'**
  String get mealTracking;

  /// No description provided for @mealTrackingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Meal tracking feature coming soon!'**
  String get mealTrackingFeatureComingSoon;

  /// No description provided for @hydrationTrackingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Hydration tracking feature coming soon!'**
  String get hydrationTrackingFeatureComingSoon;

  /// No description provided for @stayActive.
  ///
  /// In en, this message translates to:
  /// **'Stay Active'**
  String get stayActive;

  /// No description provided for @activityTracker.
  ///
  /// In en, this message translates to:
  /// **'Activity Tracker'**
  String get activityTracker;

  /// No description provided for @trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration.
  ///
  /// In en, this message translates to:
  /// **'Track your daily steps, walks, and physical activities with smart watch integration'**
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration;

  /// No description provided for @exerciseGoals.
  ///
  /// In en, this message translates to:
  /// **'Exercise Goals'**
  String get exerciseGoals;

  /// No description provided for @setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio.
  ///
  /// In en, this message translates to:
  /// **'Set and track your weekly exercise goals including walking, strength training, and cardio'**
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio;

  /// No description provided for @socialActivities.
  ///
  /// In en, this message translates to:
  /// **'Social Activities'**
  String get socialActivities;

  /// No description provided for @joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation.
  ///
  /// In en, this message translates to:
  /// **'Join group walks, fitness classes, and connect with others for motivation'**
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation;

  /// No description provided for @fitnessTips.
  ///
  /// In en, this message translates to:
  /// **'Fitness Tips'**
  String get fitnessTips;

  /// No description provided for @mixCardioAndStrengthTraining.
  ///
  /// In en, this message translates to:
  /// **'Mix cardio and strength training'**
  String get mixCardioAndStrengthTraining;

  /// No description provided for @bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth.
  ///
  /// In en, this message translates to:
  /// **'Both aerobic exercise and muscle strengthening activities are important for overall health.'**
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth;

  /// No description provided for @stayConsistent.
  ///
  /// In en, this message translates to:
  /// **'Stay consistent'**
  String get stayConsistent;

  /// No description provided for @regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions.
  ///
  /// In en, this message translates to:
  /// **'Regular activity is more beneficial than intense but irregular exercise sessions.'**
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions;

  /// No description provided for @listenToYourBody.
  ///
  /// In en, this message translates to:
  /// **'Listen to your body'**
  String get listenToYourBody;

  /// No description provided for @startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises.
  ///
  /// In en, this message translates to:
  /// **'Start slowly and gradually increase intensity. Consult your doctor before starting new exercises.'**
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises;

  /// No description provided for @exerciseGoalSettingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Exercise goal setting feature coming soon!'**
  String get exerciseGoalSettingFeatureComingSoon;

  /// No description provided for @brainTraining.
  ///
  /// In en, this message translates to:
  /// **'Brain Training'**
  String get brainTraining;

  /// No description provided for @brainExercises.
  ///
  /// In en, this message translates to:
  /// **'Brain Exercises'**
  String get brainExercises;

  /// No description provided for @memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive.
  ///
  /// In en, this message translates to:
  /// **'Memory games, attention training, and cognitive assessments to keep your mind active'**
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive;

  /// No description provided for @reminiscenceTherapy.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence Therapy'**
  String get reminiscenceTherapy;

  /// No description provided for @shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing.
  ///
  /// In en, this message translates to:
  /// **'Share memories, stories, and experiences to maintain cognitive function and emotional well-being'**
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing;

  /// No description provided for @cognitiveAssessment.
  ///
  /// In en, this message translates to:
  /// **'Cognitive Assessment'**
  String get cognitiveAssessment;

  /// No description provided for @regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement.
  ///
  /// In en, this message translates to:
  /// **'Regular cognitive testing to track your brain health and identify areas for improvement'**
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement;

  /// No description provided for @brainHealthTips.
  ///
  /// In en, this message translates to:
  /// **'Brain Health Tips'**
  String get brainHealthTips;

  /// No description provided for @stayMentallyActive.
  ///
  /// In en, this message translates to:
  /// **'Stay mentally active'**
  String get stayMentallyActive;

  /// No description provided for @readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind.
  ///
  /// In en, this message translates to:
  /// **'Read, do puzzles, learn new skills, or engage in hobbies that challenge your mind.'**
  String get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind;

  /// No description provided for @shareYourMemories.
  ///
  /// In en, this message translates to:
  /// **'Share your memories'**
  String get shareYourMemories;

  /// No description provided for @talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections.
  ///
  /// In en, this message translates to:
  /// **'Talking about past experiences helps maintain memory and emotional connections.'**
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections;

  /// No description provided for @staySociallyConnected.
  ///
  /// In en, this message translates to:
  /// **'Stay socially connected'**
  String get staySociallyConnected;

  /// No description provided for @regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing.
  ///
  /// In en, this message translates to:
  /// **'Regular social interaction is crucial for cognitive health and emotional well-being.'**
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing;

  /// No description provided for @manageStress.
  ///
  /// In en, this message translates to:
  /// **'Manage stress'**
  String get manageStress;

  /// No description provided for @chronicStressCanNegativelyImpactMemoryAndCognitiveFunction.
  ///
  /// In en, this message translates to:
  /// **'Chronic stress can negatively impact memory and cognitive function.'**
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction;

  /// No description provided for @reminiscenceTherapySessionsComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence therapy sessions coming soon!'**
  String get reminiscenceTherapySessionsComingSoon;

  /// No description provided for @cognitiveAssessmentToolsComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Cognitive assessment tools coming soon!'**
  String get cognitiveAssessmentToolsComingSoon;

  /// No description provided for @stayConnectedWithYourCommunityAndCombatLoneliness.
  ///
  /// In en, this message translates to:
  /// **'Stay connected with your community and combat loneliness'**
  String get stayConnectedWithYourCommunityAndCombatLoneliness;

  /// No description provided for @socialFeatures.
  ///
  /// In en, this message translates to:
  /// **'Social Features'**
  String get socialFeatures;

  /// No description provided for @communityEvents.
  ///
  /// In en, this message translates to:
  /// **'Community Events'**
  String get communityEvents;

  /// No description provided for @discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters.
  ///
  /// In en, this message translates to:
  /// **'Discover local arts, crafts, and social activities organized by dementia support centers'**
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters;

  /// No description provided for @communityForum.
  ///
  /// In en, this message translates to:
  /// **'Community Forum'**
  String get communityForum;

  /// No description provided for @connectWithOthersShareExperiencesAndGetSupportFromTheCommunity.
  ///
  /// In en, this message translates to:
  /// **'Connect with others, share experiences, and get support from the community'**
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity;

  /// No description provided for @dementiaEncyclopedia.
  ///
  /// In en, this message translates to:
  /// **'Dementia Encyclopedia'**
  String get dementiaEncyclopedia;

  /// No description provided for @learnAboutDementiaPreventionStrategiesAndFindHelpfulResources.
  ///
  /// In en, this message translates to:
  /// **'Learn about dementia, prevention strategies, and find helpful resources'**
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources;

  /// No description provided for @socialConnectionTips.
  ///
  /// In en, this message translates to:
  /// **'Social Connection Tips'**
  String get socialConnectionTips;

  /// No description provided for @joinLocalGroups.
  ///
  /// In en, this message translates to:
  /// **'Join local groups'**
  String get joinLocalGroups;

  /// No description provided for @lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea.
  ///
  /// In en, this message translates to:
  /// **'Look for arts and crafts workshops, walking groups, or hobby clubs in your area.'**
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea;

  /// No description provided for @stayInTouch.
  ///
  /// In en, this message translates to:
  /// **'Stay in touch'**
  String get stayInTouch;

  /// No description provided for @regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference.
  ///
  /// In en, this message translates to:
  /// **'Regular phone calls or video chats with family and friends can make a big difference.'**
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference;

  /// No description provided for @volunteer.
  ///
  /// In en, this message translates to:
  /// **'Volunteer'**
  String get volunteer;

  /// No description provided for @givingBackToYourCommunityCanProvidePurposeAndSocialConnection.
  ///
  /// In en, this message translates to:
  /// **'Giving back to your community can provide purpose and social connection.'**
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection;

  /// No description provided for @learnSomethingNew.
  ///
  /// In en, this message translates to:
  /// **'Learn something new'**
  String get learnSomethingNew;

  /// No description provided for @takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople.
  ///
  /// In en, this message translates to:
  /// **'Taking classes or joining learning groups can help you meet like-minded people.'**
  String get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople;

  /// No description provided for @couldNotOpenNHSWebsite.
  ///
  /// In en, this message translates to:
  /// **'Could not open NHS website'**
  String get couldNotOpenNHSWebsite;

  /// No description provided for @couldNotOpenNHSBookingWebsite.
  ///
  /// In en, this message translates to:
  /// **'Could not open NHS booking website'**
  String get couldNotOpenNHSBookingWebsite;

  /// No description provided for @healthCheckComplete.
  ///
  /// In en, this message translates to:
  /// **'Health Check Complete'**
  String get healthCheckComplete;

  /// No description provided for @healthCheckOverdue.
  ///
  /// In en, this message translates to:
  /// **'Health Check Overdue'**
  String get healthCheckOverdue;

  /// No description provided for @healthCheckDueSoon.
  ///
  /// In en, this message translates to:
  /// **'Health Check Due Soon'**
  String get healthCheckDueSoon;

  /// No description provided for @benefitsOfNHSHealthCheck.
  ///
  /// In en, this message translates to:
  /// **'Benefits of NHS Health Check'**
  String get benefitsOfNHSHealthCheck;

  /// No description provided for @earlyDetection.
  ///
  /// In en, this message translates to:
  /// **'Early Detection'**
  String get earlyDetection;

  /// No description provided for @identifiesHealthRisksBeforeTheyBecomeSeriousProblems.
  ///
  /// In en, this message translates to:
  /// **'Identifies health risks before they become serious problems'**
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems;

  /// No description provided for @dementiaPrevention.
  ///
  /// In en, this message translates to:
  /// **'Dementia Prevention'**
  String get dementiaPrevention;

  /// No description provided for @helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice.
  ///
  /// In en, this message translates to:
  /// **'Helps reduce your risk of developing dementia through lifestyle advice'**
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice;

  /// No description provided for @lifestyleAdvice.
  ///
  /// In en, this message translates to:
  /// **'Lifestyle Advice'**
  String get lifestyleAdvice;

  /// No description provided for @getPersonalizedAdviceOnDietExerciseAndHealthyLiving.
  ///
  /// In en, this message translates to:
  /// **'Get personalized advice on diet, exercise, and healthy living'**
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving;

  /// No description provided for @freeService.
  ///
  /// In en, this message translates to:
  /// **'Free Service'**
  String get freeService;

  /// No description provided for @completelyFreeAndTakesAbout20To30Minutes.
  ///
  /// In en, this message translates to:
  /// **'Completely free and takes about 20-30 minutes'**
  String get completelyFreeAndTakesAbout20To30Minutes;

  /// No description provided for @learnMoreAboutHealthChecks.
  ///
  /// In en, this message translates to:
  /// **'Learn More About Health Checks'**
  String get learnMoreAboutHealthChecks;

  /// No description provided for @markAsNotCompleted.
  ///
  /// In en, this message translates to:
  /// **'Mark as Not Completed'**
  String get markAsNotCompleted;

  /// No description provided for @bookYourHealthCheck.
  ///
  /// In en, this message translates to:
  /// **'Book Your Health Check'**
  String get bookYourHealthCheck;

  /// No description provided for @currentWeight.
  ///
  /// In en, this message translates to:
  /// **'Current Weight'**
  String get currentWeight;

  /// No description provided for @updated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updated;

  /// No description provided for @notRecorded.
  ///
  /// In en, this message translates to:
  /// **'Not recorded'**
  String get notRecorded;

  /// No description provided for @addYourHeightToCalculateBMI.
  ///
  /// In en, this message translates to:
  /// **'Add your height to calculate BMI'**
  String get addYourHeightToCalculateBMI;

  /// No description provided for @logNewWeight.
  ///
  /// In en, this message translates to:
  /// **'Log New Weight'**
  String get logNewWeight;

  /// No description provided for @enterYourWeight.
  ///
  /// In en, this message translates to:
  /// **'Enter your weight'**
  String get enterYourWeight;

  /// No description provided for @pleaseEnterYourWeight.
  ///
  /// In en, this message translates to:
  /// **'Please enter your weight'**
  String get pleaseEnterYourWeight;

  /// No description provided for @pleaseEnterAValidNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get pleaseEnterAValidNumber;

  /// No description provided for @weightHistory.
  ///
  /// In en, this message translates to:
  /// **'Weight History'**
  String get weightHistory;

  /// No description provided for @trackYourWeightChangesOverTime.
  ///
  /// In en, this message translates to:
  /// **'Track your weight changes over time'**
  String get trackYourWeightChangesOverTime;

  /// No description provided for @weightChartComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Weight Chart Coming Soon'**
  String get weightChartComingSoon;

  /// No description provided for @bmiInformation.
  ///
  /// In en, this message translates to:
  /// **'BMI Information'**
  String get bmiInformation;

  /// No description provided for @addYourHeightAndWeightToCalculateYourBMI.
  ///
  /// In en, this message translates to:
  /// **'Add your height and weight to calculate your BMI'**
  String get addYourHeightAndWeightToCalculateYourBMI;

  /// No description provided for @below18Point5.
  ///
  /// In en, this message translates to:
  /// **'Below 18.5'**
  String get below18Point5;

  /// No description provided for @bmiRange18Point5To24Point9.
  ///
  /// In en, this message translates to:
  /// **'18.5 - 24.9'**
  String get bmiRange18Point5To24Point9;

  /// No description provided for @bmiRange25Point0To29Point9.
  ///
  /// In en, this message translates to:
  /// **'25.0 - 29.9'**
  String get bmiRange25Point0To29Point9;

  /// No description provided for @bmiRange30Point0AndAbove.
  ///
  /// In en, this message translates to:
  /// **'30.0 and above'**
  String get bmiRange30Point0AndAbove;

  /// No description provided for @todaysActivity.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Activity'**
  String get todaysActivity;

  /// No description provided for @steps.
  ///
  /// In en, this message translates to:
  /// **'Steps'**
  String get steps;

  /// No description provided for @distance.
  ///
  /// In en, this message translates to:
  /// **'Distance'**
  String get distance;

  /// No description provided for @calories.
  ///
  /// In en, this message translates to:
  /// **'Calories'**
  String get calories;

  /// No description provided for @duration.
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// No description provided for @logWalk.
  ///
  /// In en, this message translates to:
  /// **'Log Walk'**
  String get logWalk;

  /// No description provided for @logExercise.
  ///
  /// In en, this message translates to:
  /// **'Log Exercise'**
  String get logExercise;

  /// No description provided for @setGoals.
  ///
  /// In en, this message translates to:
  /// **'Set Goals'**
  String get setGoals;

  /// No description provided for @viewHistory.
  ///
  /// In en, this message translates to:
  /// **'View History'**
  String get viewHistory;

  /// No description provided for @weeklyProgress.
  ///
  /// In en, this message translates to:
  /// **'Weekly Progress'**
  String get weeklyProgress;

  /// No description provided for @activityChartsComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Activity Charts Coming Soon'**
  String get activityChartsComingSoon;

  /// No description provided for @goalSettingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Goal setting feature coming soon!'**
  String get goalSettingFeatureComingSoon;

  /// No description provided for @activityHistory.
  ///
  /// In en, this message translates to:
  /// **'Activity History'**
  String get activityHistory;

  /// No description provided for @activityHistoryFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Activity history feature coming soon!'**
  String get activityHistoryFeatureComingSoon;

  /// No description provided for @dailyBrainTeaser.
  ///
  /// In en, this message translates to:
  /// **'Daily Brain Teaser'**
  String get dailyBrainTeaser;

  /// No description provided for @aQuickPuzzleToStartYourDay.
  ///
  /// In en, this message translates to:
  /// **'A quick puzzle to start your day.'**
  String get aQuickPuzzleToStartYourDay;

  /// No description provided for @memoryMatchGame.
  ///
  /// In en, this message translates to:
  /// **'Memory Match Game'**
  String get memoryMatchGame;

  /// No description provided for @matchPairsOfCardsToImproveYourShortTermMemory.
  ///
  /// In en, this message translates to:
  /// **'Match pairs of cards to improve your short-term memory.'**
  String get matchPairsOfCardsToImproveYourShortTermMemory;

  /// No description provided for @wordAssociation.
  ///
  /// In en, this message translates to:
  /// **'Word Association'**
  String get wordAssociation;

  /// No description provided for @connectWordsAndExpandYourVocabulary.
  ///
  /// In en, this message translates to:
  /// **'Connect words and expand your vocabulary.'**
  String get connectWordsAndExpandYourVocabulary;

  /// No description provided for @activities.
  ///
  /// In en, this message translates to:
  /// **'Activities'**
  String get activities;

  /// No description provided for @reminiscence.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence'**
  String get reminiscence;

  /// No description provided for @continueButton.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueButton;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @noPromptAvailable.
  ///
  /// In en, this message translates to:
  /// **'No prompt available'**
  String get noPromptAvailable;

  /// No description provided for @review.
  ///
  /// In en, this message translates to:
  /// **'Review'**
  String get review;

  /// No description provided for @trainingProgress.
  ///
  /// In en, this message translates to:
  /// **'Training Progress'**
  String get trainingProgress;

  /// No description provided for @activityProgress.
  ///
  /// In en, this message translates to:
  /// **'Activity Progress'**
  String get activityProgress;

  /// No description provided for @reminiscenceSessions.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence Sessions'**
  String get reminiscenceSessions;

  /// No description provided for @untitledSession.
  ///
  /// In en, this message translates to:
  /// **'Untitled Session'**
  String get untitledSession;

  /// No description provided for @reminiscenceSession.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence Session'**
  String get reminiscenceSession;

  /// No description provided for @theMediterraneanDiet.
  ///
  /// In en, this message translates to:
  /// **'The Mediterranean Diet'**
  String get theMediterraneanDiet;

  /// No description provided for @focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk.
  ///
  /// In en, this message translates to:
  /// **'Focus on fruits, vegetables, whole grains, and healthy fats like olive oil. This diet has been linked to reduced dementia risk.'**
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk;

  /// No description provided for @brainHealth.
  ///
  /// In en, this message translates to:
  /// **'Brain Health'**
  String get brainHealth;

  /// No description provided for @drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth.
  ///
  /// In en, this message translates to:
  /// **'Drink 6-8 glasses of water daily. Proper hydration is essential for brain function and overall health.'**
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth;

  /// No description provided for @hydration.
  ///
  /// In en, this message translates to:
  /// **'Hydration'**
  String get hydration;

  /// No description provided for @omega3FattyAcids.
  ///
  /// In en, this message translates to:
  /// **'Omega-3 Fatty Acids'**
  String get omega3FattyAcids;

  /// No description provided for @includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation.
  ///
  /// In en, this message translates to:
  /// **'Include fish like salmon, mackerel, and sardines in your diet. Omega-3s support brain health and may reduce inflammation.'**
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation;

  /// No description provided for @antioxidantRichFoods.
  ///
  /// In en, this message translates to:
  /// **'Antioxidant-Rich Foods'**
  String get antioxidantRichFoods;

  /// No description provided for @eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage.
  ///
  /// In en, this message translates to:
  /// **'Eat berries, dark leafy greens, and colorful vegetables. Antioxidants help protect brain cells from damage.'**
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage;

  /// No description provided for @general.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get general;

  /// No description provided for @limitProcessedFoods.
  ///
  /// In en, this message translates to:
  /// **'Limit Processed Foods'**
  String get limitProcessedFoods;

  /// No description provided for @reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline.
  ///
  /// In en, this message translates to:
  /// **'Reduce intake of processed meats, sugary snacks, and fried foods. These can contribute to inflammation and cognitive decline.'**
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline;

  /// No description provided for @vitaminDForBrainHealth.
  ///
  /// In en, this message translates to:
  /// **'Vitamin D for Brain Health'**
  String get vitaminDForBrainHealth;

  /// No description provided for @getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues.
  ///
  /// In en, this message translates to:
  /// **'Get adequate vitamin D through sunlight, fortified foods, or supplements. Vitamin D deficiency has been linked to cognitive issues.'**
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues;

  /// No description provided for @vitamins.
  ///
  /// In en, this message translates to:
  /// **'Vitamins'**
  String get vitamins;

  /// No description provided for @healthyEatingForBrainHealth.
  ///
  /// In en, this message translates to:
  /// **'Healthy Eating for Brain Health'**
  String get healthyEatingForBrainHealth;

  /// No description provided for @allTips.
  ///
  /// In en, this message translates to:
  /// **'All Tips'**
  String get allTips;

  /// No description provided for @tipBookmarked.
  ///
  /// In en, this message translates to:
  /// **'Tip bookmarked!'**
  String get tipBookmarked;

  /// No description provided for @bookmarkRemoved.
  ///
  /// In en, this message translates to:
  /// **'Bookmark removed'**
  String get bookmarkRemoved;

  /// No description provided for @generalInformation.
  ///
  /// In en, this message translates to:
  /// **'General Information'**
  String get generalInformation;

  /// No description provided for @symptoms.
  ///
  /// In en, this message translates to:
  /// **'Symptoms'**
  String get symptoms;

  /// No description provided for @riskFactors.
  ///
  /// In en, this message translates to:
  /// **'Risk Factors'**
  String get riskFactors;

  /// No description provided for @types.
  ///
  /// In en, this message translates to:
  /// **'Types'**
  String get types;

  /// No description provided for @diagnosis.
  ///
  /// In en, this message translates to:
  /// **'Diagnosis'**
  String get diagnosis;

  /// No description provided for @treatment.
  ///
  /// In en, this message translates to:
  /// **'Treatment'**
  String get treatment;

  /// No description provided for @prevention.
  ///
  /// In en, this message translates to:
  /// **'Prevention'**
  String get prevention;

  /// No description provided for @caregiving.
  ///
  /// In en, this message translates to:
  /// **'Caregiving'**
  String get caregiving;

  /// No description provided for @entryBookmarked.
  ///
  /// In en, this message translates to:
  /// **'Entry bookmarked!'**
  String get entryBookmarked;

  /// No description provided for @wellbeing.
  ///
  /// In en, this message translates to:
  /// **'Wellbeing'**
  String get wellbeing;

  /// No description provided for @createNewPost.
  ///
  /// In en, this message translates to:
  /// **'Create New Post'**
  String get createNewPost;

  /// No description provided for @postCreationFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Post creation feature coming soon!'**
  String get postCreationFeatureComingSoon;

  /// No description provided for @postDetails.
  ///
  /// In en, this message translates to:
  /// **'Post Details'**
  String get postDetails;

  /// No description provided for @reply.
  ///
  /// In en, this message translates to:
  /// **'Reply'**
  String get reply;

  /// No description provided for @joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement.
  ///
  /// In en, this message translates to:
  /// **'Join local events designed to support cognitive health and social engagement'**
  String get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement;

  /// No description provided for @allEvents.
  ///
  /// In en, this message translates to:
  /// **'All Events'**
  String get allEvents;

  /// No description provided for @arts.
  ///
  /// In en, this message translates to:
  /// **'Arts'**
  String get arts;

  /// No description provided for @music.
  ///
  /// In en, this message translates to:
  /// **'Music'**
  String get music;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'Education'**
  String get education;

  /// No description provided for @fullyBooked.
  ///
  /// In en, this message translates to:
  /// **'Fully Booked'**
  String get fullyBooked;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @joinEvent.
  ///
  /// In en, this message translates to:
  /// **'Join Event'**
  String get joinEvent;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @participants.
  ///
  /// In en, this message translates to:
  /// **'Participants'**
  String get participants;

  /// No description provided for @organizer.
  ///
  /// In en, this message translates to:
  /// **'Organizer'**
  String get organizer;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @registerForEvent.
  ///
  /// In en, this message translates to:
  /// **'Register for Event'**
  String get registerForEvent;

  /// No description provided for @surveys.
  ///
  /// In en, this message translates to:
  /// **'Surveys'**
  String get surveys;

  /// No description provided for @regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement.
  ///
  /// In en, this message translates to:
  /// **'Regular assessments help track your progress and identify areas for improvement'**
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement;

  /// No description provided for @allSurveys.
  ///
  /// In en, this message translates to:
  /// **'All Surveys'**
  String get allSurveys;

  /// No description provided for @comprehensive.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive'**
  String get comprehensive;

  /// No description provided for @lifestyle.
  ///
  /// In en, this message translates to:
  /// **'Lifestyle'**
  String get lifestyle;

  /// No description provided for @reviewResults.
  ///
  /// In en, this message translates to:
  /// **'Review Results'**
  String get reviewResults;

  /// No description provided for @startSurvey.
  ///
  /// In en, this message translates to:
  /// **'Start Survey'**
  String get startSurvey;

  /// No description provided for @previous.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get previous;

  /// No description provided for @complete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get complete;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @unsupportedQuestionType.
  ///
  /// In en, this message translates to:
  /// **'Unsupported question type'**
  String get unsupportedQuestionType;

  /// No description provided for @rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get rewards;

  /// No description provided for @availablePoints.
  ///
  /// In en, this message translates to:
  /// **'Available Points'**
  String get availablePoints;

  /// No description provided for @totalEarned.
  ///
  /// In en, this message translates to:
  /// **'Total Earned'**
  String get totalEarned;

  /// No description provided for @availableRewards.
  ///
  /// In en, this message translates to:
  /// **'Available Rewards'**
  String get availableRewards;

  /// No description provided for @partner.
  ///
  /// In en, this message translates to:
  /// **'Partner'**
  String get partner;

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @notEnoughPointsToRedeemThisReward.
  ///
  /// In en, this message translates to:
  /// **'Not enough points to redeem this reward'**
  String get notEnoughPointsToRedeemThisReward;

  /// No description provided for @redeemReward.
  ///
  /// In en, this message translates to:
  /// **'Redeem Reward'**
  String get redeemReward;

  /// No description provided for @dailyDietReflection.
  ///
  /// In en, this message translates to:
  /// **'Daily Diet Reflection'**
  String get dailyDietReflection;

  /// No description provided for @reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet.
  ///
  /// In en, this message translates to:
  /// **'Reflect on your eating habits and track your progress towards a healthier diet'**
  String get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet;

  /// No description provided for @saveReflection.
  ///
  /// In en, this message translates to:
  /// **'Save Reflection'**
  String get saveReflection;

  /// No description provided for @reflection.
  ///
  /// In en, this message translates to:
  /// **'Reflection'**
  String get reflection;

  /// No description provided for @areasForImprovement.
  ///
  /// In en, this message translates to:
  /// **'Areas for Improvement'**
  String get areasForImprovement;

  /// No description provided for @recentReflections.
  ///
  /// In en, this message translates to:
  /// **'Recent Reflections'**
  String get recentReflections;

  /// No description provided for @pleaseWriteAReflectionBeforeSubmitting.
  ///
  /// In en, this message translates to:
  /// **'Please write a reflection before submitting'**
  String get pleaseWriteAReflectionBeforeSubmitting;

  /// No description provided for @excellent.
  ///
  /// In en, this message translates to:
  /// **'Excellent'**
  String get excellent;

  /// No description provided for @good.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get good;

  /// No description provided for @average.
  ///
  /// In en, this message translates to:
  /// **'Average'**
  String get average;

  /// No description provided for @poor.
  ///
  /// In en, this message translates to:
  /// **'Poor'**
  String get poor;

  /// No description provided for @veryPoor.
  ///
  /// In en, this message translates to:
  /// **'Very Poor'**
  String get veryPoor;

  /// No description provided for @goodChoicesWithRoomForMinorImprovements.
  ///
  /// In en, this message translates to:
  /// **'Good choices with room for minor improvements'**
  String get goodChoicesWithRoomForMinorImprovements;

  /// No description provided for @moreFruitsAndVegetables.
  ///
  /// In en, this message translates to:
  /// **'More fruits and vegetables'**
  String get moreFruitsAndVegetables;

  /// No description provided for @reduceProcessedFoods.
  ///
  /// In en, this message translates to:
  /// **'Reduce processed foods'**
  String get reduceProcessedFoods;

  /// No description provided for @increaseWaterIntake.
  ///
  /// In en, this message translates to:
  /// **'Increase water intake'**
  String get increaseWaterIntake;

  /// No description provided for @moreWholeGrains.
  ///
  /// In en, this message translates to:
  /// **'More whole grains'**
  String get moreWholeGrains;

  /// No description provided for @reduceSugarIntake.
  ///
  /// In en, this message translates to:
  /// **'Reduce sugar intake'**
  String get reduceSugarIntake;

  /// No description provided for @moreLeanProteins.
  ///
  /// In en, this message translates to:
  /// **'More lean proteins'**
  String get moreLeanProteins;

  /// No description provided for @betterPortionControl.
  ///
  /// In en, this message translates to:
  /// **'Better portion control'**
  String get betterPortionControl;

  /// No description provided for @regularMealTiming.
  ///
  /// In en, this message translates to:
  /// **'Regular meal timing'**
  String get regularMealTiming;

  /// No description provided for @languageChanged.
  ///
  /// In en, this message translates to:
  /// **'Language changed successfully'**
  String get languageChanged;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @polish.
  ///
  /// In en, this message translates to:
  /// **'Polski'**
  String get polish;

  /// No description provided for @romanian.
  ///
  /// In en, this message translates to:
  /// **'Română'**
  String get romanian;

  /// No description provided for @punjabi.
  ///
  /// In en, this message translates to:
  /// **'ਪੰਜਾਬੀ'**
  String get punjabi;

  /// No description provided for @urdu.
  ///
  /// In en, this message translates to:
  /// **'اردو'**
  String get urdu;

  /// No description provided for @chinese.
  ///
  /// In en, this message translates to:
  /// **'中文'**
  String get chinese;

  /// No description provided for @bengali.
  ///
  /// In en, this message translates to:
  /// **'বাংলা'**
  String get bengali;

  /// No description provided for @areYouSureYouWantToRedeem.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to redeem'**
  String get areYouSureYouWantToRedeem;

  /// No description provided for @forText.
  ///
  /// In en, this message translates to:
  /// **'for'**
  String get forText;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'points'**
  String get points;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RememberMe'**
  String get appName;

  /// No description provided for @appDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Lucy Cavendish College, University of Cambridge'**
  String get appDeveloper;

  /// No description provided for @yourProgress.
  ///
  /// In en, this message translates to:
  /// **'Your Progress'**
  String get yourProgress;

  /// No description provided for @survey.
  ///
  /// In en, this message translates to:
  /// **'Survey'**
  String get survey;

  /// No description provided for @nhsHealthCheckCompleted.
  ///
  /// In en, this message translates to:
  /// **'NHS Health Check completed'**
  String get nhsHealthCheckCompleted;

  /// No description provided for @nhsHealthCheckRecommended.
  ///
  /// In en, this message translates to:
  /// **'NHS Health Check recommended'**
  String get nhsHealthCheckRecommended;

  /// No description provided for @todaysStats.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Stats'**
  String get todaysStats;

  /// No description provided for @water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get water;

  /// No description provided for @sleep.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get sleep;

  /// No description provided for @glasses.
  ///
  /// In en, this message translates to:
  /// **'glasses'**
  String get glasses;

  /// No description provided for @hours.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get hours;

  /// No description provided for @ofText.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get ofText;

  /// No description provided for @urgent.
  ///
  /// In en, this message translates to:
  /// **'URGENT'**
  String get urgent;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @activityStartedMock.
  ///
  /// In en, this message translates to:
  /// **'Activity started! (Mock)'**
  String get activityStartedMock;

  /// No description provided for @reminiscenceSessionStartedMock.
  ///
  /// In en, this message translates to:
  /// **'Reminiscence session started! (Mock)'**
  String get reminiscenceSessionStartedMock;

  /// No description provided for @healthCheckMarkedAsCompleted.
  ///
  /// In en, this message translates to:
  /// **'Health check marked as completed!'**
  String get healthCheckMarkedAsCompleted;

  /// No description provided for @weightLogged.
  ///
  /// In en, this message translates to:
  /// **'Weight logged'**
  String get weightLogged;

  /// No description provided for @reflectionSavedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Reflection saved successfully!'**
  String get reflectionSavedSuccessfully;

  /// No description provided for @surveyCompletedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Survey completed successfully!'**
  String get surveyCompletedSuccessfully;

  /// No description provided for @successfullyRedeemed.
  ///
  /// In en, this message translates to:
  /// **'Successfully redeemed'**
  String get successfullyRedeemed;

  /// No description provided for @notesOptional.
  ///
  /// In en, this message translates to:
  /// **'Notes (optional)'**
  String get notesOptional;

  /// No description provided for @writeYourThoughtsHere.
  ///
  /// In en, this message translates to:
  /// **'Write your thoughts here...'**
  String get writeYourThoughtsHere;

  /// No description provided for @howWouldYouRateYourDietQualityToday.
  ///
  /// In en, this message translates to:
  /// **'How would you rate your diet quality today?'**
  String get howWouldYouRateYourDietQualityToday;

  /// No description provided for @whatDidYouEatToday.
  ///
  /// In en, this message translates to:
  /// **'What did you eat today? How did you feel about your food choices? What went well and what could be improved?'**
  String get whatDidYouEatToday;

  /// No description provided for @visualizeYourWeightTrends.
  ///
  /// In en, this message translates to:
  /// **'Visualize your weight trends and progress over time with interactive charts.'**
  String get visualizeYourWeightTrends;

  /// No description provided for @question.
  ///
  /// In en, this message translates to:
  /// **'Question'**
  String get question;

  /// No description provided for @ofQuestions.
  ///
  /// In en, this message translates to:
  /// **'of'**
  String get ofQuestions;

  /// No description provided for @surveyResultsFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Survey results feature coming soon!'**
  String get surveyResultsFeatureComingSoon;

  /// No description provided for @whatIsAnNHSHealthCheck.
  ///
  /// In en, this message translates to:
  /// **'What is an NHS Health Check?'**
  String get whatIsAnNHSHealthCheck;

  /// No description provided for @rememberMeAndYourHealth.
  ///
  /// In en, this message translates to:
  /// **'RememberMe & Your Health'**
  String get rememberMeAndYourHealth;

  /// No description provided for @regularHealthChecksAreImportant.
  ///
  /// In en, this message translates to:
  /// **'Regular health checks are an important part of maintaining brain health and reducing dementia risk. The NHS Health Check provides valuable insights that complement your RememberMe journey.'**
  String get regularHealthChecksAreImportant;

  /// No description provided for @keepTrackOfYourHealthCheckResults.
  ///
  /// In en, this message translates to:
  /// **'Keep track of your health check results in RememberMe to monitor your dementia risk factors over time.'**
  String get keepTrackOfYourHealthCheckResults;

  /// No description provided for @iveAlreadyHadMyHealthCheck.
  ///
  /// In en, this message translates to:
  /// **'I\'ve Already Had My Health Check'**
  String get iveAlreadyHadMyHealthCheck;

  /// No description provided for @coffeeVoucherCambridgeCoffeeHouse.
  ///
  /// In en, this message translates to:
  /// **'Coffee Voucher - Cambridge Coffee House'**
  String get coffeeVoucherCambridgeCoffeeHouse;

  /// No description provided for @enjoyAFreeCoffeeAtCambridgeCoffeeHouse.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a free coffee at Cambridge Coffee House, a local independent cafe.'**
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse;

  /// No description provided for @cambridgeCoffeeHouse.
  ///
  /// In en, this message translates to:
  /// **'Cambridge Coffee House'**
  String get cambridgeCoffeeHouse;

  /// No description provided for @bookstoreDiscountHeffers.
  ///
  /// In en, this message translates to:
  /// **'Bookstore Discount - Heffers'**
  String get bookstoreDiscountHeffers;

  /// No description provided for @heffersBookshop.
  ///
  /// In en, this message translates to:
  /// **'Heffers Bookshop'**
  String get heffersBookshop;

  /// No description provided for @solveThePuzzle.
  ///
  /// In en, this message translates to:
  /// **'Solve the puzzle.'**
  String get solveThePuzzle;

  /// No description provided for @submitYourAnswer.
  ///
  /// In en, this message translates to:
  /// **'Submit your answer.'**
  String get submitYourAnswer;

  /// No description provided for @whatHasAnEyeButCannotSee.
  ///
  /// In en, this message translates to:
  /// **'What has an eye, but cannot see?'**
  String get whatHasAnEyeButCannotSee;

  /// No description provided for @flipTwoCards.
  ///
  /// In en, this message translates to:
  /// **'Flip two cards.'**
  String get flipTwoCards;

  /// No description provided for @ifTheyMatchTheyDisappear.
  ///
  /// In en, this message translates to:
  /// **'If they match, they disappear.'**
  String get ifTheyMatchTheyDisappear;

  /// No description provided for @matchAllPairs.
  ///
  /// In en, this message translates to:
  /// **'Match all pairs.'**
  String get matchAllPairs;

  /// No description provided for @startWithAWord.
  ///
  /// In en, this message translates to:
  /// **'Start with a word.'**
  String get startWithAWord;

  /// No description provided for @listAssociatedWords.
  ///
  /// In en, this message translates to:
  /// **'List associated words.'**
  String get listAssociatedWords;

  /// No description provided for @tryToMakeAChain.
  ///
  /// In en, this message translates to:
  /// **'Try to make a chain.'**
  String get tryToMakeAChain;

  /// No description provided for @whatWasYourFavoriteChildhoodGame.
  ///
  /// In en, this message translates to:
  /// **'What was your favorite childhood game or toy?'**
  String get whatWasYourFavoriteChildhoodGame;

  /// No description provided for @myFavoriteToyWasARedTrainSet.
  ///
  /// In en, this message translates to:
  /// **'My favorite toy was a red train set. I spent hours building tracks and imagining journeys.'**
  String get myFavoriteToyWasARedTrainSet;

  /// No description provided for @describeAMemorableFamilyHoliday.
  ///
  /// In en, this message translates to:
  /// **'Describe a memorable family holiday.'**
  String get describeAMemorableFamilyHoliday;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'min'**
  String get min;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @difficulty.
  ///
  /// In en, this message translates to:
  /// **'Difficulty'**
  String get difficulty;

  /// No description provided for @registrationSuccessful.
  ///
  /// In en, this message translates to:
  /// **'Registration successful! You will receive a confirmation email.'**
  String get registrationSuccessful;

  /// No description provided for @replyPostedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Reply posted successfully!'**
  String get replyPostedSuccessfully;

  /// No description provided for @activityLoggingFeatureComingSoon.
  ///
  /// In en, this message translates to:
  /// **'Activity logging feature coming soon!'**
  String get activityLoggingFeatureComingSoon;

  /// No description provided for @maintainAHealthyWeight.
  ///
  /// In en, this message translates to:
  /// **'Maintain a Healthy Weight'**
  String get maintainAHealthyWeight;

  /// No description provided for @keepYourBMIBetween18Point5And24Point9ForOptimalHealth.
  ///
  /// In en, this message translates to:
  /// **'Keep your BMI between 18.5 and 24.9 for optimal health.'**
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth;

  /// No description provided for @regularHealthChecks.
  ///
  /// In en, this message translates to:
  /// **'Regular Health Checks'**
  String get regularHealthChecks;

  /// No description provided for @bookYourFreeNHSHealthCheckEvery5Years.
  ///
  /// In en, this message translates to:
  /// **'Book your free NHS Health Check every 5 years.'**
  String get bookYourFreeNHSHealthCheckEvery5Years;

  /// No description provided for @monitorYourVitals.
  ///
  /// In en, this message translates to:
  /// **'Monitor Your Vitals'**
  String get monitorYourVitals;

  /// No description provided for @knowYourNumbers.
  ///
  /// In en, this message translates to:
  /// **'Know Your Numbers'**
  String get knowYourNumbers;

  /// No description provided for @monitorYourBloodPressureCholesterolAndBloodSugarRegularly.
  ///
  /// In en, this message translates to:
  /// **'Monitor your blood pressure, cholesterol, and blood sugar regularly.'**
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly;

  /// No description provided for @aimForAtLeast150MinutesOfModerateExercisePerWeek.
  ///
  /// In en, this message translates to:
  /// **'Aim for at least 150 minutes of moderate exercise per week.'**
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek;

  /// No description provided for @label.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get label;

  /// No description provided for @likes.
  ///
  /// In en, this message translates to:
  /// **'likes'**
  String get likes;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'bn',
    'en',
    'pa',
    'pl',
    'ro',
    'ur',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bn':
      return AppLocalizationsBn();
    case 'en':
      return AppLocalizationsEn();
    case 'pa':
      return AppLocalizationsPa();
    case 'pl':
      return AppLocalizationsPl();
    case 'ro':
      return AppLocalizationsRo();
    case 'ur':
      return AppLocalizationsUr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
