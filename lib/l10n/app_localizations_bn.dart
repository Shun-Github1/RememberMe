// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS ডিমেনশিয়া প্রতিরোধ জীবনধারা ট্র্যাকার';

  @override
  String get health => 'স্বাস্থ্য';

  @override
  String get healthMonitoring => 'স্বাস্থ্য পর্যবেক্ষণ';

  @override
  String get healthMonitoringDescription =>
      'আপনার ওজন, BMI এবং স্বাস্থ্য পরীক্ষার অবস্থা ট্র্যাক করুন';

  @override
  String get healthFeatures => 'স্বাস্থ্য বৈশিষ্ট্য';

  @override
  String get quickActions => 'দ্রুত কর্ম';

  @override
  String get weightDiary => 'ওজন ডায়েরি';

  @override
  String get weightDiaryDescription =>
      'আপনার দৈনিক ওজন লগ করুন এবং সময়ের সাথে BMI পরিবর্তন ট্র্যাক করুন';

  @override
  String lastLogged(Object weight) {
    return 'শেষ লগ: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'এখনো লগ করা হয়নি';

  @override
  String get nhsHealthCheck => 'NHS স্বাস্থ্য পরীক্ষা';

  @override
  String get nhsHealthCheckDescription =>
      'আপনার স্বাস্থ্য পর্যবেক্ষণের জন্য আপনার বিনামূল্যে NHS স্বাস্থ্য পরীক্ষা বুক করুন';

  @override
  String completed(Object date) {
    return 'সম্পন্ন $date';
  }

  @override
  String get completedRecently => 'সম্প্রতি সম্পন্ন';

  @override
  String get dueNow => 'এখন বাকি - আপনার বিনামূল্যে পরীক্ষা বুক করুন';

  @override
  String get notDueYet => 'এখনো বাকি নেই';

  @override
  String get healthProfile => 'স্বাস্থ্য প্রোফাইল';

  @override
  String get healthProfileDescription =>
      'আপনার চিকিৎসা অবস্থা, ওষুধ এবং জরুরি যোগাযোগ পরিচালনা করুন';

  @override
  String gpRegistered(Object gpName) {
    return 'GP: $gpName';
  }

  @override
  String get noGpRegistered => 'কোনো GP নিবন্ধিত নেই';

  @override
  String get logWeight => 'ওজন লগ করুন';

  @override
  String get healthTips => 'স্বাস্থ্য টিপস';

  @override
  String get healthOverview => 'স্বাস্থ্য ওভারভিউ';

  @override
  String get weight => 'ওজন';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'BMI বিভাগ';

  @override
  String get notSet => 'সেট করা নেই';

  @override
  String get calculate => 'গণনা করুন';

  @override
  String get unknown => 'অজানা';

  @override
  String get underweight => 'কম ওজন';

  @override
  String get normalWeight => 'সাধারণ ওজন';

  @override
  String get overweight => 'অতিরিক্ত ওজন';

  @override
  String get obese => 'স্থূলতা';

  @override
  String get bmiMessageUnderweight =>
      'সুস্থ ওজন বৃদ্ধির কৌশল সম্পর্কে আপনার GP এর সাথে কথা বলার কথা বিবেচনা করুন।';

  @override
  String get bmiMessageNormal =>
      'দুর্দান্ত! আপনি সুস্থ ওজনের পরিসরে আছেন। এভাবেই চালিয়ে যান!';

  @override
  String get bmiMessageOverweight =>
      'সুস্থ ওজন ব্যবস্থাপনা সম্পর্কে আপনার GP এর সাথে কথা বলার কথা বিবেচনা করুন।';

  @override
  String get bmiMessageObese =>
      'ওজন ব্যবস্থাপনার বিকল্প সম্পর্কে আপনার GP এর সাথে কথা বলুন।';

  @override
  String get bmiMessageDefault =>
      'সর্বোত্তম স্বাস্থ্যের জন্য নিয়মিত আপনার ওজন পর্যবেক্ষণ করুন।';

  @override
  String get progress => 'অগ্রগতি';

  @override
  String get noUserDataAvailable => 'কোন ব্যবহারকারী ডেটা উপলব্ধ নেই';

  @override
  String get healthProfileManagementComingSoon =>
      'স্বাস্থ্য প্রোফাইল ব্যবস্থাপনা শীঘ্রই আসছে';

  @override
  String get today => 'আজ';

  @override
  String get yesterday => 'গতকাল';

  @override
  String daysAgo(Object count) {
    return '$count দিন আগে';
  }

  @override
  String weeksAgo(Object count) {
    return '$count সপ্তাহ আগে';
  }

  @override
  String monthsAgo(Object count) {
    return '$count মাস আগে';
  }

  @override
  String yearsAgo(Object count) {
    return '$count বছর আগে';
  }

  @override
  String get language => 'ভাষা';

  @override
  String get selectLanguage => 'ভাষা নির্বাচন করুন';

  @override
  String get selectLanguageDescription =>
      'অ্যাপের জন্য আপনার পছন্দের ভাষা নির্বাচন করুন';

  @override
  String get systemLanguageSettings => 'সিস্টেম ভাষা সেটিংস';

  @override
  String get systemLanguageSettingsDescription => 'ডিভাইস ভাষা সেটিংস খুলুন';

  @override
  String get systemLanguageSettingsDialog =>
      'এটি আপনার ডিভাইসের ভাষা সেটিংস খুলবে। অ্যাপ স্বয়ংক্রিয়ভাবে আপনার সিস্টেম ভাষার পছন্দ সনাক্ত করবে এবং ব্যবহার করবে।';

  @override
  String get systemSettingsFallback =>
      'সিস্টেম ভাষা পরিবর্তন করতে অনুগ্রহ করে আপনার ডিভাইসের সেটিংস > ভাষা এবং অঞ্চলে যান।';

  @override
  String get cancel => 'বাতিল করুন';

  @override
  String get openSettings => 'সেটিংস খুলুন';

  @override
  String get settings => 'সেটিংস';

  @override
  String get profile => 'প্রোফাইল';

  @override
  String get userName => 'ব্যবহারকারীর নাম';

  @override
  String get userEmail => 'ব্যবহারকারী@উদাহরণ.com';

  @override
  String get changePassword => 'পাসওয়ার্ড পরিবর্তন করুন';

  @override
  String get notifications => 'বিজ্ঞপ্তি';

  @override
  String get pushNotifications => 'পুশ বিজ্ঞপ্তি';

  @override
  String get receiveRemindersAndUpdates => 'অনুস্মারক এবং আপডেট গ্রহণ করুন';

  @override
  String get dailyHealthReminders => 'দৈনিক স্বাস্থ্য অনুস্মারক';

  @override
  String get morningRemindersForHealthTracking =>
      'স্বাস্থ্য ট্র্যাকিংয়ের জন্য সকালের অনুস্মারক';

  @override
  String get surveyReminders => 'সার্ভে অনুস্মারক';

  @override
  String get notificationsForPendingSurveys => 'মুলতবি সার্ভের জন্য বিজ্ঞপ্তি';

  @override
  String get privacyAndDataSharing => 'গোপনীয়তা এবং ডেটা শেয়ারিং';

  @override
  String get dataPrivacyInfo =>
      'আপনার ডেটা গোপনীয়তা আমাদের কাছে গুরুত্বপূর্ণ। সমস্ত ডেটা শেয়ারিং ঐচ্ছিক এবং যে কোনো সময় পরিবর্তন করা যেতে পারে।';

  @override
  String get shareDataWithResearchCenters =>
      'গবেষণা কেন্দ্রের সাথে ডেটা শেয়ার করুন';

  @override
  String get helpAdvanceDementiaResearch =>
      'ডিমেনশিয়া গবেষণায় অগ্রগতিতে সাহায্য করুন (শুধুমাত্র বেনামী ডেটা)';

  @override
  String get healthDataSharing => 'স্বাস্থ্য ডেটা শেয়ারিং';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'আপনার স্বাস্থ্যসেবা প্রদানকারীর সাথে স্বাস্থ্য মেট্রিক্স শেয়ার করুন';

  @override
  String get locationTracking => 'অবস্থান ট্র্যাকিং';

  @override
  String get allowLocationDataForActivityTracking =>
      'কার্যকলাপ ট্র্যাকিংয়ের জন্য অবস্থান ডেটা অনুমতি দিন';

  @override
  String get privacyPolicy => 'গোপনীয়তা নীতি';

  @override
  String get termsOfService => 'সেবার শর্তাবলী';

  @override
  String get researchParticipation => 'গবেষণায় অংশগ্রহণ';

  @override
  String get researchParticipationInfo =>
      'গবেষণায় অংশগ্রহণ ডিমেনশিয়া প্রতিরোধ এবং চিকিৎসায় অগ্রগতিতে সাহায্য করে।';

  @override
  String get participateInResearchStudies => 'গবেষণা অধ্যয়নে অংশগ্রহণ করুন';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'Lucy Cavendish College দ্বারা পরিচালিত অধ্যয়নে যোগ দিন';

  @override
  String get currentResearchStudies => 'বর্তমান গবেষণা অধ্যয়ন';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'আপনি অংশগ্রহণ করতে পারেন এমন উপলব্ধ অধ্যয়ন দেখুন';

  @override
  String get appInformation => 'অ্যাপ তথ্য';

  @override
  String get version => 'সংস্করণ';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'উন্নয়নকারী';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => 'বাগ রিপোর্ট করুন';

  @override
  String get support => 'সহায়তা';

  @override
  String get helpAndFAQ => 'সহায়তা এবং FAQ';

  @override
  String get contactSupport => 'সহায়তার সাথে যোগাযোগ করুন';

  @override
  String get sendFeedback => 'ফিডব্যাক পাঠান';

  @override
  String get signOut => 'সাইন আউট';

  @override
  String get editProfile => 'প্রোফাইল সম্পাদনা করুন';

  @override
  String get profileEditingFeatureComingSoon =>
      'প্রোফাইল সম্পাদনা বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'পাসওয়ার্ড পরিবর্তন করুন';

  @override
  String get passwordChangeFeatureComingSoon =>
      'পাসওয়ার্ড পরিবর্তন বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get dataSharingConsent => 'ডেটা শেয়ারিং সম্মতি';

  @override
  String get dataSharingConsentText =>
      'ডেটা শেয়ারিং সক্রিয় করে, আপনি ডিমেনশিয়া গবেষণা কেন্দ্রের সাথে বেনামী স্বাস্থ্য ডেটা শেয়ার করার সম্মতি দিচ্ছেন। এটি ডিমেনশিয়া প্রতিরোধের বৈজ্ঞানিক বোঝাপড়ায় অগ্রগতিতে সাহায্য করে। আপনার ব্যক্তিগত তথ্য কখনই শেয়ার করা হবে না।';

  @override
  String get iUnderstand => 'আমি বুঝতে পারছি';

  @override
  String get researchParticipationTitle => 'গবেষণায় অংশগ্রহণ';

  @override
  String get researchParticipationText =>
      'গবেষণা অধ্যয়নে অংশগ্রহণ করে, আপনি ডিমেনশিয়া প্রতিরোধ গবেষণায় অগ্রগতিতে সাহায্য করেন। আপনি যে কোনো সময় যে কোনো অধ্যয়ন থেকে বেরিয়ে আসতে পারেন, এবং আপনার অংশগ্রহণ সম্পূর্ণ স্বেচ্ছাসেবী।';

  @override
  String get iAgree => 'আমি সম্মত';

  @override
  String get privacyPolicyTitle => 'গোপনীয়তা নীতি';

  @override
  String get privacyPolicyText =>
      'গোপনীয়তা নীতির বিষয়বস্তু এখানে থাকবে। এতে বিস্তারিত তথ্য থাকবে যে আমরা কীভাবে আপনার ব্যক্তিগত ডেটা সংগ্রহ, ব্যবহার এবং সুরক্ষা করি, UK GDPR নিয়মের সাথে সামঞ্জস্য রেখে।';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get termsOfServiceTitle => 'সেবার শর্তাবলী';

  @override
  String get termsOfServiceText =>
      'সেবার শর্তাবলীর বিষয়বস্তু এখানে থাকবে। এতে RememberMe অ্যাপ ব্যবহারের শর্তাবলী এবং নিয়মাবলী অন্তর্ভুক্ত থাকবে।';

  @override
  String get currentResearchStudiesTitle => 'বর্তমান গবেষণা অধ্যয়ন';

  @override
  String get researchStudiesFeatureComingSoon =>
      'গবেষণা অধ্যয়ন বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get reportABugTitle => 'বাগ রিপোর্ট করুন';

  @override
  String get bugReportingFeatureComingSoon =>
      'বাগ রিপোর্টিং বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get helpAndFAQTitle => 'সহায়তা এবং FAQ';

  @override
  String get helpSectionComingSoon => 'সহায়তা বিভাগ শীঘ্রই আসছে!';

  @override
  String get contactSupportTitle => 'সহায়তার সাথে যোগাযোগ করুন';

  @override
  String get supportContactFeatureComingSoon =>
      'সহায়তা যোগাযোগ বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get sendFeedbackTitle => 'ফিডব্যাক পাঠান';

  @override
  String get feedbackFeatureComingSoon => 'ফিডব্যাক বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get signOutTitle => 'সাইন আউট';

  @override
  String get areYouSureYouWantToSignOut =>
      'আপনি কি নিশ্চিত যে আপনি সাইন আউট করতে চান?';

  @override
  String get signedOutSuccessfully => 'সফলভাবে সাইন আউট';

  @override
  String get overview => 'সংক্ষিপ্ত বিবরণ';

  @override
  String get domains => 'ডোমেইন';

  @override
  String get developedInPartnershipWithNHS =>
      'NHS এর সাথে অংশীদারিত্বে উন্নয়ন';

  @override
  String get healthDomains => 'স্বাস্থ্য ডোমেইন';

  @override
  String get healthDescription =>
      'ওজন ট্র্যাকিং, NHS স্বাস্থ্য পরীক্ষার অনুস্মারক, এবং স্বাস্থ্য পর্যবেক্ষণ';

  @override
  String get socialEngagement => 'সামাজিক সম্পৃক্ততা';

  @override
  String get socialEngagementDescription =>
      'সম্প্রদায়ের ইভেন্ট, ফোরাম, এবং সামাজিক কার্যক্রম';

  @override
  String get physicalActivity => 'শারীরিক কার্যকলাপ';

  @override
  String get physicalActivityDescription =>
      'পদক্ষেপ ট্র্যাকিং, ব্যায়ামের লক্ষ্য, এবং কার্যকলাপ পর্যবেক্ষণ';

  @override
  String get goalAchievedToday => 'আজ লক্ষ্য অর্জিত';

  @override
  String get cognitiveTraining => 'জ্ঞানীয় প্রশিক্ষণ';

  @override
  String get cognitiveTrainingDescription =>
      'স্মৃতি অনুশীলন, স্মৃতিচারণ থেরাপি, এবং মস্তিষ্ক প্রশিক্ষণ';

  @override
  String get exerciseCompletedYesterday => 'গতকাল অনুশীলন সম্পন্ন';

  @override
  String get healthyDiet => 'স্বাস্থ্যকর খাদ্য';

  @override
  String get healthyDietDescription =>
      'পুষ্টি টিপস, খাবার ট্র্যাকিং, এবং স্বাস্থ্যকর খাওয়ার নির্দেশিকা';

  @override
  String get reminders => 'অনুস্মারক';

  @override
  String get viewAll => 'সব দেখুন';

  @override
  String get healthSurveyDue => 'স্বাস্থ্য জরিপ বাকি';

  @override
  String get healthSurveyDueDescription =>
      'আপনার অগ্রগতি ট্র্যাক করতে আপনার স্বাস্থ্য মূল্যায়ন সম্পূর্ণ করুন';

  @override
  String get takeSurvey => 'জরিপ নিন';

  @override
  String get learnMore => 'আরও জানুন';

  @override
  String get recentActivity => 'সাম্প্রতিক কার্যকলাপ';

  @override
  String get startTrackingYourActivities =>
      'আপনার কার্যকলাপ ট্র্যাক করা শুরু করুন';

  @override
  String get healthTipOfTheDay => 'দিনের স্বাস্থ্য টিপ';

  @override
  String get stayHydrated => 'হাইড্রেটেড থাকুন';

  @override
  String get logActivity => 'লগ করুন';

  @override
  String get community => 'সম্প্রদায়';

  @override
  String get back => 'পিছনে';

  @override
  String get next => 'পরবর্তী';

  @override
  String get getStarted => 'শুরু করুন';

  @override
  String get welcomeToRememberMe => 'RememberMe এ স্বাগতম';

  @override
  String get nhsPartnership => 'NHS অংশীদারিত্ব';

  @override
  String get supportingYourBrainHealth => 'আপনার মস্তিষ্কের স্বাস্থ্যের সমর্থন';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'আপনার মস্তিষ্ককে সক্রিয় রাখতে দৈনিক হাঁটা এবং ব্যায়াম';

  @override
  String get healthyNutrition => 'স্বাস্থ্যকর পুষ্টি';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'মস্তিষ্কের জন্য স্বাস্থ্যকর খাবার এবং হাইড্রেশন অনুস্মারক';

  @override
  String get socialConnection => 'সামাজিক সংযোগ';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'সম্প্রদায় এবং বন্ধুদের সাথে সংযুক্ত থাকুন';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'স্মৃতি অনুশীলন এবং স্মৃতিচারণ থেরাপি';

  @override
  String get yourPersonalDashboard => 'আপনার ব্যক্তিগত ড্যাশবোর্ড';

  @override
  String get social => 'সামাজিক';

  @override
  String get fitness => 'ফিটনেস';

  @override
  String get cognitive => 'জ্ঞানীয়';

  @override
  String get nutrition => 'পুষ্টি';

  @override
  String get yourPrivacyMatters => 'আপনার গোপনীয়তা গুরুত্বপূর্ণ';

  @override
  String get secureDataStorage => 'নিরাপদ ডেটা স্টোরেজ';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'আপনার তথ্য এনক্রিপ্ট এবং নিরাপদে সংরক্ষিত';

  @override
  String get optInDataSharing => 'বৈকল্পিক ডেটা শেয়ারিং';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'গবেষণা অংশীদারদের সাথে ডেটা শেয়ার করা হবে কিনা তা বেছে নিন';

  @override
  String get transparentPolicies => 'স্বচ্ছ নীতি';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'স্পষ্ট গোপনীয়তা নীতি এবং ডেটা ব্যবহারের তথ্য';

  @override
  String get dataControl => 'ডেটা নিয়ন্ত্রণ';

  @override
  String get deleteYourDataAtAnyTime => 'যেকোনো সময় আপনার ডেটা মুছে ফেলুন';

  @override
  String get brainHealthyEating => 'মস্তিষ্কের জন্য স্বাস্থ্যকর খাবার';

  @override
  String get nutritionTips => 'পুষ্টি পরামর্শ';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'মস্তিষ্কের স্বাস্থ্যের সমর্থন এবং ডিমেনশিয়ার ঝুঁকি কমাতে প্রমাণ-ভিত্তিক খাদ্যতালিকাগত সুপারিশ';

  @override
  String get dietReflection => 'খাদ্য প্রতিফলন';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'আপনার খাবার লগ করুন এবং আপনার পুষ্টি পছন্দ সম্পর্কে ব্যক্তিগত ফিডব্যাক পান';

  @override
  String get hydrationTracker => 'হাইড্রেশন ট্র্যাকার';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'আপনার দৈনিক পানি গ্রহণ ট্র্যাক করুন এবং হাইড্রেটেড থাকার জন্য অনুস্মারক পান';

  @override
  String get leafyGreens => 'পাতাযুক্ত সবজি';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'পালং শাক, কেল এবং অন্যান্য সবুজ সবজি ফোলেট এবং ভিটামিন K-তে সমৃদ্ধ';

  @override
  String get berries => 'বেরি';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'ব্লুবেরি, স্ট্রবেরি এবং অন্যান্য বেরিতে অ্যান্টিঅক্সিডেন্ট রয়েছে';

  @override
  String get wholeGrains => 'পুরো শস্য';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'বাদামি চাল, কুইনোয়া এবং ওটস টেকসই শক্তি এবং ফাইবার প্রদান করে';

  @override
  String get fish => 'মাছ';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'স্যামন, সার্ডিন এবং অন্যান্য চর্বিযুক্ত মাছ ওমেগা-3 এর চমৎকার উৎস';

  @override
  String get mealTracking => 'খাবার ট্র্যাকিং';

  @override
  String get mealTrackingFeatureComingSoon =>
      'খাবার ট্র্যাকিং ফিচার শীঘ্রই আসছে!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'হাইড্রেশন ট্র্যাকিং ফিচার শীঘ্রই আসছে!';

  @override
  String get stayActive => 'সক্রিয় থাকুন';

  @override
  String get activityTracker => 'কার্যকলাপ ট্র্যাকার';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'স্মার্ট ওয়াচ ইন্টিগ্রেশন সহ আপনার দৈনিক পদক্ষেপ, হাঁটা এবং শারীরিক কার্যকলাপ ট্র্যাক করুন';

  @override
  String get exerciseGoals => 'ব্যায়ামের লক্ষ্য';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'হাঁটা, শক্তি প্রশিক্ষণ এবং কার্ডিও সহ আপনার সাপ্তাহিক ব্যায়ামের লক্ষ্য সেট করুন এবং ট্র্যাক করুন';

  @override
  String get socialActivities => 'সামাজিক কার্যকলাপ';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'গ্রুপ হাঁটা, ফিটনেস ক্লাসে যোগ দিন এবং অনুপ্রেরণার জন্য অন্যদের সাথে সংযুক্ত হন';

  @override
  String get fitnessTips => 'ফিটনেস টিপস';

  @override
  String get mixCardioAndStrengthTraining =>
      'কার্ডিও এবং শক্তি প্রশিক্ষণ মিশান';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'এয়ারোবিক ব্যায়াম এবং পেশী শক্তিশালীকরণ কার্যকলাপ উভয়ই সামগ্রিক স্বাস্থ্যের জন্য গুরুত্বপূর্ণ।';

  @override
  String get stayConsistent => 'সামঞ্জস্যপূর্ণ থাকুন';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'নিয়মিত কার্যকলাপ তীব্র কিন্তু অনিয়মিত ব্যায়াম সেশনের চেয়ে বেশি উপকারী।';

  @override
  String get listenToYourBody => 'আপনার শরীরের কথা শুনুন';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'ধীরে ধীরে শুরু করুন এবং তীব্রতা ধীরে ধীরে বাড়ান। নতুন ব্যায়াম শুরু করার আগে আপনার ডাক্তারের সাথে পরামর্শ করুন।';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'ব্যায়ামের লক্ষ্য সেটিং ফিচার শীঘ্রই আসছে!';

  @override
  String get brainTraining => 'মস্তিষ্ক প্রশিক্ষণ';

  @override
  String get brainExercises => 'মস্তিষ্কের ব্যায়াম';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'মেমরি গেম, মনোযোগ প্রশিক্ষণ এবং জ্ঞানীয় মূল্যায়ন আপনার মনের সক্রিয় রাখতে';

  @override
  String get reminiscenceTherapy => 'স্মৃতিচারণ থেরাপি';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'জ্ঞানীয় কার্যকারিতা এবং মানসিক সুস্থতা বজায় রাখতে স্মৃতি, গল্প এবং অভিজ্ঞতা শেয়ার করুন';

  @override
  String get cognitiveAssessment => 'জ্ঞানীয় মূল্যায়ন';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'আপনার মস্তিষ্কের স্বাস্থ্য ট্র্যাক করতে এবং উন্নতির ক্ষেত্রগুলি চিহ্নিত করতে নিয়মিত জ্ঞানীয় পরীক্ষা';

  @override
  String get brainHealthTips => 'মস্তিষ্কের স্বাস্থ্য টিপস';

  @override
  String get stayMentallyActive => 'মানসিকভাবে সক্রিয় থাকুন';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'পড়ুন, পাজল করুন, নতুন দক্ষতা শিখুন, বা এমন শখে জড়িত হন যা আপনার মনকে চ্যালেঞ্জ করে।';

  @override
  String get shareYourMemories => 'আপনার স্মৃতি শেয়ার করুন';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'অতীতের অভিজ্ঞতা নিয়ে কথা বলা স্মৃতি এবং মানসিক সংযোগ বজায় রাখতে সাহায্য করে।';

  @override
  String get staySociallyConnected => 'সামাজিকভাবে সংযুক্ত থাকুন';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'জ্ঞানীয় স্বাস্থ্য এবং মানসিক সুস্থতার জন্য নিয়মিত সামাজিক মিথস্ক্রিয়া অত্যাবশ্যক।';

  @override
  String get manageStress => 'চাপ পরিচালনা করুন';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'দীর্ঘস্থায়ী চাপ স্মৃতি এবং জ্ঞানীয় কার্যকারিতাকে নেতিবাচকভাবে প্রভাবিত করতে পারে।';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'স্মৃতিচারণ থেরাপি সেশন শীঘ্রই আসছে!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'জ্ঞানীয় মূল্যায়ন সরঞ্জাম শীঘ্রই আসছে!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'আপনার সম্প্রদায়ের সাথে সংযুক্ত থাকুন এবং একাকীত্বের বিরুদ্ধে লড়াই করুন';

  @override
  String get socialFeatures => 'সামাজিক বৈশিষ্ট্য';

  @override
  String get communityEvents => 'কমিউনিটি ইভেন্ট';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'ডিমেনশিয়া সাপোর্ট সেন্টার দ্বারা সংগঠিত স্থানীয় শিল্প, কারুশিল্প এবং সামাজিক কার্যক্রম আবিষ্কার করুন';

  @override
  String get communityForum => 'কমিউনিটি ফোরাম';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'অন্যদের সাথে সংযুক্ত হন, অভিজ্ঞতা শেয়ার করুন এবং সম্প্রদায় থেকে সহায়তা পান';

  @override
  String get dementiaEncyclopedia => 'ডিমেনশিয়া এনসাইক্লোপিডিয়া';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'ডিমেনশিয়া, প্রতিরোধ কৌশল সম্পর্কে জানুন এবং সহায়ক সম্পদ খুঁজুন';

  @override
  String get socialConnectionTips => 'সামাজিক সংযোগ টিপস';

  @override
  String get joinLocalGroups => 'স্থানীয় গোষ্ঠীতে যোগ দিন';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'আপনার এলাকায় শিল্প ও কারুশিল্প কর্মশালা, হাঁটার গোষ্ঠী বা শখের ক্লাব খুঁজুন।';

  @override
  String get stayInTouch => 'যোগাযোগে থাকুন';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'পরিবার ও বন্ধুদের সাথে নিয়মিত ফোন কল বা ভিডিও চ্যাট বড় পার্থক্য আনতে পারে।';

  @override
  String get volunteer => 'স্বেচ্ছাসেবক';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'আপনার সম্প্রদায়কে ফিরিয়ে দেওয়া উদ্দেশ্য এবং সামাজিক সংযোগ প্রদান করতে পারে।';

  @override
  String get learnSomethingNew => 'কিছু নতুন শিখুন';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'ক্লাস নেওয়া বা লার্নিং গ্রুপে যোগ দেওয়া আপনাকে সমমনা লোকদের সাথে দেখা করতে সাহায্য করতে পারে।';

  @override
  String get couldNotOpenNHSWebsite => 'NHS ওয়েবসাইট খোলা যায়নি';

  @override
  String get couldNotOpenNHSBookingWebsite => 'NHS বুকিং ওয়েবসাইট খোলা যায়নি';

  @override
  String get healthCheckComplete => 'স্বাস্থ্য পরীক্ষা সম্পূর্ণ';

  @override
  String get healthCheckOverdue => 'স্বাস্থ্য পরীক্ষা ওভারডিউ';

  @override
  String get healthCheckDueSoon => 'স্বাস্থ্য পরীক্ষা শীঘ্রই';

  @override
  String get benefitsOfNHSHealthCheck => 'NHS স্বাস্থ্য পরীক্ষার সুবিধা';

  @override
  String get earlyDetection => 'প্রারম্ভিক সনাক্তকরণ';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'স্বাস্থ্য ঝুঁকিগুলি গুরুতর সমস্যা হওয়ার আগে সনাক্ত করে';

  @override
  String get dementiaPrevention => 'ডিমেনশিয়া প্রতিরোধ';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'লাইফস্টাইল পরামর্শের মাধ্যমে ডিমেনশিয়া বিকাশের ঝুঁকি কমাতে সাহায্য করে';

  @override
  String get lifestyleAdvice => 'লাইফস্টাইল পরামর্শ';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'খাদ্য, ব্যায়াম এবং সুস্থ জীবনযাপন সম্পর্কে ব্যক্তিগত পরামর্শ পান';

  @override
  String get freeService => 'বিনামূল্যে সেবা';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'সম্পূর্ণ বিনামূল্যে এবং প্রায় 20-30 মিনিট সময় লাগে';

  @override
  String get learnMoreAboutHealthChecks =>
      'স্বাস্থ্য পরীক্ষা সম্পর্কে আরও জানুন';

  @override
  String get markAsNotCompleted => 'অসম্পূর্ণ হিসাবে চিহ্নিত করুন';

  @override
  String get bookYourHealthCheck => 'আপনার স্বাস্থ্য পরীক্ষা বুক করুন';

  @override
  String get currentWeight => 'বর্তমান ওজন';

  @override
  String get updated => 'আপডেট';

  @override
  String get notRecorded => 'রেকর্ড করা হয়নি';

  @override
  String get addYourHeightToCalculateBMI =>
      'BMI গণনা করতে আপনার উচ্চতা যোগ করুন';

  @override
  String get logNewWeight => 'নতুন ওজন লগ করুন';

  @override
  String get enterYourWeight => 'আপনার ওজন লিখুন';

  @override
  String get pleaseEnterYourWeight => 'অনুগ্রহ করে আপনার ওজন লিখুন';

  @override
  String get pleaseEnterAValidNumber => 'অনুগ্রহ করে একটি বৈধ সংখ্যা লিখুন';

  @override
  String get weightHistory => 'ওজন ইতিহাস';

  @override
  String get trackYourWeightChangesOverTime =>
      'সময়ের সাথে আপনার ওজনের পরিবর্তন ট্র্যাক করুন';

  @override
  String get weightChartComingSoon => 'ওজন চার্ট শীঘ্রই আসছে';

  @override
  String get bmiInformation => 'BMI তথ্য';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'আপনার BMI গণনা করতে আপনার উচ্চতা এবং ওজন যোগ করুন';

  @override
  String get below18Point5 => '18.5 এর নিচে';

  @override
  String get bmiRange18Point5To24Point9 => '18.5 - 24.9';

  @override
  String get bmiRange25Point0To29Point9 => '25.0 - 29.9';

  @override
  String get bmiRange30Point0AndAbove => '30.0 এবং তার উপরে';

  @override
  String get todaysActivity => 'আজকের কার্যকলাপ';

  @override
  String get steps => 'পদক্ষেপ';

  @override
  String get distance => 'দূরত্ব';

  @override
  String get calories => 'ক্যালোরি';

  @override
  String get duration => 'সময়কাল';

  @override
  String get logWalk => 'হাঁটা লগ করুন';

  @override
  String get logExercise => 'ব্যায়াম লগ করুন';

  @override
  String get setGoals => 'লক্ষ্য নির্ধারণ করুন';

  @override
  String get viewHistory => 'ইতিহাস দেখুন';

  @override
  String get weeklyProgress => 'সাপ্তাহিক অগ্রগতি';

  @override
  String get activityChartsComingSoon => 'কার্যকলাপ চার্ট শীঘ্রই আসছে!';

  @override
  String get goalSettingFeatureComingSoon =>
      'লক্ষ্য নির্ধারণ বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get activityHistory => 'কার্যকলাপের ইতিহাস';

  @override
  String get activityHistoryFeatureComingSoon =>
      'কার্যকলাপের ইতিহাস বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get dailyBrainTeaser => 'দৈনিক মস্তিষ্কের ধাঁধা';

  @override
  String get aQuickPuzzleToStartYourDay =>
      'আপনার দিন শুরু করার জন্য একটি দ্রুত ধাঁধা';

  @override
  String get memoryMatchGame => 'মেমরি ম্যাচ গেম';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'আপনার স্বল্পমেয়াদী স্মৃতিশক্তি উন্নত করতে কার্ডের জোড়া ম্যাচ করুন';

  @override
  String get wordAssociation => 'শব্দ সংযোগ';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'শব্দগুলি সংযুক্ত করুন এবং আপনার শব্দভান্ডার প্রসারিত করুন';

  @override
  String get activities => 'কার্যকলাপ';

  @override
  String get reminiscence => 'স্মৃতিচারণ';

  @override
  String get continueButton => 'চালিয়ে যান';

  @override
  String get start => 'শুরু';

  @override
  String get noPromptAvailable => 'কোন প্রম্পট উপলব্ধ নেই';

  @override
  String get review => 'পর্যালোচনা';

  @override
  String get trainingProgress => 'প্রশিক্ষণ অগ্রগতি';

  @override
  String get activityProgress => 'কার্যকলাপ অগ্রগতি';

  @override
  String get reminiscenceSessions => 'স্মৃতিচারণ সেশন';

  @override
  String get untitledSession => 'শিরোনামহীন সেশন';

  @override
  String get reminiscenceSession => 'স্মৃতিচারণ সেশন';

  @override
  String get theMediterraneanDiet => 'ভূমধ্যসাগরীয় খাদ্য';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'ফল, শাকসবজি, পুরো শস্য এবং জলপাই তেলের মতো স্বাস্থ্যকর চর্বিতে ফোকাস করুন। এই খাদ্য ডিমেনশিয়ার ঝুঁকি হ্রাসের সাথে যুক্ত';

  @override
  String get brainHealth => 'মস্তিষ্কের স্বাস্থ্য';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'প্রতিদিন 6-8 গ্লাস পানি পান করুন। সঠিক হাইড্রেশন মস্তিষ্কের কার্যকারিতা এবং সামগ্রিক স্বাস্থ্যের জন্য অপরিহার্য';

  @override
  String get hydration => 'হাইড্রেশন';

  @override
  String get omega3FattyAcids => 'ওমেগা-3 ফ্যাটি অ্যাসিড';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'আপনার খাদ্যে স্যামন, ম্যাকেরেল এবং সার্ডিনের মতো মাছ অন্তর্ভুক্ত করুন। ওমেগা-3 মস্তিষ্কের স্বাস্থ্য সমর্থন করে এবং প্রদাহ কমাতে পারে';

  @override
  String get antioxidantRichFoods => 'অ্যান্টিঅক্সিডেন্ট সমৃদ্ধ খাবার';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'বেরি, গাঢ় পাতাযুক্ত সবুজ এবং রঙিন শাকসবজি খান। অ্যান্টিঅক্সিডেন্ট মস্তিষ্কের কোষকে ক্ষতি থেকে রক্ষা করতে সাহায্য করে';

  @override
  String get general => 'সাধারণ';

  @override
  String get limitProcessedFoods => 'প্রক্রিয়াজাত খাবার সীমিত করুন';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'প্রক্রিয়াজাত মাংস, মিষ্টি স্ন্যাকস এবং ভাজা খাবারের গ্রহণ কমান। এগুলি প্রদাহ এবং জ্ঞানীয় হ্রাসে অবদান রাখতে পারে';

  @override
  String get vitaminDForBrainHealth => 'মস্তিষ্কের স্বাস্থ্যের জন্য ভিটামিন ডি';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'সূর্যালোক, ফর্টিফাইড খাবার বা সাপ্লিমেন্টের মাধ্যমে পর্যাপ্ত ভিটামিন ডি পান। ভিটামিন ডি ঘাটতি জ্ঞানীয় সমস্যার সাথে যুক্ত';

  @override
  String get vitamins => 'ভিটামিন';

  @override
  String get healthyEatingForBrainHealth =>
      'মস্তিষ্কের স্বাস্থ্যের জন্য স্বাস্থ্যকর খাবার';

  @override
  String get allTips => 'সব পরামর্শ';

  @override
  String get tipBookmarked => 'পরামর্শ বুকমার্ক করা হয়েছে!';

  @override
  String get bookmarkRemoved => 'বুকমার্ক সরানো হয়েছে';

  @override
  String get generalInformation => 'সাধারণ তথ্য';

  @override
  String get symptoms => 'লক্ষণ';

  @override
  String get riskFactors => 'ঝুঁকির কারণ';

  @override
  String get types => 'প্রকার';

  @override
  String get diagnosis => 'নির্ণয়';

  @override
  String get treatment => 'চিকিৎসা';

  @override
  String get prevention => 'প্রতিরোধ';

  @override
  String get caregiving => 'যত্ন';

  @override
  String get entryBookmarked => 'এন্ট্রি বুকমার্ক করা হয়েছে!';

  @override
  String get wellbeing => 'কল্যাণ';

  @override
  String get createNewPost => 'নতুন পোস্ট তৈরি করুন';

  @override
  String get postCreationFeatureComingSoon =>
      'পোস্ট তৈরির বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get postDetails => 'পোস্টের বিবরণ';

  @override
  String get reply => 'উত্তর দিন';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'স্থানীয় ইভেন্টে যোগ দিন যা জ্ঞানীয় স্বাস্থ্য এবং সামাজিক সম্পৃক্ততাকে সমর্থন করার জন্য ডিজাইন করা হয়েছে';

  @override
  String get allEvents => 'সব ইভেন্ট';

  @override
  String get arts => 'শিল্প';

  @override
  String get music => 'সঙ্গীত';

  @override
  String get education => 'শিক্ষা';

  @override
  String get fullyBooked => 'সম্পূর্ণ বুক';

  @override
  String get register => 'নিবন্ধন করুন';

  @override
  String get joinEvent => 'ইভেন্টে যোগ দিন';

  @override
  String get location => 'অবস্থান';

  @override
  String get date => 'তারিখ';

  @override
  String get time => 'সময়';

  @override
  String get participants => 'অংশগ্রহণকারী';

  @override
  String get organizer => 'আয়োজক';

  @override
  String get contact => 'যোগাযোগ';

  @override
  String get registerForEvent => 'ইভেন্টের জন্য নিবন্ধন করুন';

  @override
  String get surveys => 'জরিপ';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'নিয়মিত মূল্যায়ন আপনার অগ্রগতি ট্র্যাক করতে এবং উন্নতির ক্ষেত্রগুলি চিহ্নিত করতে সাহায্য করে';

  @override
  String get allSurveys => 'সব জরিপ';

  @override
  String get comprehensive => 'ব্যাপক';

  @override
  String get lifestyle => 'জীবনধারা';

  @override
  String get reviewResults => 'ফলাফল পর্যালোচনা করুন';

  @override
  String get startSurvey => 'জরিপ শুরু করুন';

  @override
  String get previous => 'পূর্ববর্তী';

  @override
  String get complete => 'সম্পূর্ণ';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get unsupportedQuestionType => 'অসমর্থিত প্রশ্নের ধরন';

  @override
  String get rewards => 'পুরস্কার';

  @override
  String get availablePoints => 'উপলব্ধ পয়েন্ট';

  @override
  String get totalEarned => 'মোট অর্জিত';

  @override
  String get availableRewards => 'উপলব্ধ পুরস্কার';

  @override
  String get partner => 'অংশীদার';

  @override
  String get redeem => 'বদল করুন';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'এই পুরস্কার বদলানোর জন্য পর্যাপ্ত পয়েন্ট নেই';

  @override
  String get redeemReward => 'পুরস্কার বদল করুন';

  @override
  String get dailyDietReflection => 'দৈনিক খাদ্য প্রতিফলন';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'আপনার খাওয়ার অভ্যাসের উপর প্রতিফলন করুন এবং একটি স্বাস্থ্যকর খাদ্যের দিকে আপনার অগ্রগতি ট্র্যাক করুন';

  @override
  String get saveReflection => 'প্রতিফলন সংরক্ষণ করুন';

  @override
  String get reflection => 'প্রতিফলন';

  @override
  String get areasForImprovement => 'উন্নতির ক্ষেত্র';

  @override
  String get recentReflections => 'সাম্প্রতিক প্রতিফলন';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'জমা দেওয়ার আগে একটি প্রতিফলন লিখুন';

  @override
  String get excellent => 'চমৎকার';

  @override
  String get good => 'ভাল';

  @override
  String get average => 'গড়';

  @override
  String get poor => 'খারাপ';

  @override
  String get veryPoor => 'খুব খারাপ';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'ছোট উন্নতির জন্য জায়গা সহ ভাল পছন্দ';

  @override
  String get moreFruitsAndVegetables => 'আরও ফল এবং শাকসবজি';

  @override
  String get reduceProcessedFoods => 'প্রক্রিয়াজাত খাবার কমান';

  @override
  String get increaseWaterIntake => 'পানি গ্রহণ বাড়ান';

  @override
  String get moreWholeGrains => 'আরও পুরো শস্য';

  @override
  String get reduceSugarIntake => 'চিনি গ্রহণ কমান';

  @override
  String get moreLeanProteins => 'আরও লিন প্রোটিন';

  @override
  String get betterPortionControl => 'ভাল অংশ নিয়ন্ত্রণ';

  @override
  String get regularMealTiming => 'নিয়মিত খাবার সময়';

  @override
  String get languageChanged => 'ভাষা সফলভাবে পরিবর্তিত হয়েছে';

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
      'আপনি কি নিশ্চিত যে আপনি বদল করতে চান';

  @override
  String get forText => 'জন্য';

  @override
  String get points => 'পয়েন্ট';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'আপনার অগ্রগতি';

  @override
  String get survey => 'জরিপ';

  @override
  String get nhsHealthCheckCompleted => 'NHS স্বাস্থ্য পরীক্ষা সম্পন্ন';

  @override
  String get nhsHealthCheckRecommended => 'NHS স্বাস্থ্য পরীক্ষা সুপারিশ';

  @override
  String get todaysStats => 'আজকের পরিসংখ্যান';

  @override
  String get water => 'পানি';

  @override
  String get sleep => 'ঘুম';

  @override
  String get glasses => 'গ্লাস';

  @override
  String get hours => 'ঘন্টা';

  @override
  String get ofText => 'এর';

  @override
  String get urgent => 'জরুরি';

  @override
  String get view => 'দেখুন';

  @override
  String get activityStartedMock => 'কার্যকলাপ শুরু! (মক)';

  @override
  String get reminiscenceSessionStartedMock => 'স্মৃতিচারণ সেশন শুরু! (মক)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'স্বাস্থ্য পরীক্ষা সম্পূর্ণ হিসাবে চিহ্নিত!';

  @override
  String get weightLogged => 'ওজন রেকর্ড';

  @override
  String get reflectionSavedSuccessfully => 'প্রতিফলন সফলভাবে সংরক্ষিত!';

  @override
  String get surveyCompletedSuccessfully => 'জরিপ সফলভাবে সম্পন্ন!';

  @override
  String get successfullyRedeemed => 'সফলভাবে ব্যবহার';

  @override
  String get notesOptional => 'নোট (ঐচ্ছিক)';

  @override
  String get writeYourThoughtsHere => 'আপনার চিন্তা এখানে লিখুন...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'আপনি আজ আপনার খাদ্যের গুণমান কীভাবে মূল্যায়ন করবেন?';

  @override
  String get whatDidYouEatToday =>
      'আপনি আজ কী খেয়েছেন? আপনার খাদ্য পছন্দ সম্পর্কে আপনি কী অনুভব করেছিলেন? কী ভাল হয়েছে এবং কী উন্নত করা যেতে পারে?';

  @override
  String get visualizeYourWeightTrends =>
      'ইন্টারেক্টিভ চার্টের সাথে সময়ের সাথে আপনার ওজনের প্রবণতা এবং অগ্রগতি কল্পনা করুন।';

  @override
  String get question => 'প্রশ্ন';

  @override
  String get ofQuestions => 'এর';

  @override
  String get surveyResultsFeatureComingSoon =>
      'জরিপ ফলাফল বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get whatIsAnNHSHealthCheck => 'NHS স্বাস্থ্য পরীক্ষা কী?';

  @override
  String get rememberMeAndYourHealth => 'RememberMe এবং আপনার স্বাস্থ্য';

  @override
  String get regularHealthChecksAreImportant =>
      'নিয়মিত স্বাস্থ্য পরীক্ষা মস্তিষ্কের স্বাস্থ্য বজায় রাখা এবং ডিমেনশিয়ার ঝুঁকি কমাতে একটি গুরুত্বপূর্ণ অংশ। NHS স্বাস্থ্য পরীক্ষা মূল্যবান অন্তর্দৃষ্টি প্রদান করে যা আপনার RememberMe যাত্রাকে পরিপূরক করে।';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'সময়ের সাথে আপনার ডিমেনশিয়া ঝুঁকির কারণগুলি নিরীক্ষণের জন্য RememberMe-এ আপনার স্বাস্থ্য পরীক্ষার ফলাফল ট্র্যাক করুন।';

  @override
  String get iveAlreadyHadMyHealthCheck =>
      'আমি ইতিমধ্যে আমার স্বাস্থ্য পরীক্ষা করিয়েছি';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'কফি ভাউচার - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Cambridge Coffee House-এ বিনামূল্যে কফি উপভোগ করুন, একটি স্থানীয় স্বাধীন ক্যাফে।';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'বইয়ের দোকান ছাড় - Heffers';

  @override
  String get heffersBookshop => 'Heffers বইয়ের দোকান';

  @override
  String get solveThePuzzle => 'পাজল সমাধান করুন।';

  @override
  String get submitYourAnswer => 'আপনার উত্তর জমা দিন।';

  @override
  String get whatHasAnEyeButCannotSee =>
      'কী একটি চোখ আছে কিন্তু দেখতে পারে না?';

  @override
  String get flipTwoCards => 'দুটি কার্ড উল্টান।';

  @override
  String get ifTheyMatchTheyDisappear =>
      'যদি তারা মিলে যায়, তারা অদৃশ্য হয়ে যায়।';

  @override
  String get matchAllPairs => 'সব জোড়া মিলান।';

  @override
  String get startWithAWord => 'একটি শব্দ দিয়ে শুরু করুন।';

  @override
  String get listAssociatedWords => 'সম্পর্কিত শব্দের তালিকা করুন।';

  @override
  String get tryToMakeAChain => 'একটি চেইন তৈরি করার চেষ্টা করুন।';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'আপনার প্রিয় শৈশব খেলা বা খেলনা কী ছিল?';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'আমার প্রিয় খেলনা ছিল একটি লাল ট্রেন সেট। আমি ঘন্টার পর ঘন্টা ট্র্যাক তৈরি করে এবং যাত্রার কল্পনা করে কাটিয়েছি।';

  @override
  String get describeAMemorableFamilyHoliday =>
      'একটি স্মরণীয় পারিবারিক ছুটির বর্ণনা করুন।';

  @override
  String get min => 'মিনিট';

  @override
  String get status => 'অবস্থা';

  @override
  String get difficulty => 'কঠিনতা';

  @override
  String get registrationSuccessful =>
      'নিবন্ধন সফল! আপনি একটি নিশ্চিতকরণ ইমেইল পাবেন।';

  @override
  String get replyPostedSuccessfully => 'উত্তর সফলভাবে পোস্ট!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'কার্যকলাপ লগিং বৈশিষ্ট্য শীঘ্রই আসছে!';

  @override
  String get maintainAHealthyWeight => 'স্বাস্থ্যকর ওজন বজায় রাখুন';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'সর্বোত্তম স্বাস্থ্যের জন্য আপনার BMI 18.5 এবং 24.9 এর মধ্যে রাখুন।';

  @override
  String get regularHealthChecks => 'নিয়মিত স্বাস্থ্য পরীক্ষা';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'প্রতি 5 বছরে আপনার বিনামূল্যে NHS স্বাস্থ্য পরীক্ষা বুক করুন।';

  @override
  String get monitorYourVitals => 'আপনার গুরুত্বপূর্ণ পরামিতি নিরীক্ষণ করুন';

  @override
  String get knowYourNumbers => 'আপনার সংখ্যা জানুন';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'নিয়মিত আপনার রক্তচাপ, কোলেস্টেরল এবং রক্তে শর্করা নিরীক্ষণ করুন।';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'সপ্তাহে কমপক্ষে 150 মিনিট মাঝারি ব্যায়ামের লক্ষ্য রাখুন।';

  @override
  String get label => 'লেবেল';

  @override
  String get likes => 'পছন্দ';
}
