// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS ڈیمنشیا روک تھام طرز زندگی ٹریکر';

  @override
  String get health => 'صحت';

  @override
  String get healthMonitoring => 'صحت کی نگرانی';

  @override
  String get healthMonitoringDescription =>
      'اپنا وزن، BMI، اور صحت کی چیک کی حالت کو ٹریک کریں';

  @override
  String get healthFeatures => 'صحت کی خصوصیات';

  @override
  String get quickActions => 'فوری کارروائیاں';

  @override
  String get weightDiary => 'وزن کی ڈائری';

  @override
  String get weightDiaryDescription =>
      'اپنا روزانہ وزن لاگ کریں اور وقت کے ساتھ BMI کی تبدیلیوں کو ٹریک کریں';

  @override
  String lastLogged(Object weight) {
    return 'آخری لاگ: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'ابھی لاگ نہیں کیا';

  @override
  String get nhsHealthCheck => 'NHS ہیلتھ چیک';

  @override
  String get nhsHealthCheckDescription =>
      'اپنی صحت کی نگرانی کے لیے اپنا مفت NHS ہیلتھ چیک بک کریں';

  @override
  String completed(Object date) {
    return 'مکمل $date';
  }

  @override
  String get completedRecently => 'حال ہی میں مکمل ہوا';

  @override
  String get dueNow => 'اب ڈیو - اپنا مفت چیک بک کریں';

  @override
  String get notDueYet => 'ابھی ڈیو نہیں';

  @override
  String get healthProfile => 'صحت کا پروفائل';

  @override
  String get healthProfileDescription =>
      'اپنی طبی حالتوں، ادویات، اور ایمرجنسی رابطوں کا انتظام کریں';

  @override
  String gpRegistered(Object gpName) {
    return 'GP: $gpName';
  }

  @override
  String get noGpRegistered => 'کوئی GP رجسٹرڈ نہیں';

  @override
  String get logWeight => 'وزن لاگ کریں';

  @override
  String get healthTips => 'صحت کے نکات';

  @override
  String get healthOverview => 'صحت کا جائزہ';

  @override
  String get weight => 'وزن';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'BMI کیٹگری';

  @override
  String get notSet => 'سیٹ نہیں';

  @override
  String get calculate => 'حساب کریں';

  @override
  String get unknown => 'نامعلوم';

  @override
  String get underweight => 'کم وزن';

  @override
  String get normalWeight => 'عام وزن';

  @override
  String get overweight => 'زیادہ وزن';

  @override
  String get obese => 'موٹاپا';

  @override
  String get bmiMessageUnderweight =>
      'صحت مند وزن بڑھانے کی حکمت عملیوں کے بارے میں اپنے GP سے بات کرنے پر غور کریں۔';

  @override
  String get bmiMessageNormal =>
      'بہترین! آپ صحت مند وزن کی حد میں ہیں۔ اسی طرح جاری رکھیں!';

  @override
  String get bmiMessageOverweight =>
      'صحت مند وزن کے انتظام کے بارے میں اپنے GP سے بات کرنے پر غور کریں۔';

  @override
  String get bmiMessageObese =>
      'براہ کرم وزن کے انتظام کے اختیارات کے بارے میں اپنے GP سے بات کریں۔';

  @override
  String get bmiMessageDefault =>
      'بہترین صحت کے لیے اپنے وزن کو باقاعدگی سے مانیٹر کریں۔';

  @override
  String get progress => 'ترقی';

  @override
  String get noUserDataAvailable => 'کوئی صارف ڈیٹا دستیاب نہیں';

  @override
  String get healthProfileManagementComingSoon =>
      'صحت کے پروفائل کا انتظام جلد آرہا ہے';

  @override
  String get today => 'آج';

  @override
  String get yesterday => 'کل';

  @override
  String daysAgo(Object count) {
    return '$count دن پہلے';
  }

  @override
  String weeksAgo(Object count) {
    return '$count ہفتے پہلے';
  }

  @override
  String monthsAgo(Object count) {
    return '$count مہینے پہلے';
  }

  @override
  String yearsAgo(Object count) {
    return '$count سال پہلے';
  }

  @override
  String get language => 'زبان';

  @override
  String get selectLanguage => 'زبان منتخب کریں';

  @override
  String get selectLanguageDescription =>
      'ایپ کے لیے اپنی پسندیدہ زبان منتخب کریں';

  @override
  String get systemLanguageSettings => 'سسٹم زبان کی ترتیبات';

  @override
  String get systemLanguageSettingsDescription =>
      'ڈیوائس زبان کی ترتیبات کھولیں';

  @override
  String get systemLanguageSettingsDialog =>
      'یہ آپ کے ڈیوائس کی زبان کی ترتیبات کھولے گا۔ ایپ خود بخود سسٹم زبان کی ترجیح کا پتہ لگائے گی اور استعمال کرے گی۔';

  @override
  String get systemSettingsFallback =>
      'براہ کرم اپنے ڈیوائس کی ترتیبات > زبان اور علاقہ میں جائیں سسٹم زبان تبدیل کرنے کے لیے۔';

  @override
  String get cancel => 'منسوخ کریں';

  @override
  String get openSettings => 'ترتیبات کھولیں';

  @override
  String get settings => 'ترتیبات';

  @override
  String get profile => 'پروفائل';

  @override
  String get userName => 'صارف کا نام';

  @override
  String get userEmail => 'صارف@مثال.com';

  @override
  String get changePassword => 'پاس ورڈ تبدیل کریں';

  @override
  String get notifications => 'اطلاعات';

  @override
  String get pushNotifications => 'پش اطلاعات';

  @override
  String get receiveRemindersAndUpdates => 'یاد دہانیاں اور اپڈیٹس وصول کریں';

  @override
  String get dailyHealthReminders => 'روزانہ صحت کی یاد دہانیاں';

  @override
  String get morningRemindersForHealthTracking =>
      'صحت کی ٹریکنگ کے لیے صبح کی یاد دہانیاں';

  @override
  String get surveyReminders => 'سروے یاد دہانیاں';

  @override
  String get notificationsForPendingSurveys => 'زیر التواء سروے کے لیے اطلاعات';

  @override
  String get privacyAndDataSharing => 'پرائیویسی اور ڈیٹا شیئرنگ';

  @override
  String get dataPrivacyInfo =>
      'آپ کی ڈیٹا پرائیویسی ہمارے لیے اہم ہے۔ تمام ڈیٹا شیئرنگ اختیاری ہے اور کسی بھی وقت تبدیل کی جا سکتی ہے۔';

  @override
  String get shareDataWithResearchCenters =>
      'ریسرچ سینٹرز کے ساتھ ڈیٹا شیئر کریں';

  @override
  String get helpAdvanceDementiaResearch =>
      'ڈیمنشیا ریسرچ میں ترقی میں مدد کریں (صرف گمنام ڈیٹا)';

  @override
  String get healthDataSharing => 'صحت کا ڈیٹا شیئرنگ';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'اپنے ہیلتھ کیئر فراہم کنندہ کے ساتھ صحت کے میٹرکس شیئر کریں';

  @override
  String get locationTracking => 'مقام کی ٹریکنگ';

  @override
  String get allowLocationDataForActivityTracking =>
      'ایکٹیویٹی ٹریکنگ کے لیے لوکیشن ڈیٹا کی اجازت دیں';

  @override
  String get privacyPolicy => 'پرائیویسی پالیسی';

  @override
  String get termsOfService => 'سروس کی شرائط';

  @override
  String get researchParticipation => 'ریسرچ میں شرکت';

  @override
  String get researchParticipationInfo =>
      'ریسرچ میں شرکت ڈیمنشیا کی روک تھام اور علاج میں ترقی میں مدد کرتی ہے۔';

  @override
  String get participateInResearchStudies => 'ریسرچ اسٹڈیز میں حصہ لیں';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'Lucy Cavendish College کی جانب سے کیے گئے اسٹڈیز میں شامل ہوں';

  @override
  String get currentResearchStudies => 'موجودہ ریسرچ اسٹڈیز';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'دستیاب اسٹڈیز دیکھیں جن میں آپ حصہ لے سکتے ہیں';

  @override
  String get appInformation => 'ایپ کی معلومات';

  @override
  String get version => 'ورژن';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'تطویق کی گئی';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => 'بگ رپورٹ کریں';

  @override
  String get support => 'سپورٹ';

  @override
  String get helpAndFAQ => 'مدد اور FAQ';

  @override
  String get contactSupport => 'سپورٹ سے رابطہ کریں';

  @override
  String get sendFeedback => 'فیڈ بیک بھیجیں';

  @override
  String get signOut => 'سائن آؤٹ';

  @override
  String get editProfile => 'پروفائل ایڈٹ کریں';

  @override
  String get profileEditingFeatureComingSoon =>
      'پروفائل ایڈٹنگ فیچر جلد آرہا ہے!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'پاس ورڈ تبدیل کریں';

  @override
  String get passwordChangeFeatureComingSoon =>
      'پاس ورڈ تبدیل کرنے کا فیچر جلد آرہا ہے!';

  @override
  String get dataSharingConsent => 'ڈیٹا شیئرنگ کی رضامندی';

  @override
  String get dataSharingConsentText =>
      'ڈیٹا شیئرنگ کو فعال کرکے، آپ ڈیمنشیا ریسرچ سینٹرز کے ساتھ گمنام صحت کے ڈیٹا کو شیئر کرنے کی رضامندی دیتے ہیں۔ یہ ڈیمنشیا کی روک تھام کی سائنسی سمجھ میں ترقی میں مدد کرتا ہے۔ آپ کی ذاتی معلومات کبھی شیئر نہیں کی جائیں گی۔';

  @override
  String get iUnderstand => 'میں سمجھتا ہوں';

  @override
  String get researchParticipationTitle => 'ریسرچ میں شرکت';

  @override
  String get researchParticipationText =>
      'ریسرچ اسٹڈیز میں حصہ لے کر، آپ ڈیمنشیا کی روک تھام کی ریسرچ میں ترقی میں مدد کرتے ہیں۔ آپ کسی بھی وقت کسی بھی اسٹڈی سے باہر نکل سکتے ہیں، اور آپ کی شرکت مکمل طور پر رضاکارانہ ہے۔';

  @override
  String get iAgree => 'میں راضی ہوں';

  @override
  String get privacyPolicyTitle => 'پرائیویسی پالیسی';

  @override
  String get privacyPolicyText =>
      'پرائیویسی پالیسی کا مواد یہاں ہوگا۔ اس میں یہ بھی شامل ہوگا کہ ہم آپ کے ذاتی ڈیٹا کو کیسے جمع کرتے، استعمال کرتے اور محفوظ رکھتے ہیں، UK GDPR کے ضوابط کے مطابق۔';

  @override
  String get close => 'بند کریں';

  @override
  String get termsOfServiceTitle => 'سروس کی شرائط';

  @override
  String get termsOfServiceText =>
      'سروس کی شرائط کا مواد یہاں ہوگا۔ اس میں RememberMe ایپ کے استعمال کے لیے شرائط اور ضوابط شامل ہوں گے۔';

  @override
  String get currentResearchStudiesTitle => 'موجودہ ریسرچ اسٹڈیز';

  @override
  String get researchStudiesFeatureComingSoon =>
      'ریسرچ اسٹڈیز فیچر جلد آرہا ہے!';

  @override
  String get reportABugTitle => 'بگ رپورٹ کریں';

  @override
  String get bugReportingFeatureComingSoon => 'بگ رپورٹنگ فیچر جلد آرہا ہے!';

  @override
  String get helpAndFAQTitle => 'مدد اور FAQ';

  @override
  String get helpSectionComingSoon => 'مدد کا سیکشن جلد آرہا ہے!';

  @override
  String get contactSupportTitle => 'سپورٹ سے رابطہ کریں';

  @override
  String get supportContactFeatureComingSoon =>
      'سپورٹ کنٹیکٹ فیچر جلد آرہا ہے!';

  @override
  String get sendFeedbackTitle => 'فیڈ بیک بھیجیں';

  @override
  String get feedbackFeatureComingSoon => 'فیڈ بیک فیچر جلد آرہا ہے!';

  @override
  String get signOutTitle => 'سائن آؤٹ';

  @override
  String get areYouSureYouWantToSignOut =>
      'کیا آپ یقینی طور پر سائن آؤٹ کرنا چاہتے ہیں؟';

  @override
  String get signedOutSuccessfully => 'کامیابی سے سائن آؤٹ';

  @override
  String get overview => 'جائزہ';

  @override
  String get domains => 'ڈومینز';

  @override
  String get developedInPartnershipWithNHS => 'NHS کے ساتھ شراکت میں تیار';

  @override
  String get healthDomains => 'صحت کے ڈومینز';

  @override
  String get healthDescription =>
      'وزن ٹریکنگ، NHS ہیلتھ چیک یاد دہانیاں، اور صحت کی نگرانی';

  @override
  String get socialEngagement => 'سماجی مشغولیت';

  @override
  String get socialEngagementDescription =>
      'کمیونٹی ایونٹس، فورمز، اور سماجی سرگرمیاں';

  @override
  String get physicalActivity => 'جسمانی سرگرمی';

  @override
  String get physicalActivityDescription =>
      'قدم ٹریکنگ، ورزش کے اہداف، اور سرگرمی کی نگرانی';

  @override
  String get goalAchievedToday => 'آج کا ہدف حاصل';

  @override
  String get cognitiveTraining => 'ادراکی تربیت';

  @override
  String get cognitiveTrainingDescription =>
      'یادداشت کی مشقیں، یادداشت تھراپی، اور دماغی تربیت';

  @override
  String get exerciseCompletedYesterday => 'کل ورزش مکمل';

  @override
  String get healthyDiet => 'صحت مند غذا';

  @override
  String get healthyDietDescription =>
      'غذائیت کے نکات، کھانے کی ٹریکنگ، اور صحت مند کھانے کی رہنمائی';

  @override
  String get reminders => 'یاد دہانیاں';

  @override
  String get viewAll => 'سب دیکھیں';

  @override
  String get healthSurveyDue => 'صحت کا سروے باقی';

  @override
  String get healthSurveyDueDescription =>
      'اپنی ترقی کو ٹریک کرنے کے لیے اپنا صحت کا جائزہ مکمل کریں';

  @override
  String get takeSurvey => 'سروے کریں';

  @override
  String get learnMore => 'مزید سیکھیں';

  @override
  String get recentActivity => 'حالیہ سرگرمی';

  @override
  String get startTrackingYourActivities =>
      'اپنی سرگرمیوں کو ٹریک کرنا شروع کریں';

  @override
  String get healthTipOfTheDay => 'دن کی صحت کی ٹپ';

  @override
  String get stayHydrated => 'ہائیڈریٹ رہیں';

  @override
  String get logActivity => 'لاگ کریں';

  @override
  String get community => 'کمیونٹی';

  @override
  String get back => 'واپس';

  @override
  String get next => 'اگلا';

  @override
  String get getStarted => 'شروع کریں';

  @override
  String get welcomeToRememberMe => 'RememberMe میں خوش آمدید';

  @override
  String get nhsPartnership => 'NHS شراکت';

  @override
  String get supportingYourBrainHealth => 'آپ کے دماغ کی صحت کی حمایت';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'اپنے دماغ کو فعال رکھنے کے لیے روزانہ چہل قدمی اور ورزش';

  @override
  String get healthyNutrition => 'صحت مند غذائیت';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'دماغ کے لیے صحت مند کھانے اور ہائیڈریشن یاد دہانیاں';

  @override
  String get socialConnection => 'سماجی رابطہ';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'کمیونٹی اور دوستوں کے ساتھ جڑے رہیں';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'یادداشت کی مشقیں اور یادداشت تھراپی';

  @override
  String get yourPersonalDashboard => 'آپ کا ذاتی ڈیش بورڈ';

  @override
  String get social => 'سماجی';

  @override
  String get fitness => 'فٹنس';

  @override
  String get cognitive => 'علمی';

  @override
  String get nutrition => 'غذائیت';

  @override
  String get yourPrivacyMatters => 'آپ کی پرائیویسی اہم ہے';

  @override
  String get secureDataStorage => 'محفوظ ڈیٹا اسٹوریج';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'آپ کی معلومات انکرپٹ اور محفوظ طریقے سے ذخیرہ ہیں';

  @override
  String get optInDataSharing => 'اختیاری ڈیٹا شیئرنگ';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'چنیں کہ ریسرچ پارٹنرز کے ساتھ ڈیٹا شیئر کرنا ہے یا نہیں';

  @override
  String get transparentPolicies => 'شفاف پالیسیاں';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'واضح پرائیویسی پالیسیاں اور ڈیٹا استعمال کی معلومات';

  @override
  String get dataControl => 'ڈیٹا کنٹرول';

  @override
  String get deleteYourDataAtAnyTime => 'کسی بھی وقت اپنا ڈیٹا ڈیلیٹ کریں';

  @override
  String get brainHealthyEating => 'دماغ کے لیے صحت مند کھانا';

  @override
  String get nutritionTips => 'غذائیت کی تجاویز';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'دماغ کی صحت کی حمایت اور ڈیمنشیا کے خطرے کو کم کرنے کے لیے ثبوت پر مبنی غذائی سفارشات';

  @override
  String get dietReflection => 'غذائی عکاسی';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'اپنے کھانے لاگ کریں اور اپنے غذائی انتخاب پر ذاتی فیڈ بیک حاصل کریں';

  @override
  String get hydrationTracker => 'ہائیڈریشن ٹریکر';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'اپنے روزانہ پانی کے استعمال کو ٹریک کریں اور ہائیڈریٹ رہنے کے لیے یاد دہانیاں حاصل کریں';

  @override
  String get leafyGreens => 'پتے دار سبزیاں';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'پالک، کیل اور دیگر سبز سبزیاں فولیٹ اور وٹامن K سے بھرپور ہیں';

  @override
  String get berries => 'بیری';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'بلیوبیری، سٹرابیری اور دیگر بیریوں میں اینٹی آکسیڈنٹس ہوتے ہیں';

  @override
  String get wholeGrains => 'مکمل اناج';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'بھورا چاول، کوینوآ اور جئی پائیدار توانائی اور فائبر فراہم کرتے ہیں';

  @override
  String get fish => 'مچھلی';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'سامن، سارڈین اور دیگر چکنائی والی مچھلیاں اومیگا-3 کے بہترین ذرائع ہیں';

  @override
  String get mealTracking => 'کھانا ٹریکنگ';

  @override
  String get mealTrackingFeatureComingSoon => 'کھانا ٹریکنگ فیچر جلد آرہا!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'ہائیڈریشن ٹریکنگ فیچر جلد آرہا!';

  @override
  String get stayActive => 'سرگرم رہیں';

  @override
  String get activityTracker => 'سرگرمی ٹریکر';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'اسمارٹ واچ انٹیگریشن کے ساتھ اپنے روزانہ قدم، چہل قدمی اور جسمانی سرگرمیوں کو ٹریک کریں';

  @override
  String get exerciseGoals => 'ورزش کے اہداف';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'اپنے ہفتہ وار ورزش کے اہداف طے کریں اور ٹریک کریں، جس میں چلنا، طاقت کی تربیت اور کارڈیو شامل ہے';

  @override
  String get socialActivities => 'سماجی سرگرمیاں';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'گروپ واکس، فٹنس کلاسز میں شامل ہوں اور حوصلہ افزائی کے لیے دوسروں سے جڑیں';

  @override
  String get fitnessTips => 'فٹنس ٹپس';

  @override
  String get mixCardioAndStrengthTraining =>
      'کارڈیو اور طاقت کی تربیت مکس کریں';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'ایروبک ورزش اور پٹھوں کو مضبوط بنانے والی سرگرمیاں دونوں مجموعی صحت کے لیے اہم ہیں۔';

  @override
  String get stayConsistent => 'مسلسل رہیں';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'باقاعدہ سرگرمی شدید لیکن بے قاعدہ ورزش سیشنز سے زیادہ فائدہ مند ہے۔';

  @override
  String get listenToYourBody => 'اپنے جسم کی بات سنیں';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'آہستہ شروع کریں اور شدت کو بتدریج بڑھائیں۔ نئی ورزشیں شروع کرنے سے پہلے اپنے ڈاکٹر سے مشورہ کریں۔';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'ورزش کا ہدف طے کرنے کا فیچر جلد آرہا!';

  @override
  String get brainTraining => 'دماغی تربیت';

  @override
  String get brainExercises => 'دماغی مشقیں';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'یادداشت کے کھیل، توجہ کی تربیت، اور دماغی تشخیصات تاکہ آپ کا دماغ فعال رہے';

  @override
  String get reminiscenceTherapy => 'یادداشت تھراپی';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'یادداشتیں، کہانیاں اور تجربات شیئر کریں تاکہ دماغی کام اور جذباتی بہبود برقرار رہے';

  @override
  String get cognitiveAssessment => 'دماغی تشخیص';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'آپ کی دماغی صحت کو ٹریک کرنے اور بہتری کے شعبوں کی شناخت کے لیے باقاعدہ دماغی ٹیسٹنگ';

  @override
  String get brainHealthTips => 'دماغی صحت کے نکات';

  @override
  String get stayMentallyActive => 'ذہنی طور پر فعال رہیں';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'پڑھیں، پزل کریں، نئے ہنر سیکھیں، یا ایسے شوق میں مشغول ہوں جو آپ کے دماغ کو چیلنج کرتے ہیں۔';

  @override
  String get shareYourMemories => 'اپنی یادداشتیں شیئر کریں';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'گذشتہ تجربات کے بارے میں بات کرنا یادداشت اور جذباتی تعلقات برقرار رکھنے میں مدد کرتا ہے۔';

  @override
  String get staySociallyConnected => 'سماجی طور پر جڑے رہیں';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'دماغی صحت اور جذباتی بہبود کے لیے باقاعدہ سماجی تعامل ضروری ہے۔';

  @override
  String get manageStress => 'تناؤ کا انتظام کریں';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'دیرپا تناؤ یادداشت اور دماغی کام پر منفی اثر ڈال سکتا ہے۔';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'یادداشت تھراپی سیشن جلد آرہے!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'دماغی تشخیص کے ٹولز جلد آرہے!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'اپنی کمیونٹی کے ساتھ جڑے رہیں اور تنہائی کا مقابلہ کریں';

  @override
  String get socialFeatures => 'سماجی فیچرز';

  @override
  String get communityEvents => 'کمیونٹی ایونٹس';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'مقامی فنون، دستکاری، اور سماجی سرگرمیاں دریافت کریں جو ڈیمنشیا سپورٹ سینٹرز کی طرف سے منظم کی جاتی ہیں';

  @override
  String get communityForum => 'کمیونٹی فورم';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'دوسروں کے ساتھ جڑیں، تجربات شیئر کریں، اور کمیونٹی سے سپورٹ حاصل کریں';

  @override
  String get dementiaEncyclopedia => 'ڈیمنشیا انسائیکلوپیڈیا';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'ڈیمنشیا، روک تھام کی حکمت عملیوں کے بارے میں جانیں، اور مددگار وسائل تلاش کریں';

  @override
  String get socialConnectionTips => 'سماجی رابطے کے نکات';

  @override
  String get joinLocalGroups => 'مقامی گروپس میں شامل ہوں';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'اپنے علاقے میں آرٹس اور کرافٹس ورکشاپس، واکنگ گروپس، یا ہوبی کلبز تلاش کریں۔';

  @override
  String get stayInTouch => 'رابطے میں رہیں';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'خاندان اور دوستوں کے ساتھ باقاعدہ فون کالز یا ویڈیو چیٹس بڑا فرق لا سکتے ہیں۔';

  @override
  String get volunteer => 'رضاکار';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'اپنی کمیونٹی کو واپس دینا مقصد اور سماجی رابطہ فراہم کر سکتا ہے۔';

  @override
  String get learnSomethingNew => 'کچھ نیا سیکھیں';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'کلاسز لینا یا لرننگ گروپس میں شامل ہونا آپ کو ہم خیال لوگوں سے ملنے میں مدد کر سکتا ہے۔';

  @override
  String get couldNotOpenNHSWebsite => 'NHS ویب سائٹ نہیں کھولی جا سکی';

  @override
  String get couldNotOpenNHSBookingWebsite =>
      'NHS بکنگ ویب سائٹ نہیں کھولی جا سکی';

  @override
  String get healthCheckComplete => 'ہیلتھ چیک مکمل';

  @override
  String get healthCheckOverdue => 'ہیلتھ چیک اوورڈیو';

  @override
  String get healthCheckDueSoon => 'ہیلتھ چیک جلد';

  @override
  String get benefitsOfNHSHealthCheck => 'NHS ہیلتھ چیک کے فوائد';

  @override
  String get earlyDetection => 'جلدی پتہ چلنا';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'سنجیدہ مسائل بننے سے پہلے صحت کے خطرات کی شناخت کرتا ہے';

  @override
  String get dementiaPrevention => 'ڈیمنشیا کی روک تھام';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'لائف سٹائل مشورے کے ذریعے ڈیمنشیا کے خطرے کو کم کرنے میں مدد کرتا ہے';

  @override
  String get lifestyleAdvice => 'لائف سٹائل مشورہ';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'خوراک، ورزش اور صحت مند زندگی کے بارے میں ذاتی مشورہ حاصل کریں';

  @override
  String get freeService => 'مفت سروس';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'بالکل مفت اور تقریباً 20-30 منٹ لگتے ہیں';

  @override
  String get learnMoreAboutHealthChecks => 'ہیلتھ چیکس کے بارے میں مزید جانیں';

  @override
  String get markAsNotCompleted => 'مکمل نہیں ہوا کے طور پر نشان زد کریں';

  @override
  String get bookYourHealthCheck => 'اپنا ہیلتھ چیک بک کریں';

  @override
  String get currentWeight => 'موجودہ وزن';

  @override
  String get updated => 'اپڈیٹ';

  @override
  String get notRecorded => 'ریکارڈ نہیں';

  @override
  String get addYourHeightToCalculateBMI =>
      'BMI حساب کرنے کے لیے اپنی اونچائی شامل کریں';

  @override
  String get logNewWeight => 'نیا وزن لاگ کریں';

  @override
  String get enterYourWeight => 'اپنا وزن درج کریں';

  @override
  String get pleaseEnterYourWeight => 'براہ کرم اپنا وزن درج کریں';

  @override
  String get pleaseEnterAValidNumber => 'براہ کرم ایک درست نمبر درج کریں';

  @override
  String get weightHistory => 'وزن کی تاریخ';

  @override
  String get trackYourWeightChangesOverTime =>
      'وقت کے ساتھ اپنے وزن کی تبدیلیوں کو ٹریک کریں';

  @override
  String get weightChartComingSoon => 'وزن چارٹ جلد آرہا';

  @override
  String get bmiInformation => 'BMI معلومات';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'اپنے BMI حساب کرنے کے لیے اپنی اونچائی اور وزن شامل کریں';

  @override
  String get below18Point5 => '18.5 سے کم';

  @override
  String get bmiRange18Point5To24Point9 => '18.5 - 24.9';

  @override
  String get bmiRange25Point0To29Point9 => '25.0 - 29.9';

  @override
  String get bmiRange30Point0AndAbove => '30.0 اور اس سے اوپر';

  @override
  String get todaysActivity => 'آج کی سرگرمی';

  @override
  String get steps => 'قدم';

  @override
  String get distance => 'فاصلہ';

  @override
  String get calories => 'کیلوریز';

  @override
  String get duration => 'مدت';

  @override
  String get logWalk => 'چہل قدمی ریکارڈ کریں';

  @override
  String get logExercise => 'ورزش ریکارڈ کریں';

  @override
  String get setGoals => 'ہدف مقرر کریں';

  @override
  String get viewHistory => 'تاریخ دیکھیں';

  @override
  String get weeklyProgress => 'ہفتہ وار ترقی';

  @override
  String get activityChartsComingSoon => 'سرگرمی کے چارٹ جلد آرہے ہیں!';

  @override
  String get goalSettingFeatureComingSoon =>
      'ہدف مقرر کرنے کی خصوصیت جلد آرہی ہے!';

  @override
  String get activityHistory => 'سرگرمی کی تاریخ';

  @override
  String get activityHistoryFeatureComingSoon =>
      'سرگرمی کی تاریخ کی خصوصیت جلد آرہی ہے!';

  @override
  String get dailyBrainTeaser => 'روزانہ دماغی پہیلی';

  @override
  String get aQuickPuzzleToStartYourDay =>
      'اپنا دن شروع کرنے کے لیے ایک تیز پہیلی';

  @override
  String get memoryMatchGame => 'یادداشت میچ گیم';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'اپنی قلیل مدتی یادداشت کو بہتر بنانے کے لیے کارڈز کے جوڑے میچ کریں';

  @override
  String get wordAssociation => 'لفظی تعلق';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'الفاظ کو جوڑیں اور اپنی ذخیرہ الفاظ کو بڑھائیں';

  @override
  String get activities => 'سرگرمیاں';

  @override
  String get reminiscence => 'یادداشت';

  @override
  String get continueButton => 'جاری رکھیں';

  @override
  String get start => 'شروع';

  @override
  String get noPromptAvailable => 'کوئی پرامپٹ دستیاب نہیں';

  @override
  String get review => 'جائزہ';

  @override
  String get trainingProgress => 'ٹریننگ کی ترقی';

  @override
  String get activityProgress => 'سرگرمی کی ترقی';

  @override
  String get reminiscenceSessions => 'یادداشت کے سیشن';

  @override
  String get untitledSession => 'بے عنوان سیشن';

  @override
  String get reminiscenceSession => 'یادداشت کا سیشن';

  @override
  String get theMediterraneanDiet => 'بحیرہ روم کی غذا';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'پھلوں، سبزیوں، مکمل اناج اور صحت مند چربی جیسے زیتون کا تیل پر توجہ دیں۔ یہ غذا ڈیمنشیا کے خطرے کو کم کرنے سے منسلک ہے';

  @override
  String get brainHealth => 'دماغی صحت';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'روزانہ 6-8 گلاس پانی پیئیں۔ مناسب ہائیڈریشن دماغی کام اور مجموعی صحت کے لیے ضروری ہے';

  @override
  String get hydration => 'ہائیڈریشن';

  @override
  String get omega3FattyAcids => 'اومگا-3 فیٹی ایسڈ';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'اپنی غذا میں مچھلی جیسے سالمن، میکریل اور سارڈین شامل کریں۔ اومیگا-3 دماغی صحت کو سپورٹ کرتے ہیں اور سوزش کو کم کر سکتے ہیں';

  @override
  String get antioxidantRichFoods => 'اینٹی آکسیڈینٹ سے بھرپور غذائیں';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'بیری، گہرے پتوں والی سبزیاں اور رنگین سبزیاں کھائیں۔ اینٹی آکسیڈینٹ دماغی خلیات کو نقصان سے بچانے میں مدد کرتے ہیں';

  @override
  String get general => 'عمومی';

  @override
  String get limitProcessedFoods => 'پروسیسڈ فوڈز کو محدود کریں';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'پروسیسڈ میٹ، میٹھے سنیکس اور فرائی فوڈز کی مقدار کم کریں۔ یہ سوزش اور علمی زوال میں حصہ ڈال سکتے ہیں';

  @override
  String get vitaminDForBrainHealth => 'دماغی صحت کے لیے وٹامن ڈی';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'دھوپ، مضبوط غذائیں یا سپلیمنٹس کے ذریعے مناسب وٹامن ڈی حاصل کریں۔ وٹامن ڈی کی کمی علمی مسائل سے منسلک ہے';

  @override
  String get vitamins => 'وٹامنز';

  @override
  String get healthyEatingForBrainHealth => 'دماغی صحت کے لیے صحت مند کھانا';

  @override
  String get allTips => 'تمام تجاویز';

  @override
  String get tipBookmarked => 'تجویز بک مارک کی گئی!';

  @override
  String get bookmarkRemoved => 'بک مارک ہٹا دیا گیا';

  @override
  String get generalInformation => 'عمومی معلومات';

  @override
  String get symptoms => 'علامات';

  @override
  String get riskFactors => 'خطرے کے عوامل';

  @override
  String get types => 'اقسام';

  @override
  String get diagnosis => 'تشخیص';

  @override
  String get treatment => 'علاج';

  @override
  String get prevention => 'احتیاط';

  @override
  String get caregiving => 'دیکھ بھال';

  @override
  String get entryBookmarked => 'انٹری بک مارک کی گئی!';

  @override
  String get wellbeing => 'بہبود';

  @override
  String get createNewPost => 'نیا پوسٹ بنائیں';

  @override
  String get postCreationFeatureComingSoon =>
      'پوسٹ بنانے کی خصوصیت جلد آرہی ہے!';

  @override
  String get postDetails => 'پوسٹ کی تفصیلات';

  @override
  String get reply => 'جواب دیں';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'مقامی ایونٹس میں شامل ہوں جو ادراکی صحت اور سماجی مشغولیت کی حمایت کے لیے ڈیزائن کیے گئے ہیں';

  @override
  String get allEvents => 'تمام ایونٹس';

  @override
  String get arts => 'فنون';

  @override
  String get music => 'موسیقی';

  @override
  String get education => 'تعلیم';

  @override
  String get fullyBooked => 'مکمل بک';

  @override
  String get register => 'رجسٹر کریں';

  @override
  String get joinEvent => 'ایونٹ میں شامل ہوں';

  @override
  String get location => 'مقام';

  @override
  String get date => 'تاریخ';

  @override
  String get time => 'وقت';

  @override
  String get participants => 'شرکاء';

  @override
  String get organizer => 'منظم';

  @override
  String get contact => 'رابطہ';

  @override
  String get registerForEvent => 'ایونٹ کے لیے رجسٹر کریں';

  @override
  String get surveys => 'سروے';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'باقاعدہ جائزے آپ کی ترقی کو ٹریک کرنے اور بہتری کے شعبوں کی شناخت میں مدد کرتے ہیں';

  @override
  String get allSurveys => 'تمام سروے';

  @override
  String get comprehensive => 'جامع';

  @override
  String get lifestyle => 'طرز زندگی';

  @override
  String get reviewResults => 'نتائج کا جائزہ لیں';

  @override
  String get startSurvey => 'سروے شروع کریں';

  @override
  String get previous => 'پچھلا';

  @override
  String get complete => 'مکمل';

  @override
  String get yes => 'ہاں';

  @override
  String get no => 'نہیں';

  @override
  String get unsupportedQuestionType => 'غیر معاون سوال کی قسم';

  @override
  String get rewards => 'انعامات';

  @override
  String get availablePoints => 'دستیاب پوائنٹس';

  @override
  String get totalEarned => 'کل کمایا';

  @override
  String get availableRewards => 'دستیاب انعامات';

  @override
  String get partner => 'پارٹنر';

  @override
  String get redeem => 'واپس لیں';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'اس انعام کو واپس لینے کے لیے کافی پوائنٹس نہیں';

  @override
  String get redeemReward => 'انعام واپس لیں';

  @override
  String get dailyDietReflection => 'روزانہ غذا کا عکاس';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'اپنی کھانے کی عادات پر عکاس کریں اور صحت مند غذا کی طرف اپنی ترقی کو ٹریک کریں';

  @override
  String get saveReflection => 'عکاس محفوظ کریں';

  @override
  String get reflection => 'عکاس';

  @override
  String get areasForImprovement => 'بہتری کے شعبے';

  @override
  String get recentReflections => 'حالیہ عکاس';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'براہ کرم جمع کرنے سے پہلے ایک عکاس لکھیں';

  @override
  String get excellent => 'بہترین';

  @override
  String get good => 'اچھا';

  @override
  String get average => 'اوسط';

  @override
  String get poor => 'کمزور';

  @override
  String get veryPoor => 'بہت کمزور';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'چھوٹی بہتریوں کے لیے جگہ کے ساتھ اچھے انتخاب';

  @override
  String get moreFruitsAndVegetables => 'زیادہ پھل اور سبزیاں';

  @override
  String get reduceProcessedFoods => 'پروسیسڈ فوڈز کم کریں';

  @override
  String get increaseWaterIntake => 'پانی کی مقدار بڑھائیں';

  @override
  String get moreWholeGrains => 'زیادہ مکمل اناج';

  @override
  String get reduceSugarIntake => 'چینی کی مقدار کم کریں';

  @override
  String get moreLeanProteins => 'زیادہ دبلا پروٹین';

  @override
  String get betterPortionControl => 'بہتر حصہ کنٹرول';

  @override
  String get regularMealTiming => 'باقاعدہ کھانے کا وقت';

  @override
  String get languageChanged => 'زبان کامیابی سے تبدیل ہو گئی';

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
      'کیا آپ یقینی طور پر انعام واپس لینا چاہتے ہیں';

  @override
  String get forText => 'کے لیے';

  @override
  String get points => 'پوائنٹس';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'آپ کی ترقی';

  @override
  String get survey => 'سروے';

  @override
  String get nhsHealthCheckCompleted => 'NHS صحت کی جانچ مکمل';

  @override
  String get nhsHealthCheckRecommended => 'NHS صحت کی جانچ سفارش';

  @override
  String get todaysStats => 'آج کے اعداد و شمار';

  @override
  String get water => 'پانی';

  @override
  String get sleep => 'نیند';

  @override
  String get glasses => 'گلاس';

  @override
  String get hours => 'گھنٹے';

  @override
  String get ofText => 'کے';

  @override
  String get urgent => 'فوری';

  @override
  String get view => 'دیکھیں';

  @override
  String get activityStartedMock => 'سرگرمی شروع! (Mock)';

  @override
  String get reminiscenceSessionStartedMock => 'یادداشت سیشن شروع! (Mock)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'صحت کی جانچ مکمل کے طور پر نشان زد!';

  @override
  String get weightLogged => 'وزن ریکارڈ';

  @override
  String get reflectionSavedSuccessfully => 'عکاسی کامیابی سے محفوظ!';

  @override
  String get surveyCompletedSuccessfully => 'سروے کامیابی سے مکمل!';

  @override
  String get successfullyRedeemed => 'کامیابی سے واپس لیا';

  @override
  String get notesOptional => 'نوٹس (اختیاری)';

  @override
  String get writeYourThoughtsHere => 'اپنے خیالات یہاں لکھیں...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'آج اپنی غذا کی کوالٹی کا اندازہ کیسے کریں گے؟';

  @override
  String get whatDidYouEatToday =>
      'آج آپ نے کیا کھایا؟ اپنے کھانے کے انتخاب کے بارے میں کیسا محسوس کیا؟ کیا اچھا گیا اور کیا بہتر کیا جا سکتا ہے؟';

  @override
  String get visualizeYourWeightTrends =>
      'انٹرایکٹو چارٹس کے ساتھ وقت کے ساتھ اپنے وزن کے رجحانات اور ترقی کو تصور کریں۔';

  @override
  String get question => 'سوال';

  @override
  String get ofQuestions => 'کے';

  @override
  String get surveyResultsFeatureComingSoon =>
      'سروے نتائج کی خصوصیت جلد آرہی ہے!';

  @override
  String get whatIsAnNHSHealthCheck => 'NHS صحت کی جانچ کیا ہے؟';

  @override
  String get rememberMeAndYourHealth => 'RememberMe اور آپ کی صحت';

  @override
  String get regularHealthChecksAreImportant =>
      'باقاعدہ صحت کی جانچ دماغی صحت کو برقرار رکھنے اور ڈیمنشیا کے خطرے کو کم کرنے کا ایک اہم حصہ ہے۔ NHS صحت کی جانچ قیمتی بصیرت فراہم کرتی ہے جو آپ کے RememberMe سفر کو مکمل کرتی ہے۔';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'وقت کے ساتھ اپنے ڈیمنشیا کے خطرے کے عوامل کی نگرانی کے لیے RememberMe میں اپنے صحت کی جانچ کے نتائج کا ریکارڈ رکھیں۔';

  @override
  String get iveAlreadyHadMyHealthCheck =>
      'میں نے پہلے ہی اپنی صحت کی جانچ کرائی ہے';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'کافی واؤچر - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Cambridge Coffee House میں مفت کافی کا لطف اٹھائیں، ایک مقامی آزاد کیفے۔';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'کتابوں کی دکان رعایت - Heffers';

  @override
  String get heffersBookshop => 'Heffers کتابوں کی دکان';

  @override
  String get solveThePuzzle => 'پہیلی حل کریں۔';

  @override
  String get submitYourAnswer => 'اپنا جواب جمع کریں۔';

  @override
  String get whatHasAnEyeButCannotSee =>
      'کسی کے پاس آنکھ ہے، لیکن دیکھ نہیں سکتا؟';

  @override
  String get flipTwoCards => 'دو کارڈ پلٹیں۔';

  @override
  String get ifTheyMatchTheyDisappear =>
      'اگر وہ میل کھاتے ہیں، تو وہ غائب ہو جاتے ہیں۔';

  @override
  String get matchAllPairs => 'تمام جوڑے میل کریں۔';

  @override
  String get startWithAWord => 'ایک لفظ سے شروع کریں۔';

  @override
  String get listAssociatedWords => 'منسلک الفاظ کی فہرست بنائیں۔';

  @override
  String get tryToMakeAChain => 'زنجیر بنانے کی کوشش کریں۔';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'آپ کا پسندیدہ بچپن کا کھیل یا کھلونا کیا تھا؟';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'میرا پسندیدہ کھلونا ایک سرخ ٹرین سیٹ تھا۔ میں نے گھنٹوں ٹریک بناتے اور سفر کی تصورات کرتے گزارے۔';

  @override
  String get describeAMemorableFamilyHoliday =>
      'ایک یادگار خاندانی تعطیلات کا بیان کریں۔';

  @override
  String get min => 'منٹ';

  @override
  String get status => 'حالت';

  @override
  String get difficulty => 'مشکل';

  @override
  String get registrationSuccessful =>
      'رجسٹریشن کامیاب! آپ کو تصدیقی ای میل موصول ہوگا۔';

  @override
  String get replyPostedSuccessfully => 'جواب کامیابی سے پوسٹ!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'سرگرمی لاگنگ کی خصوصیت جلد آرہی ہے!';

  @override
  String get maintainAHealthyWeight => 'صحت مند وزن برقرار رکھیں';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'بہترین صحت کے لیے اپنا BMI 18.5 اور 24.9 کے درمیان رکھیں۔';

  @override
  String get regularHealthChecks => 'باقاعدہ صحت کی جانچ';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'ہر 5 سال میں اپنی مفت NHS صحت کی جانچ بک کریں۔';

  @override
  String get monitorYourVitals => 'اپنے اہم پیرامیٹرز کی نگرانی کریں';

  @override
  String get knowYourNumbers => 'اپنے نمبرز جانیں';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'اپنے بلڈ پریشر، کولیسٹرول اور بلڈ شوگر کی باقاعدہ نگرانی کریں۔';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'ہفتے میں کم از کم 150 منٹ اعتدال پسند ورزش کا ہدف رکھیں۔';

  @override
  String get label => 'لیبل';

  @override
  String get likes => 'پسند';
}
