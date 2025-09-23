// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Panjabi Punjabi (`pa`).
class AppLocalizationsPa extends AppLocalizations {
  AppLocalizationsPa([String locale = 'pa']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS ਡਿਮੈਂਸ਼ੀਆ ਰੋਕਥਾਮ ਜੀਵਨ ਸ਼ੈਲੀ ਟਰੈਕਰ';

  @override
  String get health => 'ਸਿਹਤ';

  @override
  String get healthMonitoring => 'ਸਿਹਤ ਦੀ ਨਿਗਰਾਨੀ';

  @override
  String get healthMonitoringDescription =>
      'ਆਪਣਾ ਵਜ਼ਨ, BMI, ਅਤੇ ਸਿਹਤ ਚੈਕ ਸਥਿਤੀ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ';

  @override
  String get healthFeatures => 'ਸਿਹਤ ਵਿਸ਼ੇਸ਼ਤਾਵਾਂ';

  @override
  String get quickActions => 'ਤੇਜ਼ ਕਾਰਵਾਈਆਂ';

  @override
  String get weightDiary => 'ਵਜ਼ਨ ਡਾਇਰੀ';

  @override
  String get weightDiaryDescription =>
      'ਆਪਣਾ ਰੋਜ਼ਾਨਾ ਵਜ਼ਨ ਲੌਗ ਕਰੋ ਅਤੇ ਸਮੇਂ ਦੇ ਨਾਲ BMI ਤਬਦੀਲੀਆਂ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ';

  @override
  String lastLogged(Object weight) {
    return 'ਆਖਰੀ ਲੌਗ: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'ਅਜੇ ਲੌਗ ਨਹੀਂ ਕੀਤਾ';

  @override
  String get nhsHealthCheck => 'NHS ਸਿਹਤ ਜਾਂਚ';

  @override
  String get nhsHealthCheckDescription =>
      'ਆਪਣੀ ਸਿਹਤ ਨੂੰ ਮਾਨੀਟਰ ਕਰਨ ਲਈ ਆਪਣੀ ਮੁਫਤ NHS ਸਿਹਤ ਜਾਂਚ ਬੁਕ ਕਰੋ';

  @override
  String completed(Object date) {
    return 'ਪੂਰਾ ਹੋਇਆ $date';
  }

  @override
  String get completedRecently => 'ਹਾਲ ਹੀ ਵਿੱਚ ਪੂਰਾ ਹੋਇਆ';

  @override
  String get dueNow => 'ਹੁਣ ਡਿਊ - ਆਪਣਾ ਮੁਫ਼ਤ ਚੈਕ ਬੁੱਕ ਕਰੋ';

  @override
  String get notDueYet => 'ਅਜੇ ਡਿਊ ਨਹੀਂ';

  @override
  String get healthProfile => 'ਸਿਹਤ ਪ੍ਰੋਫਾਈਲ';

  @override
  String get healthProfileDescription =>
      'ਆਪਣੀਆਂ ਮੈਡੀਕਲ ਸਥਿਤੀਆਂ, ਦਵਾਈਆਂ, ਅਤੇ ਐਮਰਜੈਂਸੀ ਕੰਟੈਕਟਾਂ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String gpRegistered(Object gpName) {
    return 'GP: $gpName';
  }

  @override
  String get noGpRegistered => 'ਕੋਈ GP ਰਜਿਸਟਰਡ ਨਹੀਂ';

  @override
  String get logWeight => 'ਵਜ਼ਨ ਲੌਗ ਕਰੋ';

  @override
  String get healthTips => 'ਸਿਹਤ ਸੁਝਾਅ';

  @override
  String get healthOverview => 'ਸਿਹਤ ਸੰਖੇਪ';

  @override
  String get weight => 'ਵਜ਼ਨ';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'BMI ਸ਼੍ਰੇਣੀ';

  @override
  String get notSet => 'ਸੈੱਟ ਨਹੀਂ';

  @override
  String get calculate => 'ਗਿਣਤੀ ਕਰੋ';

  @override
  String get unknown => 'ਅਣਜਾਣ';

  @override
  String get underweight => 'ਕਮ ਵਜ਼ਨ';

  @override
  String get normalWeight => 'ਸਾਧਾਰਣ ਵਜ਼ਨ';

  @override
  String get overweight => 'ਵਧੇਰੇ ਵਜ਼ਨ';

  @override
  String get obese => 'ਮੋਟਾਪਾ';

  @override
  String get bmiMessageUnderweight =>
      'ਸਿਹਤਮੰਦ ਵਜ਼ਨ ਵਾਧੇ ਦੀਆਂ ਰਣਨੀਤੀਆਂ ਬਾਰੇ ਆਪਣੇ GP ਨਾਲ ਗੱਲ ਕਰਨ ਬਾਰੇ ਸੋਚੋ।';

  @override
  String get bmiMessageNormal =>
      'ਸ਼ਾਨਦਾਰ! ਤੁਸੀਂ ਸਿਹਤਮੰਦ ਵਜ਼ਨ ਰੇਂਜ ਵਿੱਚ ਹੋ। ਇਸੇ ਤਰ੍ਹਾਂ ਜਾਰੀ ਰੱਖੋ!';

  @override
  String get bmiMessageOverweight =>
      'ਸਿਹਤਮੰਦ ਵਜ਼ਨ ਪ੍ਰਬੰਧਨ ਬਾਰੇ ਆਪਣੇ GP ਨਾਲ ਗੱਲ ਕਰਨ ਬਾਰੇ ਸੋਚੋ।';

  @override
  String get bmiMessageObese =>
      'ਕਿਰਪਾ ਕਰਕੇ ਵਜ਼ਨ ਪ੍ਰਬੰਧਨ ਵਿਕਲਪਾਂ ਬਾਰੇ ਆਪਣੇ GP ਨਾਲ ਗੱਲ ਕਰੋ।';

  @override
  String get bmiMessageDefault =>
      'ਬਿਹਤਰੀਨ ਸਿਹਤ ਲਈ ਆਪਣੇ ਵਜ਼ਨ ਨੂੰ ਨਿਯਮਿਤ ਤੌਰ \'ਤੇ ਮਾਨੀਟਰ ਕਰੋ।';

  @override
  String get progress => 'ਤਰੱਕੀ';

  @override
  String get noUserDataAvailable => 'ਕੋਈ ਯੂਜ਼ਰ ਡੇਟਾ ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get healthProfileManagementComingSoon =>
      'ਸਿਹਤ ਪ੍ਰੋਫਾਈਲ ਪ੍ਰਬੰਧਨ ਜਲਦੀ ਆ ਰਿਹਾ ਹੈ';

  @override
  String get today => 'ਅੱਜ';

  @override
  String get yesterday => 'ਕੱਲ';

  @override
  String daysAgo(Object count) {
    return '$count ਦਿਨ ਪਹਿਲਾਂ';
  }

  @override
  String weeksAgo(Object count) {
    return '$count ਹਫ਼ਤੇ ਪਹਿਲਾਂ';
  }

  @override
  String monthsAgo(Object count) {
    return '$count ਮਹੀਨੇ ਪਹਿਲਾਂ';
  }

  @override
  String yearsAgo(Object count) {
    return '$count ਸਾਲ ਪਹਿਲਾਂ';
  }

  @override
  String get language => 'ਭਾਸ਼ਾ';

  @override
  String get selectLanguage => 'ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get selectLanguageDescription => 'ਐਪ ਲਈ ਆਪਣੀ ਪਸੰਦੀਦਾ ਭਾਸ਼ਾ ਚੁਣੋ';

  @override
  String get systemLanguageSettings => 'ਸਿਸਟਮ ਭਾਸ਼ਾ ਸੈਟਿੰਗਾਂ';

  @override
  String get systemLanguageSettingsDescription =>
      'ਡਿਵਾਈਸ ਭਾਸ਼ਾ ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ';

  @override
  String get systemLanguageSettingsDialog =>
      'ਇਹ ਤੁਹਾਡੇ ਡਿਵਾਈਸ ਦੀਆਂ ਭਾਸ਼ਾ ਸੈਟਿੰਗਾਂ ਖੋਲੇਗਾ। ਐਪ ਆਪਣੇ ਆਪ ਸਿਸਟਮ ਭਾਸ਼ਾ ਪਸੰਦ ਦਾ ਪਤਾ ਲਗਾਏਗੀ ਅਤੇ ਵਰਤੇਗੀ।';

  @override
  String get systemSettingsFallback =>
      'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣੇ ਡਿਵਾਈਸ ਦੀਆਂ ਸੈਟਿੰਗਾਂ > ਭਾਸ਼ਾ ਅਤੇ ਖੇਤਰ ਵਿੱਚ ਜਾਓ ਸਿਸਟਮ ਭਾਸ਼ਾ ਬਦਲਣ ਲਈ।';

  @override
  String get cancel => 'ਰੱਦ ਕਰੋ';

  @override
  String get openSettings => 'ਸੈਟਿੰਗਾਂ ਖੋਲ੍ਹੋ';

  @override
  String get settings => 'ਸੈਟਿੰਗਾਂ';

  @override
  String get profile => 'ਪ੍ਰੋਫਾਈਲ';

  @override
  String get userName => 'ਵਰਤੋਂਕਾਰ ਦਾ ਨਾਮ';

  @override
  String get userEmail => 'ਵਰਤੋਂਕਾਰ@ਉਦਾਹਰਣ.com';

  @override
  String get changePassword => 'ਪਾਸਵਰਡ ਬਦਲੋ';

  @override
  String get notifications => 'ਸੂਚਨਾਵਾਂ';

  @override
  String get pushNotifications => 'ਪੁਸ਼ ਸੂਚਨਾਵਾਂ';

  @override
  String get receiveRemindersAndUpdates => 'ਯਾਦ ਦਿਵਾਉਣ ਅਤੇ ਅਪਡੇਟ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get dailyHealthReminders => 'ਰੋਜ਼ਾਨਾ ਸਿਹਤ ਯਾਦ ਦਿਵਾਉਣ';

  @override
  String get morningRemindersForHealthTracking =>
      'ਸਿਹਤ ਟ੍ਰੈਕਿੰਗ ਲਈ ਸਵੇਰ ਦੇ ਯਾਦ ਦਿਵਾਉਣ';

  @override
  String get surveyReminders => 'ਸਰਵੇ ਯਾਦ ਦਿਵਾਉਣ';

  @override
  String get notificationsForPendingSurveys => 'ਲੰਬਿਤ ਸਰਵੇਖਾਤਾਂ ਲਈ ਸੂਚਨਾਵਾਂ';

  @override
  String get privacyAndDataSharing => 'ਗੁਪਤਤਾ ਅਤੇ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨਾ';

  @override
  String get dataPrivacyInfo =>
      'ਤੁਹਾਡੀ ਡੇਟਾ ਗੁਪਤਤਾ ਸਾਡੇ ਲਈ ਮਹੱਤਵਪੂਰਨ ਹੈ। ਸਾਰਾ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨਾ ਵਿਕਲਪਿਕ ਹੈ ਅਤੇ ਕਿਸੇ ਵੀ ਸਮੇਂ ਬਦਲਿਆ ਜਾ ਸਕਦਾ ਹੈ।';

  @override
  String get shareDataWithResearchCenters => 'ਖੋਜ ਕੇਂਦਰਾਂ ਨਾਲ ਡੇਟਾ ਸਾਂਝਾ ਕਰੋ';

  @override
  String get helpAdvanceDementiaResearch =>
      'ਮਨੋਭ੍ਰੰਸ਼ ਖੋਜ ਵਿੱਚ ਤਰੱਕੀ ਵਿੱਚ ਮਦਦ ਕਰੋ (ਕੇਵਲ ਅਗਿਆਤ ਡੇਟਾ)';

  @override
  String get healthDataSharing => 'ਸਿਹਤ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨਾ';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'ਆਪਣੇ ਸਿਹਤ ਸੇਵਾ ਪ੍ਰਦਾਤਾ ਨਾਲ ਸਿਹਤ ਮੈਟ੍ਰਿਕਸ ਸਾਂਝੇ ਕਰੋ';

  @override
  String get locationTracking => 'ਸਥਾਨ ਟ੍ਰੈਕਿੰਗ';

  @override
  String get allowLocationDataForActivityTracking =>
      'ਗਤੀਵਿਧੀ ਟ੍ਰੈਕਿੰਗ ਲਈ ਸਥਾਨ ਡੇਟਾ ਦੀ ਇਜਾਜ਼ਤ ਦਿਓ';

  @override
  String get privacyPolicy => 'ਗੁਪਤਤਾ ਨੀਤੀ';

  @override
  String get termsOfService => 'ਸੇਵਾ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get researchParticipation => 'ਖੋਜ ਵਿੱਚ ਭਾਗੀਦਾਰੀ';

  @override
  String get researchParticipationInfo =>
      'ਖੋਜ ਵਿੱਚ ਭਾਗ ਲੈਣਾ ਮਨੋਭ੍ਰੰਸ਼ ਦੀ ਰੋਕਥਾਮ ਅਤੇ ਇਲਾਜ ਵਿੱਚ ਤਰੱਕੀ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।';

  @override
  String get participateInResearchStudies => 'ਖੋਜ ਅਧਿਐਨਾਂ ਵਿੱਚ ਭਾਗ ਲਓ';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'ਲੂਸੀ ਕੈਵੇਂਡਿਸ਼ ਕਾਲਜ ਦੁਆਰਾ ਕੀਤੇ ਗਏ ਅਧਿਐਨਾਂ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ';

  @override
  String get currentResearchStudies => 'ਮੌਜੂਦਾ ਖੋਜ ਅਧਿਐਨ';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'ਉਪਲਬਧ ਅਧਿਐਨ ਦੇਖੋ ਜਿਨ੍ਹਾਂ ਵਿੱਚ ਤੁਸੀਂ ਭਾਗ ਲੈ ਸਕਦੇ ਹੋ';

  @override
  String get appInformation => 'ਐਪ ਜਾਣਕਾਰੀ';

  @override
  String get version => 'ਵਰਜਨ';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'ਦੁਆਰਾ ਵਿਕਸਿਤ';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'ਲੂਸੀ ਕੈਵੇਂਡਿਸ਼ ਕਾਲਜ, ਕੈਮਬ੍ਰਿਜ ਯੂਨੀਵਰਸਿਟੀ';

  @override
  String get reportABug => 'ਬੱਗ ਰਿਪੋਰਟ ਕਰੋ';

  @override
  String get support => 'ਸਹਾਇਤਾ';

  @override
  String get helpAndFAQ => 'ਮਦਦ ਅਤੇ FAQ';

  @override
  String get contactSupport => 'ਸਹਾਇਤਾ ਨਾਲ ਸੰਪਰਕ ਕਰੋ';

  @override
  String get sendFeedback => 'ਫੀਡਬੈਕ ਭੇਜੋ';

  @override
  String get signOut => 'ਸਾਈਨ ਆਉਟ';

  @override
  String get editProfile => 'ਪ੍ਰੋਫਾਈਲ ਸੰਪਾਦਿਤ ਕਰੋ';

  @override
  String get profileEditingFeatureComingSoon =>
      'ਪ੍ਰੋਫਾਈਲ ਸੰਪਾਦਨ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'ਪਾਸਵਰਡ ਬਦਲੋ';

  @override
  String get passwordChangeFeatureComingSoon =>
      'ਪਾਸਵਰਡ ਬਦਲਣ ਦੀ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get dataSharingConsent => 'ਡੇਟਾ ਸਾਂਝਾ ਕਰਨ ਦੀ ਸਹਿਮਤੀ';

  @override
  String get dataSharingConsentText =>
      'ਡੇਟਾ ਸਾਂਝਾ ਕਰਨ ਨੂੰ ਸਮਰਥਨ ਦੇ ਕੇ, ਤੁਸੀਂ ਮਨੋਭ੍ਰੰਸ਼ ਖੋਜ ਕੇਂਦਰਾਂ ਨਾਲ ਅਗਿਆਤ ਸਿਹਤ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨ ਦੀ ਸਹਿਮਤੀ ਦਿੰਦੇ ਹੋ। ਇਹ ਮਨੋਭ੍ਰੰਸ਼ ਰੋਕਥਾਮ ਦੀ ਵਿਗਿਆਨਕ ਸਮਝ ਵਿੱਚ ਤਰੱਕੀ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ। ਤੁਹਾਡੀ ਨਿੱਜੀ ਜਾਣਕਾਰੀ ਕਦੇ ਵੀ ਸਾਂਝੀ ਨਹੀਂ ਕੀਤੀ ਜਾਵੇਗੀ।';

  @override
  String get iUnderstand => 'ਮੈਂ ਸਮਝਦਾ ਹਾਂ';

  @override
  String get researchParticipationTitle => 'ਖੋਜ ਵਿੱਚ ਭਾਗੀਦਾਰੀ';

  @override
  String get researchParticipationText =>
      'ਖੋਜ ਅਧਿਐਨਾਂ ਵਿੱਚ ਭਾਗ ਲੈ ਕੇ, ਤੁਸੀਂ ਮਨੋਭ੍ਰੰਸ਼ ਰੋਕਥਾਮ ਖੋਜ ਵਿੱਚ ਤਰੱਕੀ ਵਿੱਚ ਮਦਦ ਕਰਦੇ ਹੋ। ਤੁਸੀਂ ਕਿਸੇ ਵੀ ਸਮੇਂ ਕਿਸੇ ਵੀ ਅਧਿਐਨ ਤੋਂ ਬਾਹਰ ਨਿਕਲ ਸਕਦੇ ਹੋ, ਅਤੇ ਤੁਹਾਡੀ ਭਾਗੀਦਾਰੀ ਪੂਰੀ ਤਰ੍ਹਾਂ ਰਾਜ਼ੀ ਹੈ।';

  @override
  String get iAgree => 'ਮੈਂ ਸਹਿਮਤ ਹਾਂ';

  @override
  String get privacyPolicyTitle => 'ਗੁਪਤਤਾ ਨੀਤੀ';

  @override
  String get privacyPolicyText =>
      'ਗੁਪਤਤਾ ਨੀਤੀ ਦਾ ਸਮਗਰੀ ਇੱਥੇ ਹੋਵੇਗਾ। ਇਸ ਵਿੱਚ ਇਹ ਵੀ ਸ਼ਾਮਲ ਹੋਵੇਗਾ ਕਿ ਅਸੀਂ ਤੁਹਾਡੇ ਨਿੱਜੀ ਡੇਟਾ ਨੂੰ ਕਿਵੇਂ ਇਕੱਠਾ ਕਰਦੇ, ਵਰਤਦੇ ਅਤੇ ਸੁਰੱਖਿਅਤ ਰੱਖਦੇ ਹਾਂ, UK GDPR ਨਿਯਮਾਂ ਦੇ ਅਨੁਸਾਰ।';

  @override
  String get close => 'ਬੰਦ ਕਰੋ';

  @override
  String get termsOfServiceTitle => 'ਸੇਵਾ ਦੀਆਂ ਸ਼ਰਤਾਂ';

  @override
  String get termsOfServiceText =>
      'ਸੇਵਾ ਦੀਆਂ ਸ਼ਰਤਾਂ ਦਾ ਸਮਗਰੀ ਇੱਥੇ ਹੋਵੇਗਾ। ਇਸ ਵਿੱਚ RememberMe ਐਪ ਦੀ ਵਰਤੋਂ ਲਈ ਸ਼ਰਤਾਂ ਅਤੇ ਸ਼ਰਤਾਂ ਸ਼ਾਮਲ ਹੋਣਗੀਆਂ।';

  @override
  String get currentResearchStudiesTitle => 'ਮੌਜੂਦਾ ਖੋਜ ਅਧਿਐਨ';

  @override
  String get researchStudiesFeatureComingSoon =>
      'ਖੋਜ ਅਧਿਐਨ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get reportABugTitle => 'ਬੱਗ ਰਿਪੋਰਟ ਕਰੋ';

  @override
  String get bugReportingFeatureComingSoon =>
      'ਬੱਗ ਰਿਪੋਰਟਿੰਗ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get helpAndFAQTitle => 'ਮਦਦ ਅਤੇ FAQ';

  @override
  String get helpSectionComingSoon => 'ਮਦਦ ਸੈਕਸ਼ਨ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get contactSupportTitle => 'ਸਹਾਇਤਾ ਨਾਲ ਸੰਪਰਕ ਕਰੋ';

  @override
  String get supportContactFeatureComingSoon =>
      'ਸਹਾਇਤਾ ਸੰਪਰਕ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get sendFeedbackTitle => 'ਫੀਡਬੈਕ ਭੇਜੋ';

  @override
  String get feedbackFeatureComingSoon => 'ਫੀਡਬੈਕ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get signOutTitle => 'ਸਾਈਨ ਆਉਟ';

  @override
  String get areYouSureYouWantToSignOut =>
      'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਸਾਈਨ ਆਉਟ ਕਰਨਾ ਚਾਹੁੰਦੇ ਹੋ?';

  @override
  String get signedOutSuccessfully => 'ਸਫਲਤਾਪੂਰਵਕ ਸਾਈਨ ਆਉਟ';

  @override
  String get overview => 'ਅਵਲੋਕਨ';

  @override
  String get domains => 'ਡੋਮੇਨ';

  @override
  String get developedInPartnershipWithNHS => 'NHS ਨਾਲ ਸਾਂਝੇਦਾਰੀ ਵਿੱਚ ਵਿਕਸਿਤ';

  @override
  String get healthDomains => 'ਸਿਹਤ ਡੋਮੇਨ';

  @override
  String get healthDescription =>
      'ਵਜ਼ਨ ਟ੍ਰੈਕਿੰਗ, NHS ਸਿਹਤ ਜਾਂਚ ਯਾਦ ਦਿਵਾਉਣ, ਅਤੇ ਸਿਹਤ ਨਿਗਰਾਨੀ';

  @override
  String get socialEngagement => 'ਸਮਾਜਿਕ ਸ਼ਮੂਲੀਅਤ';

  @override
  String get socialEngagementDescription =>
      'ਕਮਿਊਨਿਟੀ ਈਵੈਂਟ, ਫੋਰਮ, ਅਤੇ ਸਮਾਜਿਕ ਗਤੀਵਿਧੀਆਂ';

  @override
  String get physicalActivity => 'ਸਰੀਰਕ ਗਤੀਵਿਧੀ';

  @override
  String get physicalActivityDescription =>
      'ਕਦਮ ਟ੍ਰੈਕਿੰਗ, ਕਸਰਤ ਟੀਚੇ, ਅਤੇ ਗਤੀਵਿਧੀ ਨਿਗਰਾਨੀ';

  @override
  String get goalAchievedToday => 'ਅੱਜ ਟੀਚਾ ਪ੍ਰਾਪਤ';

  @override
  String get cognitiveTraining => 'ਗਿਆਨਾਤਮਕ ਸਿਖਲਾਈ';

  @override
  String get cognitiveTrainingDescription =>
      'ਯਾਦਦਾਸ਼ਤ ਐਕਸਰਸਾਈਜ਼, ਯਾਦ ਥੈਰੇਪੀ, ਅਤੇ ਦਿਮਾਗ ਸਿਖਲਾਈ';

  @override
  String get exerciseCompletedYesterday => 'ਕੱਲ ਐਕਸਰਸਾਈਜ਼ ਪੂਰੀ';

  @override
  String get healthyDiet => 'ਸਿਹਤਮੰਦ ਖੁਰਾਕ';

  @override
  String get healthyDietDescription =>
      'ਪੋਸ਼ਣ ਸੁਝਾਅ, ਭੋਜਨ ਟ੍ਰੈਕਿੰਗ, ਅਤੇ ਸਿਹਤਮੰਦ ਖਾਣ ਦੀ ਗਾਈਡ';

  @override
  String get reminders => 'ਯਾਦ ਦਿਵਾਉਣ';

  @override
  String get viewAll => 'ਸਭ ਦੇਖੋ';

  @override
  String get healthSurveyDue => 'ਸਿਹਤ ਸਰਵੇ ਬਾਕੀ';

  @override
  String get healthSurveyDueDescription =>
      'ਆਪਣੀ ਸਿਹਤ ਮੁਲਾਂਕਣ ਪੂਰਾ ਕਰੋ ਤਾਂ ਜੋ ਤੁਸੀਂ ਆਪਣੀ ਤਰੱਕੀ ਨੂੰ ਟ੍ਰੈਕ ਕਰ ਸਕੋ';

  @override
  String get takeSurvey => 'ਸਰਵੇ ਭਰੋ';

  @override
  String get learnMore => 'ਹੋਰ ਸਿੱਖੋ';

  @override
  String get recentActivity => 'ਹਾਲੀਆ ਗਤੀਵਿਧੀ';

  @override
  String get startTrackingYourActivities =>
      'ਆਪਣੀਆਂ ਗਤੀਵਿਧੀਆਂ ਨੂੰ ਟ੍ਰੈਕ ਕਰਨਾ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get healthTipOfTheDay => 'ਦਿਨ ਦੀ ਸਿਹਤ ਸਲਾਹ';

  @override
  String get stayHydrated => 'ਹਾਈਡ੍ਰੇਟਿਡ ਰਹੋ';

  @override
  String get logActivity => 'ਲੌਗ ਕਰੋ';

  @override
  String get community => 'ਕਮਿਊਨਿਟੀ';

  @override
  String get back => 'ਵਾਪਸ';

  @override
  String get next => 'ਅਗਲਾ';

  @override
  String get getStarted => 'ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get welcomeToRememberMe => 'RememberMe ਵਿੱਚ ਸਵਾਗਤ ਹੈ';

  @override
  String get nhsPartnership => 'NHS ਸਾਂਝੇਦਾਰੀ';

  @override
  String get supportingYourBrainHealth => 'ਤੁਹਾਡੇ ਦਿਮਾਗ ਦੀ ਸਿਹਤ ਦਾ ਸਮਰਥਨ';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'ਆਪਣੇ ਦਿਮਾਗ ਨੂੰ ਸਰਗਰਮ ਰੱਖਣ ਲਈ ਰੋਜ਼ਾਨਾ ਸੈਰ ਅਤੇ ਕਸਰਤ';

  @override
  String get healthyNutrition => 'ਸਿਹਤਮੰਦ ਪੋਸ਼ਣ';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'ਦਿਮਾਗ ਲਈ ਸਿਹਤਮੰਦ ਭੋਜਨ ਅਤੇ ਹਾਈਡ੍ਰੇਸ਼ਨ ਯਾਦ ਦਿਵਾਉਣ';

  @override
  String get socialConnection => 'ਸਮਾਜਿਕ ਜੁੜਾਅ';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'ਕਮਿਊਨਿਟੀ ਅਤੇ ਦੋਸਤਾਂ ਨਾਲ ਜੁੜੇ ਰਹੋ';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'ਯਾਦਦਾਸ਼ਤ ਐਕਸਰਸਾਈਜ਼ ਅਤੇ ਯਾਦ ਥੈਰੇਪੀ';

  @override
  String get yourPersonalDashboard => 'ਤੁਹਾਡਾ ਨਿੱਜੀ ਡੈਸ਼ਬੋਰਡ';

  @override
  String get social => 'ਸਮਾਜਿਕ';

  @override
  String get fitness => 'ਫਿਟਨੈਸ';

  @override
  String get cognitive => 'ਗਿਆਨਾਤਮਕ';

  @override
  String get nutrition => 'ਪੋਸ਼ਣ';

  @override
  String get yourPrivacyMatters => 'ਤੁਹਾਡੀ ਪਰਾਈਵੇਸੀ ਮਹੱਤਵਪੂਰਨ ਹੈ';

  @override
  String get secureDataStorage => 'ਸੁਰੱਖਿਤ ਡੇਟਾ ਸਟੋਰੇਜ';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'ਤੁਹਾਡੀ ਜਾਣਕਾਰੀ ਐਨਕ੍ਰਿਪਟ ਹੈ ਅਤੇ ਸੁਰੱਖਿਤ ਤਰੀਕੇ ਨਾਲ ਸਟੋਰ ਹੈ';

  @override
  String get optInDataSharing => 'ਵਿਕਲਪਿਕ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨਾ';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'ਚੁਣੋ ਕਿ ਖੋਜ ਸਾਥੀਆਂ ਨਾਲ ਡੇਟਾ ਸਾਂਝਾ ਕਰਨਾ ਹੈ ਜਾਂ ਨਹੀਂ';

  @override
  String get transparentPolicies => 'ਪਾਰਦਰਸ਼ੀ ਨੀਤੀਆਂ';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'ਸਪਸ਼ਟ ਪਰਾਈਵੇਸੀ ਨੀਤੀਆਂ ਅਤੇ ਡੇਟਾ ਵਰਤੋਂ ਦੀ ਜਾਣਕਾਰੀ';

  @override
  String get dataControl => 'ਡੇਟਾ ਕੰਟਰੋਲ';

  @override
  String get deleteYourDataAtAnyTime => 'ਕਿਸੇ ਵੀ ਸਮੇਂ ਆਪਣਾ ਡੇਟਾ ਮਿਟਾਓ';

  @override
  String get brainHealthyEating => 'ਦਿਮਾਗ ਲਈ ਸਿਹਤਮੰਦ ਖਾਣਾ';

  @override
  String get nutritionTips => 'ਪੋਸ਼ਣ ਸਲਾਹ';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'ਦਿਮਾਗ ਦੀ ਸਿਹਤ ਦਾ ਸਮਰਥਨ ਕਰਨ ਅਤੇ ਡਿਮੈਂਸ਼ੀਆ ਦੇ ਖ਼ਤਰੇ ਨੂੰ ਘਟਾਉਣ ਲਈ ਸਬੂਤ-ਅਧਾਰਿਤ ਖੁਰਾਕ ਸਿਫਾਰਸ਼ਾਂ';

  @override
  String get dietReflection => 'ਖੁਰਾਕ ਪ੍ਰਤੀਬਿੰਬ';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'ਆਪਣੇ ਭੋਜਨ ਲੌਗ ਕਰੋ ਅਤੇ ਆਪਣੇ ਪੋਸ਼ਣ ਚੋਣਾਂ ਬਾਰੇ ਨਿੱਜੀ ਫੀਡਬੈਕ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get hydrationTracker => 'ਹਾਈਡ੍ਰੇਸ਼ਨ ਟ੍ਰੈਕਰ';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'ਆਪਣੇ ਰੋਜ਼ਾਨਾ ਪਾਣੀ ਦੇ ਸੇਵਨ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ ਅਤੇ ਹਾਈਡ੍ਰੇਟਿਡ ਰਹਿਣ ਲਈ ਯਾਦ ਦਿਵਾਉਣ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get leafyGreens => 'ਪੱਤੇਦਾਰ ਹਰੇ ਸਬਜ਼ੀਆਂ';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'ਪਾਲਕ, ਕੇਲ ਅਤੇ ਹੋਰ ਹਰੇ ਸਬਜ਼ੀਆਂ ਫੋਲੇਟ ਅਤੇ ਵਿਟਾਮਿਨ K ਵਿੱਚ ਅਮੀਰ ਹਨ';

  @override
  String get berries => 'ਬੇਰੀਆਂ';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'ਬਲੂਬੇਰੀਆਂ, ਸਟ੍ਰਾਬੇਰੀਆਂ ਅਤੇ ਹੋਰ ਬੇਰੀਆਂ ਵਿੱਚ ਐਂਟੀਆਕਸੀਡੈਂਟਸ ਹੁੰਦੇ ਹਨ';

  @override
  String get wholeGrains => 'ਪੂਰੇ ਅਨਾਜ';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'ਭੂਰਾ ਚੌਲ, ਕੀਨੋਆ ਅਤੇ ਜੌਂ ਟਿਕਾਊ ਊਰਜਾ ਅਤੇ ਫਾਈਬਰ ਪ੍ਰਦਾਨ ਕਰਦੇ ਹਨ';

  @override
  String get fish => 'ਮੱਛੀ';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'ਸਾਲਮਨ, ਸਾਰਡੀਨ ਅਤੇ ਹੋਰ ਚਰਬੀ ਵਾਲੀਆਂ ਮੱਛੀਆਂ ਓਮੇਗਾ-3 ਦੇ ਸ਼ਾਨਦਾਰ ਸਰੋਤ ਹਨ';

  @override
  String get mealTracking => 'ਭੋਜਨ ਟ੍ਰੈਕਿੰਗ';

  @override
  String get mealTrackingFeatureComingSoon => 'ਭੋਜਨ ਟ੍ਰੈਕਿੰਗ ਫੀਚਰ ਜਲਦੀ ਆ ਰਿਹਾ!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'ਹਾਈਡ੍ਰੇਸ਼ਨ ਟ੍ਰੈਕਿੰਗ ਫੀਚਰ ਜਲਦੀ ਆ ਰਿਹਾ!';

  @override
  String get stayActive => 'ਸਰਗਰਮ ਰਹੋ';

  @override
  String get activityTracker => 'ਗਤੀਵਿਧੀ ਟ੍ਰੈਕਰ';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'ਸਮਾਰਟ ਵਾਚ ਇੰਟੀਗ੍ਰੇਸ਼ਨ ਨਾਲ ਆਪਣੇ ਰੋਜ਼ਾਨਾ ਕਦਮ, ਸੈਰ ਅਤੇ ਸਰੀਰਕ ਗਤੀਵਿਧੀਆਂ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ';

  @override
  String get exerciseGoals => 'ਕਸਰਤ ਟੀਚੇ';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'ਆਪਣੇ ਹਫ਼ਤਾਵਾਰ ਕਸਰਤ ਟੀਚੇ ਸੈੱਟ ਕਰੋ ਅਤੇ ਟ੍ਰੈਕ ਕਰੋ, ਜਿਸ ਵਿੱਚ ਚਲਣਾ, ਤਾਕਤ ਸਿਖਲਾਈ ਅਤੇ ਕਾਰਡੀਓ ਸ਼ਾਮਲ ਹੈ';

  @override
  String get socialActivities => 'ਸਮਾਜਿਕ ਗਤੀਵਿਧੀਆਂ';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'ਗਰੁੱਪ ਸੈਰਾਂ, ਫਿਟਨੈਸ ਕਲਾਸਾਂ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ ਅਤੇ ਪ੍ਰੇਰਣਾ ਲਈ ਦੂਜਿਆਂ ਨਾਲ ਜੁੜੋ';

  @override
  String get fitnessTips => 'ਫਿਟਨੈਸ ਸੁਝਾਅ';

  @override
  String get mixCardioAndStrengthTraining => 'ਕਾਰਡੀਓ ਅਤੇ ਤਾਕਤ ਸਿਖਲਾਈ ਮਿਲਾਓ';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'ਐਰੋਬਿਕ ਕਸਰਤ ਅਤੇ ਮਾਸਪੇਸ਼ੀ ਮਜ਼ਬੂਤੀ ਗਤੀਵਿਧੀਆਂ ਦੋਵੇਂ ਸਮੁੱਚੀ ਸਿਹਤ ਲਈ ਮਹੱਤਵਪੂਰਨ ਹਨ।';

  @override
  String get stayConsistent => 'ਲਗਾਤਾਰ ਰਹੋ';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'ਨਿਯਮਿਤ ਗਤੀਵਿਧੀ ਤੀਬਰ ਪਰ ਅਨਿਯਮਿਤ ਕਸਰਤ ਸੈਸ਼ਨਾਂ ਨਾਲੋਂ ਵਧੇਰੇ ਲਾਭਦਾਇਕ ਹੈ।';

  @override
  String get listenToYourBody => 'ਆਪਣੇ ਸਰੀਰ ਦੀ ਸੁਣੋ';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'ਧੀਮੇ ਸ਼ੁਰੂ ਕਰੋ ਅਤੇ ਤੀਬਰਤਾ ਨੂੰ ਹੌਲੀ-ਹੌਲੀ ਵਧਾਓ। ਨਵੀਆਂ ਕਸਰਤਾਂ ਸ਼ੁਰੂ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਆਪਣੇ ਡਾਕਟਰ ਨਾਲ ਸਲਾਹ ਕਰੋ।';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'ਕਸਰਤ ਟੀਚਾ ਸੈੱਟਿੰਗ ਫੀਚਰ ਜਲਦੀ ਆ ਰਿਹਾ!';

  @override
  String get brainTraining => 'ਦਿਮਾਗ ਸਿਖਲਾਈ';

  @override
  String get brainExercises => 'ਦਿਮਾਗ ਦੇ ਐਕਸਰਸਾਈਜ਼';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'ਯਾਦਦਾਸ਼ਤ ਗੇਮਾਂ, ਧਿਆਨ ਸਿਖਲਾਈ, ਅਤੇ ਦਿਮਾਗੀ ਮੁਲਾਂਕਣ ਤਾਂ ਜੋ ਤੁਹਾਡਾ ਦਿਮਾਗ ਸਰਗਰਮ ਰਹੇ';

  @override
  String get reminiscenceTherapy => 'ਯਾਦ ਥੈਰੇਪੀ';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'ਆਪਣੀਆਂ ਯਾਦਾਂ, ਕਹਾਣੀਆਂ ਅਤੇ ਤਜਰਬੇ ਸਾਂਝੇ ਕਰੋ ਤਾਂ ਜੋ ਦਿਮਾਗੀ ਕਾਰਜ ਅਤੇ ਭਾਵਨਾਤਮਕ ਭਲਾਈ ਬਣੀ ਰਹੇ';

  @override
  String get cognitiveAssessment => 'ਦਿਮਾਗੀ ਮੁਲਾਂਕਣ';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'ਆਪਣੀ ਦਿਮਾਗੀ ਸਿਹਤ ਨੂੰ ਟ੍ਰੈਕ ਕਰਨ ਅਤੇ ਸੁਧਾਰ ਦੇ ਖੇਤਰਾਂ ਦੀ ਪਛਾਣ ਲਈ ਨਿਯਮਿਤ ਦਿਮਾਗੀ ਟੈਸਟਿੰਗ';

  @override
  String get brainHealthTips => 'ਦਿਮਾਗੀ ਸਿਹਤ ਸੁਝਾਅ';

  @override
  String get stayMentallyActive => 'ਦਿਮਾਗੀ ਤੌਰ \'ਤੇ ਸਰਗਰਮ ਰਹੋ';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'ਪੜ੍ਹੋ, ਪਜ਼ਲ ਕਰੋ, ਨਵੀਆਂ ਹੁਨਰ ਸਿੱਖੋ, ਜਾਂ ਉਹਨਾਂ ਸ਼ੌਕਾਂ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ ਜੋ ਤੁਹਾਡੇ ਦਿਮਾਗ ਨੂੰ ਚੁਣੌਤੀ ਦਿੰਦੇ ਹਨ।';

  @override
  String get shareYourMemories => 'ਆਪਣੀਆਂ ਯਾਦਾਂ ਸਾਂਝੀਆਂ ਕਰੋ';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'ਪਿਛਲੇ ਤਜਰਬਿਆਂ ਬਾਰੇ ਗੱਲ ਕਰਨਾ ਯਾਦਦਾਸ਼ਤ ਅਤੇ ਭਾਵਨਾਤਮਕ ਜੁੜਾਅ ਬਣਾਈ ਰੱਖਣ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ।';

  @override
  String get staySociallyConnected => 'ਸਮਾਜਿਕ ਤੌਰ \'ਤੇ ਜੁੜੇ ਰਹੋ';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'ਦਿਮਾਗੀ ਸਿਹਤ ਅਤੇ ਭਾਵਨਾਤਮਕ ਭਲਾਈ ਲਈ ਨਿਯਮਿਤ ਸਮਾਜਿਕ ਗੱਲਬਾਤ ਜ਼ਰੂਰੀ ਹੈ।';

  @override
  String get manageStress => 'ਤਣਾਅ ਦਾ ਪ੍ਰਬੰਧਨ ਕਰੋ';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'ਲੰਬੇ ਸਮੇਂ ਦਾ ਤਣਾਅ ਯਾਦਦਾਸ਼ਤ ਅਤੇ ਦਿਮਾਗੀ ਕਾਰਜ \'ਤੇ ਨਕਾਰਾਤਮਕ ਪ੍ਰਭਾਵ ਪਾ ਸਕਦਾ ਹੈ।';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'ਯਾਦ ਥੈਰੇਪੀ ਸੈਸ਼ਨ ਜਲਦੀ ਆ ਰਹੇ!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'ਦਿਮਾਗੀ ਮੁਲਾਂਕਣ ਟੂਲ ਜਲਦੀ ਆ ਰਹੇ!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'ਆਪਣੀ ਕਮਿਊਨਿਟੀ ਨਾਲ ਜੁੜੇ ਰਹੋ ਅਤੇ ਇਕੱਲਤਾ ਦਾ ਮੁਕਾਬਲਾ ਕਰੋ';

  @override
  String get socialFeatures => 'ਸਮਾਜਿਕ ਫੀਚਰ';

  @override
  String get communityEvents => 'ਕਮਿਊਨਿਟੀ ਇਵੈਂਟਸ';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'ਸਥਾਨਕ ਕਲਾਵਾਂ, ਹਸਤਕਲਾ, ਅਤੇ ਸਮਾਜਿਕ ਗਤੀਵਿਧੀਆਂ ਦੀ ਖੋਜ ਕਰੋ ਜੋ ਡਿਮੈਂਸ਼ੀਆ ਸਹਾਇਤਾ ਕੇਂਦਰਾਂ ਦੁਆਰਾ ਆਯੋਜਿਤ ਕੀਤੀਆਂ ਜਾਂਦੀਆਂ ਹਨ';

  @override
  String get communityForum => 'ਕਮਿਊਨਿਟੀ ਫੋਰਮ';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'ਦੂਜਿਆਂ ਨਾਲ ਜੁੜੋ, ਤਜਰਬੇ ਸਾਂਝੇ ਕਰੋ, ਅਤੇ ਕਮਿਊਨਿਟੀ ਤੋਂ ਸਹਾਇਤਾ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get dementiaEncyclopedia => 'ਡਿਮੈਂਸ਼ੀਆ ਐਨਸਾਈਕਲੋਪੀਡੀਆ';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'ਡਿਮੈਂਸ਼ੀਆ, ਰੋਕਥਾਮ ਰਣਨੀਤੀਆਂ ਬਾਰੇ ਜਾਣੋ, ਅਤੇ ਮਦਦਗਾਰ ਸਰੋਤ ਲੱਭੋ';

  @override
  String get socialConnectionTips => 'ਸਮਾਜਿਕ ਜੁੜਾਅ ਸੁਝਾਅ';

  @override
  String get joinLocalGroups => 'ਸਥਾਨਕ ਗਰੁੱਪਾਂ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'ਆਪਣੇ ਖੇਤਰ ਵਿੱਚ ਕਲਾਵਾਂ ਅਤੇ ਹਸਤਕਲਾ ਵਰਕਸ਼ਾਪ, ਚਲਣ ਵਾਲੇ ਗਰੁੱਪ, ਜਾਂ ਹੌਬੀ ਕਲੱਬ ਲੱਭੋ।';

  @override
  String get stayInTouch => 'ਜੁੜੇ ਰਹੋ';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'ਪਰਿਵਾਰ ਅਤੇ ਦੋਸਤਾਂ ਨਾਲ ਨਿਯਮਿਤ ਫੋਨ ਕਾਲ ਜਾਂ ਵੀਡੀਓ ਚੈਟ ਵੱਡਾ ਫਰਕ ਪਾ ਸਕਦੇ ਹਨ।';

  @override
  String get volunteer => 'ਵਾਲੰਟੀਅਰ';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'ਆਪਣੀ ਕਮਿਊਨਿਟੀ ਨੂੰ ਵਾਪਸ ਦੇਣਾ ਮਕਸਦ ਅਤੇ ਸਮਾਜਿਕ ਜੁੜਾਅ ਪ੍ਰਦਾਨ ਕਰ ਸਕਦਾ ਹੈ।';

  @override
  String get learnSomethingNew => 'ਕੁਝ ਨਵਾਂ ਸਿੱਖੋ';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'ਕਲਾਸਾਂ ਲੈਣਾ ਜਾਂ ਸਿੱਖਣ ਵਾਲੇ ਗਰੁੱਪਾਂ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਣਾ ਤੁਹਾਨੂੰ ਸਮਾਨ ਸੋਚ ਵਾਲੇ ਲੋਕਾਂ ਨੂੰ ਮਿਲਣ ਵਿੱਚ ਮਦਦ ਕਰ ਸਕਦਾ ਹੈ।';

  @override
  String get couldNotOpenNHSWebsite => 'NHS ਵੈਬਸਾਈਟ ਨਹੀਂ ਖੋਲ੍ਹੀ ਜਾ ਸਕੀ';

  @override
  String get couldNotOpenNHSBookingWebsite =>
      'NHS ਬੁਕਿੰਗ ਵੈਬਸਾਈਟ ਨਹੀਂ ਖੋਲ੍ਹੀ ਜਾ ਸਕੀ';

  @override
  String get healthCheckComplete => 'ਸਿਹਤ ਜਾਂਚ ਪੂਰੀ';

  @override
  String get healthCheckOverdue => 'ਸਿਹਤ ਜਾਂਚ ਓਵਰਡਿਊ';

  @override
  String get healthCheckDueSoon => 'ਸਿਹਤ ਜਾਂਚ ਜਲਦੀ';

  @override
  String get benefitsOfNHSHealthCheck => 'NHS ਸਿਹਤ ਜਾਂਚ ਦੇ ਫਾਇਦੇ';

  @override
  String get earlyDetection => 'ਜਲਦੀ ਪਤਾ ਲੱਗਣਾ';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'ਗੰਭੀਰ ਸਮੱਸਿਆਵਾਂ ਬਣਨ ਤੋਂ ਪਹਿਲਾਂ ਸਿਹਤ ਦੇ ਖ਼ਤਰਿਆਂ ਦੀ ਪਛਾਣ ਕਰਦਾ ਹੈ';

  @override
  String get dementiaPrevention => 'ਡਿਮੈਂਸ਼ੀਆ ਰੋਕਥਾਮ';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'ਲਾਈਫਸਟਾਈਲ ਸਲਾਹ ਦੁਆਰਾ ਡਿਮੈਂਸ਼ੀਆ ਵਿਕਸਿਤ ਕਰਨ ਦੇ ਖ਼ਤਰੇ ਨੂੰ ਘਟਾਉਣ ਵਿੱਚ ਮਦਦ ਕਰਦਾ ਹੈ';

  @override
  String get lifestyleAdvice => 'ਲਾਈਫਸਟਾਈਲ ਸਲਾਹ';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'ਖੁਰਾਕ, ਕਸਰਤ ਅਤੇ ਸਿਹਤਮੰਦ ਜੀਵਨ ਬਾਰੇ ਨਿੱਜੀ ਸਲਾਹ ਪ੍ਰਾਪਤ ਕਰੋ';

  @override
  String get freeService => 'ਮੁਫਤ ਸੇਵਾ';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'ਪੂਰੀ ਤਰ੍ਹਾਂ ਮੁਫਤ ਅਤੇ ਲਗਭਗ 20-30 ਮਿੰਟ ਲੱਗਦਾ ਹੈ';

  @override
  String get learnMoreAboutHealthChecks => 'ਸਿਹਤ ਜਾਂਚਾਂ ਬਾਰੇ ਹੋਰ ਜਾਣੋ';

  @override
  String get markAsNotCompleted => 'ਪੂਰਾ ਨਹੀਂ ਹੋਇਆ ਦੇ ਤੌਰ \'ਤੇ ਚਿੰਨ੍ਹਿਤ ਕਰੋ';

  @override
  String get bookYourHealthCheck => 'ਆਪਣੀ ਸਿਹਤ ਜਾਂਚ ਬੁਕ ਕਰੋ';

  @override
  String get currentWeight => 'ਮੌਜੂਦਾ ਵਜ਼ਨ';

  @override
  String get updated => 'ਅਪਡੇਟ';

  @override
  String get notRecorded => 'ਰਿਕਾਰਡ ਨਹੀਂ';

  @override
  String get addYourHeightToCalculateBMI => 'BMI ਦੀ ਗਣਨਾ ਲਈ ਆਪਣੀ ਉਚਾਈ ਜੋੜੋ';

  @override
  String get logNewWeight => 'ਨਵਾਂ ਵਜ਼ਨ ਲੌਗ ਕਰੋ';

  @override
  String get enterYourWeight => 'ਆਪਣਾ ਵਜ਼ਨ ਦਰਜ ਕਰੋ';

  @override
  String get pleaseEnterYourWeight => 'ਕਿਰਪਾ ਕਰਕੇ ਆਪਣਾ ਵਜ਼ਨ ਦਰਜ ਕਰੋ';

  @override
  String get pleaseEnterAValidNumber => 'ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਵੈਧ ਨੰਬਰ ਦਰਜ ਕਰੋ';

  @override
  String get weightHistory => 'ਵਜ਼ਨ ਇਤਿਹਾਸ';

  @override
  String get trackYourWeightChangesOverTime =>
      'ਸਮੇਂ ਦੇ ਨਾਲ ਆਪਣੇ ਵਜ਼ਨ ਦੇ ਬਦਲਾਅ ਨੂੰ ਟ੍ਰੈਕ ਕਰੋ';

  @override
  String get weightChartComingSoon => 'ਵਜ਼ਨ ਚਾਰਟ ਜਲਦੀ ਆ ਰਿਹਾ';

  @override
  String get bmiInformation => 'BMI ਜਾਣਕਾਰੀ';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'ਆਪਣੇ BMI ਦੀ ਗਣਨਾ ਲਈ ਆਪਣੀ ਉਚਾਈ ਅਤੇ ਵਜ਼ਨ ਜੋੜੋ';

  @override
  String get below18Point5 => '18.5 ਤੋਂ ਘੱਟ';

  @override
  String get bmiRange18Point5To24Point9 => '18.5 - 24.9';

  @override
  String get bmiRange25Point0To29Point9 => '25.0 - 29.9';

  @override
  String get bmiRange30Point0AndAbove => '30.0 ਅਤੇ ਉੱਪਰ';

  @override
  String get todaysActivity => 'ਅੱਜ ਦੀ ਗਤੀਵਿਧੀ';

  @override
  String get steps => 'ਕਦਮ';

  @override
  String get distance => 'ਦੂਰੀ';

  @override
  String get calories => 'ਕੈਲੋਰੀਆਂ';

  @override
  String get duration => 'ਮਿਆਦ';

  @override
  String get logWalk => 'ਵਾਕ ਲੌਗ ਕਰੋ';

  @override
  String get logExercise => 'ਵਰਕਆਉਟ ਲੌਗ ਕਰੋ';

  @override
  String get setGoals => 'ਲਕਸ਼ਯ ਸੈੱਟ ਕਰੋ';

  @override
  String get viewHistory => 'ਇਤਿਹਾਸ ਦੇਖੋ';

  @override
  String get weeklyProgress => 'ਹਫ਼ਤਾਵਾਰ ਤਰੱਕੀ';

  @override
  String get activityChartsComingSoon => 'ਗਤੀਵਿਧੀ ਚਾਰਟ ਜਲਦੀ ਆ ਰਹੇ ਹਨ!';

  @override
  String get goalSettingFeatureComingSoon =>
      'ਲਕਸ਼ਯ ਸੈੱਟਿੰਗ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get activityHistory => 'ਗਤੀਵਿਧੀ ਇਤਿਹਾਸ';

  @override
  String get activityHistoryFeatureComingSoon =>
      'ਗਤੀਵਿਧੀ ਇਤਿਹਾਸ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get dailyBrainTeaser => 'ਰੋਜ਼ਾਨਾ ਦਿਮਾਗੀ ਪਜ਼ਲ';

  @override
  String get aQuickPuzzleToStartYourDay =>
      'ਆਪਣਾ ਦਿਨ ਸ਼ੁਰੂ ਕਰਨ ਲਈ ਇੱਕ ਤੇਜ਼ ਪਜ਼ਲ';

  @override
  String get memoryMatchGame => 'ਮੈਮੋਰੀ ਮੈਚ ਗੇਮ';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'ਆਪਣੀ ਛੋਟੀ ਮੈਮੋਰੀ ਨੂੰ ਸੁਧਾਰਨ ਲਈ ਕਾਰਡਾਂ ਦੇ ਜੋੜੇ ਮੈਚ ਕਰੋ';

  @override
  String get wordAssociation => 'ਸ਼ਬਦ ਸੰਬੰਧ';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'ਸ਼ਬਦਾਂ ਨੂੰ ਜੋੜੋ ਅਤੇ ਆਪਣੇ ਸ਼ਬਦਾਵਲੀ ਨੂੰ ਵਧਾਓ';

  @override
  String get activities => 'ਗਤੀਵਿਧੀਆਂ';

  @override
  String get reminiscence => 'ਯਾਦ';

  @override
  String get continueButton => 'ਜਾਰੀ ਰੱਖੋ';

  @override
  String get start => 'ਸ਼ੁਰੂ';

  @override
  String get noPromptAvailable => 'ਕੋਈ ਪ੍ਰੋਮਪਟ ਉਪਲਬਧ ਨਹੀਂ';

  @override
  String get review => 'ਰਿਵਿਊ';

  @override
  String get trainingProgress => 'ਟ੍ਰੇਨਿੰਗ ਤਰੱਕੀ';

  @override
  String get activityProgress => 'ਗਤੀਵਿਧੀ ਤਰੱਕੀ';

  @override
  String get reminiscenceSessions => 'ਯਾਦ ਸੈਸ਼ਨ';

  @override
  String get untitledSession => 'ਬਿਨਾਂ ਸਿਰਲੇਖ ਸੈਸ਼ਨ';

  @override
  String get reminiscenceSession => 'ਯਾਦ ਸੈਸ਼ਨ';

  @override
  String get theMediterraneanDiet => 'ਮੈਡੀਟੇਰੀਅਨ ਡਾਇਟ';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'ਫਲ, ਸਬਜ਼ੀਆਂ, ਸਾਰੇ ਅਨਾਜ ਅਤੇ ਸਿਹਤਮੰਦ ਚਰਬੀ ਜਿਵੇਂ ਜੈਤੂਨ ਦਾ ਤੇਲ \'ਤੇ ਧਿਆਨ ਦਿਓ। ਇਸ ਡਾਇਟ ਨੂੰ ਡਿਮੈਂਸ਼ੀਆ ਦੇ ਖ਼ਤਰੇ ਨੂੰ ਘਟਾਉਣ ਨਾਲ ਜੋੜਿਆ ਗਿਆ ਹੈ';

  @override
  String get brainHealth => 'ਦਿਮਾਗੀ ਸਿਹਤ';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'ਰੋਜ਼ਾਨਾ 6-8 ਗਲਾਸ ਪਾਣੀ ਪੀਓ। ਸਹੀ ਹਾਈਡ੍ਰੇਸ਼ਨ ਦਿਮਾਗੀ ਕਾਰਜ ਅਤੇ ਸਮੁੱਚੀ ਸਿਹਤ ਲਈ ਜ਼ਰੂਰੀ ਹੈ';

  @override
  String get hydration => 'ਹਾਈਡ੍ਰੇਸ਼ਨ';

  @override
  String get omega3FattyAcids => 'ਓਮੇਗਾ-3 ਫੈਟੀ ਐਸਿਡ';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'ਆਪਣੀ ਡਾਇਟ ਵਿੱਚ ਸਾਲਮਨ, ਮੈਕਰਲ ਅਤੇ ਸਾਰਡੀਨ ਵਰਗੀਆਂ ਮੱਛੀਆਂ ਸ਼ਾਮਲ ਕਰੋ। ਓਮੇਗਾ-3 ਦਿਮਾਗੀ ਸਿਹਤ ਦਾ ਸਮਰਥਨ ਕਰਦੇ ਹਨ ਅਤੇ ਸੋਜ਼ ਘਟਾ ਸਕਦੇ ਹਨ';

  @override
  String get antioxidantRichFoods => 'ਐਂਟੀਆਕਸੀਡੈਂਟ ਭਰਪੂਰ ਭੋਜਨ';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'ਬੇਰੀਆਂ, ਗੂੜ੍ਹੇ ਪੱਤੇਦਾਰ ਸਬਜ਼ੇ ਅਤੇ ਰੰਗੀਨ ਸਬਜ਼ੇ ਖਾਓ। ਐਂਟੀਆਕਸੀਡੈਂਟ ਦਿਮਾਗੀ ਸੈੱਲਾਂ ਨੂੰ ਨੁਕਸਾਨ ਤੋਂ ਬਚਾਉਣ ਵਿੱਚ ਮਦਦ ਕਰਦੇ ਹਨ';

  @override
  String get general => 'ਆਮ';

  @override
  String get limitProcessedFoods => 'ਪ੍ਰੋਸੈਸਡ ਭੋਜਨ ਸੀਮਿਤ ਕਰੋ';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'ਪ੍ਰੋਸੈਸਡ ਮੀਟ, ਮਿੱਠੇ ਸਨੈਕਸ ਅਤੇ ਤਲੇ ਹੋਏ ਭੋਜਨ ਦੀ ਮਾਤਰਾ ਘਟਾਓ। ਇਹ ਸੋਜ਼ ਅਤੇ ਦਿਮਾਗੀ ਗਿਰਾਵਟ ਵਿੱਚ ਯੋਗਦਾਨ ਪਾ ਸਕਦੇ ਹਨ';

  @override
  String get vitaminDForBrainHealth => 'ਦਿਮਾਗੀ ਸਿਹਤ ਲਈ ਵਿਟਾਮਿਨ ਡੀ';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'ਧੁੱਪ, ਮਜ਼ਬੂਤ ਭੋਜਨ ਜਾਂ ਸਪਲੀਮੈਂਟਸ ਦੁਆਰਾ ਪਰਿਵਾਰਕ ਵਿਟਾਮਿਨ ਡੀ ਪ੍ਰਾਪਤ ਕਰੋ। ਵਿਟਾਮਿਨ ਡੀ ਦੀ ਕਮੀ ਦਿਮਾਗੀ ਮੁਸ਼ਕਲਾਂ ਨਾਲ ਜੁੜੀ ਹੋਈ ਹੈ';

  @override
  String get vitamins => 'ਵਿਟਾਮਿਨ';

  @override
  String get healthyEatingForBrainHealth => 'ਦਿਮਾਗੀ ਸਿਹਤ ਲਈ ਸਿਹਤਮੰਦ ਖਾਣਾ';

  @override
  String get allTips => 'ਸਾਰੇ ਸੁਝਾਅ';

  @override
  String get tipBookmarked => 'ਸੁਝਾਅ ਬੁੱਕਮਾਰਕ ਕੀਤਾ ਗਿਆ!';

  @override
  String get bookmarkRemoved => 'ਬੁੱਕਮਾਰਕ ਹਟਾਇਆ ਗਿਆ';

  @override
  String get generalInformation => 'ਆਮ ਜਾਣਕਾਰੀ';

  @override
  String get symptoms => 'ਲੱਛਣ';

  @override
  String get riskFactors => 'ਖ਼ਤਰੇ ਦੇ ਕਾਰਕ';

  @override
  String get types => 'ਕਿਸਮਾਂ';

  @override
  String get diagnosis => 'ਨਿਦਾਨ';

  @override
  String get treatment => 'ਇਲਾਜ';

  @override
  String get prevention => 'ਰੋਕਥਾਮ';

  @override
  String get caregiving => 'ਦੇਖਭਾਲ';

  @override
  String get entryBookmarked => 'ਐਂਟਰੀ ਬੁੱਕਮਾਰਕ ਕੀਤੀ ਗਈ!';

  @override
  String get wellbeing => 'ਭਲਾਈ';

  @override
  String get createNewPost => 'ਨਵਾਂ ਪੋਸਟ ਬਣਾਓ';

  @override
  String get postCreationFeatureComingSoon =>
      'ਪੋਸਟ ਬਣਾਉਣ ਦੀ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get postDetails => 'ਪੋਸਟ ਵੇਰਵੇ';

  @override
  String get reply => 'ਜਵਾਬ ਦਿਓ';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'ਸਥਾਨਕ ਇਵੈਂਟਸ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ ਜੋ ਦਿਮਾਗੀ ਸਿਹਤ ਅਤੇ ਸਮਾਜਿਕ ਸ਼ਮੂਲੀਅਤ ਦਾ ਸਮਰਥਨ ਕਰਨ ਲਈ ਤਿਆਰ ਕੀਤੇ ਗਏ ਹਨ';

  @override
  String get allEvents => 'ਸਾਰੇ ਇਵੈਂਟਸ';

  @override
  String get arts => 'ਕਲਾਵਾਂ';

  @override
  String get music => 'ਸੰਗੀਤ';

  @override
  String get education => 'ਸਿੱਖਿਆ';

  @override
  String get fullyBooked => 'ਪੂਰੀ ਤਰ੍ਹਾਂ ਬੁੱਕ';

  @override
  String get register => 'ਰਜਿਸਟਰ ਕਰੋ';

  @override
  String get joinEvent => 'ਇਵੈਂਟ ਵਿੱਚ ਸ਼ਾਮਲ ਹੋਵੋ';

  @override
  String get location => 'ਟਿਕਾਣਾ';

  @override
  String get date => 'ਤਾਰੀਖ';

  @override
  String get time => 'ਸਮਾਂ';

  @override
  String get participants => 'ਭਾਗੀਦਾਰ';

  @override
  String get organizer => 'ਆਯੋਜਕ';

  @override
  String get contact => 'ਸੰਪਰਕ';

  @override
  String get registerForEvent => 'ਇਵੈਂਟ ਲਈ ਰਜਿਸਟਰ ਕਰੋ';

  @override
  String get surveys => 'ਸਰਵੇਖਣ';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'ਨਿਯਮਿਤ ਮੁਲਾਂਕਣ ਤੁਹਾਡੀ ਤਰੱਕੀ ਨੂੰ ਟਰੈਕ ਕਰਨ ਅਤੇ ਸੁਧਾਰ ਦੇ ਖੇਤਰਾਂ ਦੀ ਪਛਾਣ ਕਰਨ ਵਿੱਚ ਮਦਦ ਕਰਦੇ ਹਨ';

  @override
  String get allSurveys => 'ਸਾਰੇ ਸਰਵੇਖਣ';

  @override
  String get comprehensive => 'ਵਿਆਪਕ';

  @override
  String get lifestyle => 'ਜੀਵਨ ਸ਼ੈਲੀ';

  @override
  String get reviewResults => 'ਨਤੀਜੇ ਦੇਖੋ';

  @override
  String get startSurvey => 'ਸਰਵੇਖਣ ਸ਼ੁਰੂ ਕਰੋ';

  @override
  String get previous => 'ਪਿਛਲਾ';

  @override
  String get complete => 'ਪੂਰਾ';

  @override
  String get yes => 'ਹਾਂ';

  @override
  String get no => 'ਨਹੀਂ';

  @override
  String get unsupportedQuestionType => 'ਅਸਹਾਇਕ ਪ੍ਰਸ਼ਨ ਪ੍ਰਕਾਰ';

  @override
  String get rewards => 'ਇਨਾਮ';

  @override
  String get availablePoints => 'ਉਪਲਬਧ ਪੁਆਇੰਟ';

  @override
  String get totalEarned => 'ਕੁੱਲ ਕਮਾਏ';

  @override
  String get availableRewards => 'ਉਪਲਬਧ ਇਨਾਮ';

  @override
  String get partner => 'ਭਾਗੀਦਾਰ';

  @override
  String get redeem => 'ਵਾਪਸ ਲਓ';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'ਇਸ ਇਨਾਮ ਨੂੰ ਵਾਪਸ ਲੈਣ ਲਈ ਕਾਫ਼ੀ ਪੁਆਇੰਟ ਨਹੀਂ';

  @override
  String get redeemReward => 'ਇਨਾਮ ਵਾਪਸ ਲਓ';

  @override
  String get dailyDietReflection => 'ਰੋਜ਼ਾਨਾ ਡਾਇਟ ਪ੍ਰਤੀਬਿੰਬ';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'ਆਪਣੇ ਖਾਣ ਦੀਆਂ ਆਦਤਾਂ \'ਤੇ ਪ੍ਰਤੀਬਿੰਬ ਕਰੋ ਅਤੇ ਸਿਹਤਮੰਦ ਡਾਇਟ ਵੱਲ ਆਪਣੀ ਤਰੱਕੀ ਨੂੰ ਟਰੈਕ ਕਰੋ';

  @override
  String get saveReflection => 'ਪ੍ਰਤੀਬਿੰਬ ਸੇਵ ਕਰੋ';

  @override
  String get reflection => 'ਪ੍ਰਤੀਬਿੰਬ';

  @override
  String get areasForImprovement => 'ਸੁਧਾਰ ਲਈ ਖੇਤਰ';

  @override
  String get recentReflections => 'ਹਾਲੀਆ ਪ੍ਰਤੀਬਿੰਬ';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'ਜਮ੍ਹਾ ਕਰਨ ਤੋਂ ਪਹਿਲਾਂ ਕਿਰਪਾ ਕਰਕੇ ਇੱਕ ਪ੍ਰਤੀਬਿੰਬ ਲਿਖੋ';

  @override
  String get excellent => 'ਬਹੁਤ ਵਧੀਆ';

  @override
  String get good => 'ਚੰਗਾ';

  @override
  String get average => 'ਔਸਤ';

  @override
  String get poor => 'ਘੱਟ';

  @override
  String get veryPoor => 'ਬਹੁਤ ਘੱਟ';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'ਛੋਟੇ ਸੁਧਾਰਾਂ ਲਈ ਥਾਂ ਦੇ ਨਾਲ ਚੰਗੇ ਚੋਣ';

  @override
  String get moreFruitsAndVegetables => 'ਹੋਰ ਫਲ ਅਤੇ ਸਬਜ਼ੀਆਂ';

  @override
  String get reduceProcessedFoods => 'ਪ੍ਰੋਸੈਸਡ ਭੋਜਨ ਘਟਾਓ';

  @override
  String get increaseWaterIntake => 'ਪਾਣੀ ਦੀ ਮਾਤਰਾ ਵਧਾਓ';

  @override
  String get moreWholeGrains => 'ਹੋਰ ਸਾਰੇ ਅਨਾਜ';

  @override
  String get reduceSugarIntake => 'ਚੀਨੀ ਦੀ ਮਾਤਰਾ ਘਟਾਓ';

  @override
  String get moreLeanProteins => 'ਹੋਰ ਲੀਨ ਪ੍ਰੋਟੀਨ';

  @override
  String get betterPortionControl => 'ਬਿਹਤਰ ਪੋਰਸ਼ਨ ਕੰਟਰੋਲ';

  @override
  String get regularMealTiming => 'ਨਿਯਮਿਤ ਭੋਜਨ ਦਾ ਸਮਾਂ';

  @override
  String get languageChanged => 'ਭਾਸ਼ਾ ਸਫਲਤਾਪੂਰਵਕ ਬਦਲੀ ਗਈ';

  @override
  String get english => 'English';

  @override
  String get polish => 'Polski';

  @override
  String get romanian => 'Română';

  @override
  String get punjabi => 'ਪੰਜਾਬੀ';

  @override
  String get urdu => 'اردو';

  @override
  String get chinese => '中文';

  @override
  String get bengali => 'বাংলা';

  @override
  String get areYouSureYouWantToRedeem =>
      'ਕੀ ਤੁਸੀਂ ਯਕੀਨਨ ਇਨਾਮ ਵਾਪਸ ਲੈਣਾ ਚਾਹੁੰਦੇ ਹੋ';

  @override
  String get forText => 'ਲਈ';

  @override
  String get points => 'ਪੁਆਇੰਟ';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'ਤੁਹਾਡੀ ਤਰੱਕੀ';

  @override
  String get survey => 'ਸਰਵੇਖਣ';

  @override
  String get nhsHealthCheckCompleted => 'NHS ਸਿਹਤ ਜਾਂਚ ਪੂਰੀ ਹੋਈ';

  @override
  String get nhsHealthCheckRecommended => 'NHS ਸਿਹਤ ਜਾਂਚ ਸਿਫਾਰਸ਼ੀ';

  @override
  String get todaysStats => 'ਅੱਜ ਦੇ ਅੰਕੜੇ';

  @override
  String get water => 'ਪਾਣੀ';

  @override
  String get sleep => 'ਨੀਂਦ';

  @override
  String get glasses => 'ਗਲਾਸ';

  @override
  String get hours => 'ਘੰਟੇ';

  @override
  String get ofText => 'ਦੇ';

  @override
  String get urgent => 'ਜ਼ਰੂਰੀ';

  @override
  String get view => 'ਦੇਖੋ';

  @override
  String get activityStartedMock => 'ਗਤੀਵਿਧੀ ਸ਼ੁਰੂ! (Mock)';

  @override
  String get reminiscenceSessionStartedMock => 'ਯਾਦ ਸੈਸ਼ਨ ਸ਼ੁਰੂ! (Mock)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'ਸਿਹਤ ਜਾਂਚ ਪੂਰੀ ਹੋਈ ਦੇ ਤੌਰ \'ਤੇ ਚਿੰਨ੍ਹਿਤ!';

  @override
  String get weightLogged => 'ਵਜ਼ਨ ਰਿਕਾਰਡ ਕੀਤਾ';

  @override
  String get reflectionSavedSuccessfully => 'ਪ੍ਰਤੀਬਿੰਬ ਸਫਲਤਾਪੂਰਵਕ ਸੇਵ ਕੀਤਾ!';

  @override
  String get surveyCompletedSuccessfully => 'ਸਰਵੇਖਣ ਸਫਲਤਾਪੂਰਵਕ ਪੂਰਾ!';

  @override
  String get successfullyRedeemed => 'ਸਫਲਤਾਪੂਰਵਕ ਵਾਪਸ ਲਿਆ';

  @override
  String get notesOptional => 'ਨੋਟਸ (ਵਿਕਲਪਿਕ)';

  @override
  String get writeYourThoughtsHere => 'ਆਪਣੇ ਵਿਚਾਰ ਇੱਥੇ ਲਿਖੋ...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'ਤੁਸੀਂ ਅੱਜ ਆਪਣੀ ਖੁਰਾਕ ਦੀ ਗੁਣਵੱਤਾ ਦਾ ਮੁਲਾਂਕਣ ਕਿਵੇਂ ਕਰੋਗੇ?';

  @override
  String get whatDidYouEatToday =>
      'ਤੁਸੀਂ ਅੱਜ ਕੀ ਖਾਧਾ? ਤੁਹਾਨੂੰ ਆਪਣੇ ਭੋਜਨ ਦੇ ਚੋਣਾਂ ਬਾਰੇ ਕਿਵੇਂ ਲੱਗਿਆ? ਕੀ ਚੰਗਾ ਗਿਆ ਅਤੇ ਕੀ ਸੁਧਾਰਿਆ ਜਾ ਸਕਦਾ ਹੈ?';

  @override
  String get visualizeYourWeightTrends =>
      'ਇੰਟਰਐਕਟਿਵ ਚਾਰਟਾਂ ਦੇ ਨਾਲ ਸਮੇਂ ਦੇ ਨਾਲ ਆਪਣੇ ਵਜ਼ਨ ਦੇ ਰੁਝਾਨਾਂ ਅਤੇ ਤਰੱਕੀ ਨੂੰ ਵਿਜ਼ੂਅਲਾਈਜ਼ ਕਰੋ।';

  @override
  String get question => 'ਸਵਾਲ';

  @override
  String get ofQuestions => 'ਦੇ';

  @override
  String get surveyResultsFeatureComingSoon =>
      'ਸਰਵੇਖਣ ਨਤੀਜੇ ਦੀ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get whatIsAnNHSHealthCheck => 'NHS ਸਿਹਤ ਜਾਂਚ ਕੀ ਹੈ?';

  @override
  String get rememberMeAndYourHealth => 'RememberMe ਅਤੇ ਤੁਹਾਡੀ ਸਿਹਤ';

  @override
  String get regularHealthChecksAreImportant =>
      'ਨਿਯਮਿਤ ਸਿਹਤ ਜਾਂਚਾਂ ਦਿਮਾਗੀ ਸਿਹਤ ਬਣਾਈ ਰੱਖਣ ਅਤੇ ਡਿਮੈਂਸ਼ੀਆ ਦੇ ਖ਼ਤਰੇ ਨੂੰ ਘਟਾਉਣ ਦਾ ਇੱਕ ਮਹੱਤਵਪੂਰਨ ਹਿੱਸਾ ਹਨ। NHS ਸਿਹਤ ਜਾਂਚ ਮੁੱਲਵਾਨ ਸੂਝ ਪ੍ਰਦਾਨ ਕਰਦੀ ਹੈ ਜੋ ਤੁਹਾਡੀ RememberMe ਯਾਤਰਾ ਨੂੰ ਪੂਰਕ ਬਣਾਉਂਦੀ ਹੈ।';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'ਸਮੇਂ ਦੇ ਨਾਲ ਆਪਣੇ ਡਿਮੈਂਸ਼ੀਆ ਖ਼ਤਰੇ ਦੇ ਕਾਰਕਾਂ ਦੀ ਨਿਗਰਾਨੀ ਕਰਨ ਲਈ RememberMe ਵਿੱਚ ਆਪਣੇ ਸਿਹਤ ਜਾਂਚ ਦੇ ਨਤੀਜਿਆਂ ਦਾ ਰਿਕਾਰਡ ਰੱਖੋ।';

  @override
  String get iveAlreadyHadMyHealthCheck =>
      'ਮੈਂ ਪਹਿਲਾਂ ਹੀ ਆਪਣੀ ਸਿਹਤ ਜਾਂਚ ਕਰਵਾ ਲਈ ਹੈ';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'ਕੌਫੀ ਵਾਊਚਰ - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Cambridge Coffee House ਵਿੱਚ ਮੁਫ਼ਤ ਕੌਫੀ ਦਾ ਆਨੰਦ ਲਓ, ਇੱਕ ਸਥਾਨਕ ਸੁਤੰਤਰ ਕੈਫੇ।';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'ਕਿਤਾਬਾਂ ਦੀ ਦੁਕਾਨ ਛੂਟ - Heffers';

  @override
  String get heffersBookshop => 'Heffers ਕਿਤਾਬਾਂ ਦੀ ਦੁਕਾਨ';

  @override
  String get solveThePuzzle => 'ਪਜ਼ਲ ਹੱਲ ਕਰੋ।';

  @override
  String get submitYourAnswer => 'ਆਪਣਾ ਜਵਾਬ ਜਮ੍ਹਾ ਕਰੋ।';

  @override
  String get whatHasAnEyeButCannotSee => 'ਕਿਸੇ ਕੋਲ ਅੱਖ ਹੈ, ਪਰ ਦੇਖ ਨਹੀਂ ਸਕਦਾ?';

  @override
  String get flipTwoCards => 'ਦੋ ਕਾਰਡ ਫਲਿਪ ਕਰੋ।';

  @override
  String get ifTheyMatchTheyDisappear =>
      'ਜੇ ਉਹ ਮੈਚ ਕਰਦੇ ਹਨ, ਤਾਂ ਉਹ ਗਾਇਬ ਹੋ ਜਾਂਦੇ ਹਨ।';

  @override
  String get matchAllPairs => 'ਸਾਰੇ ਜੋੜੇ ਮੈਚ ਕਰੋ।';

  @override
  String get startWithAWord => 'ਇੱਕ ਸ਼ਬਦ ਨਾਲ ਸ਼ੁਰੂ ਕਰੋ।';

  @override
  String get listAssociatedWords => 'ਸੰਬੰਧਿਤ ਸ਼ਬਦਾਂ ਦੀ ਸੂਚੀ ਬਣਾਓ।';

  @override
  String get tryToMakeAChain => 'ਇੱਕ ਚੇਨ ਬਣਾਉਣ ਦੀ ਕੋਸ਼ਿਸ਼ ਕਰੋ।';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'ਤੁਹਾਡਾ ਮਨਪਸੰਦ ਬਚਪਨ ਦਾ ਖੇਡ ਜਾਂ ਖਿਡੌਣਾ ਕੀ ਸੀ?';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'ਮੇਰਾ ਮਨਪਸੰਦ ਖਿਡੌਣਾ ਇੱਕ ਲਾਲ ਟ੍ਰੇਨ ਸੈੱਟ ਸੀ। ਮੈਂ ਘੰਟਿਆਂ ਟ੍ਰੈਕ ਬਣਾਉਂਦੇ ਅਤੇ ਯਾਤਰਾਵਾਂ ਦੀ ਕਲਪਨਾ ਕਰਦੇ ਬਿਤਾਏ।';

  @override
  String get describeAMemorableFamilyHoliday =>
      'ਇੱਕ ਯਾਦਗਾਰ ਪਰਿਵਾਰਕ ਛੁੱਟੀ ਦਾ ਵਰਣਨ ਕਰੋ।';

  @override
  String get min => 'ਮਿੰਟ';

  @override
  String get status => 'ਸਥਿਤੀ';

  @override
  String get difficulty => 'ਮੁਸ਼ਕਲ';

  @override
  String get registrationSuccessful =>
      'ਰਜਿਸਟ੍ਰੇਸ਼ਨ ਸਫਲ! ਤੁਹਾਨੂੰ ਪੁਸ਼ਟੀਕਰਨ ਈਮੇਲ ਮਿਲੇਗਾ।';

  @override
  String get replyPostedSuccessfully => 'ਜਵਾਬ ਸਫਲਤਾਪੂਰਵਕ ਪੋਸਟ ਕੀਤਾ!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'ਗਤੀਵਿਧੀ ਲੌਗਿੰਗ ਵਿਸ਼ੇਸ਼ਤਾ ਜਲਦੀ ਆ ਰਹੀ ਹੈ!';

  @override
  String get maintainAHealthyWeight => 'ਸਿਹਤਮੰਦ ਵਜ਼ਨ ਬਣਾਈ ਰੱਖੋ';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'ਬਿਹਤਰੀਨ ਸਿਹਤ ਲਈ ਆਪਣਾ BMI 18.5 ਅਤੇ 24.9 ਦੇ ਵਿਚਕਾਰ ਰੱਖੋ।';

  @override
  String get regularHealthChecks => 'ਨਿਯਮਿਤ ਸਿਹਤ ਜਾਂਚਾਂ';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'ਹਰ 5 ਸਾਲ ਵਿੱਚ ਆਪਣੀ ਮੁਫ਼ਤ NHS ਸਿਹਤ ਜਾਂਚ ਬੁੱਕ ਕਰੋ।';

  @override
  String get monitorYourVitals => 'ਆਪਣੇ ਜ਼ਰੂਰੀ ਪੈਰਾਮੀਟਰਾਂ ਦੀ ਨਿਗਰਾਨੀ ਕਰੋ';

  @override
  String get knowYourNumbers => 'ਆਪਣੀਆਂ ਸੰਖਿਆਵਾਂ ਜਾਣੋ';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'ਆਪਣੇ ਬਲੱਡ ਪ੍ਰੈਸ਼ਰ, ਕੋਲੇਸਟ੍ਰੋਲ ਅਤੇ ਬਲੱਡ ਸ਼ੁਗਰ ਦੀ ਨਿਯਮਿਤ ਨਿਗਰਾਨੀ ਕਰੋ।';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'ਹਫ਼ਤੇ ਵਿੱਚ ਘੱਟੋ-ਘੱਟ 150 ਮਿੰਟ ਦਾ ਸੰਯਮਿਤ ਵਰਕਆਉਟ ਕਰਨ ਦਾ ਟੀਚਾ ਰੱਖੋ।';

  @override
  String get label => 'ਲੇਬਲ';

  @override
  String get likes => 'ਪਸੰਦ';
}
