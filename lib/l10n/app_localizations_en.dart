// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS Dementia Prevention Lifestyle Tracker';

  @override
  String get health => 'Health';

  @override
  String get healthMonitoring => 'Health Monitoring';

  @override
  String get healthMonitoringDescription =>
      'Track your weight, BMI, and health check status';

  @override
  String get healthFeatures => 'Health Features';

  @override
  String get quickActions => 'Quick Actions';

  @override
  String get weightDiary => 'Weight Diary';

  @override
  String get weightDiaryDescription =>
      'Log your daily weight and track BMI changes over time';

  @override
  String lastLogged(Object weight) {
    return 'Last logged: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'Not logged yet';

  @override
  String get nhsHealthCheck => 'NHS Health Check';

  @override
  String get nhsHealthCheckDescription =>
      'Book your free NHS Health Check to monitor your health';

  @override
  String completed(Object date) {
    return 'Completed $date';
  }

  @override
  String get completedRecently => 'Completed recently';

  @override
  String get dueNow => 'Due now - Book your free check';

  @override
  String get notDueYet => 'Not due yet';

  @override
  String get healthProfile => 'Health Profile';

  @override
  String get healthProfileDescription =>
      'Manage your medical conditions, medications, and emergency contacts';

  @override
  String gpRegistered(Object gpName) {
    return 'GP: $gpName';
  }

  @override
  String get noGpRegistered => 'No GP registered';

  @override
  String get logWeight => 'Log Weight';

  @override
  String get healthTips => 'Health Tips';

  @override
  String get healthOverview => 'Health Overview';

  @override
  String get weight => 'Weight';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'BMI Category';

  @override
  String get notSet => 'Not set';

  @override
  String get calculate => 'Calculate';

  @override
  String get unknown => 'Unknown';

  @override
  String get underweight => 'Underweight';

  @override
  String get normalWeight => 'Normal weight';

  @override
  String get overweight => 'Overweight';

  @override
  String get obese => 'Obese';

  @override
  String get bmiMessageUnderweight =>
      'Consider speaking with your GP about healthy weight gain strategies.';

  @override
  String get bmiMessageNormal =>
      'Great! You\'re in a healthy weight range. Keep it up!';

  @override
  String get bmiMessageOverweight =>
      'Consider speaking with your GP about healthy weight management.';

  @override
  String get bmiMessageObese =>
      'Please speak with your GP about weight management options.';

  @override
  String get bmiMessageDefault =>
      'Monitor your weight regularly for optimal health.';

  @override
  String get progress => 'Progress';

  @override
  String get noUserDataAvailable => 'No user data available';

  @override
  String get healthProfileManagementComingSoon =>
      'Health Profile management coming soon';

  @override
  String get today => 'today';

  @override
  String get yesterday => 'yesterday';

  @override
  String daysAgo(Object count) {
    return '$count days ago';
  }

  @override
  String weeksAgo(Object count) {
    return '$count weeks ago';
  }

  @override
  String monthsAgo(Object count) {
    return '$count months ago';
  }

  @override
  String yearsAgo(Object count) {
    return '$count years ago';
  }

  @override
  String get language => 'Language';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get selectLanguageDescription =>
      'Choose your preferred language for the app';

  @override
  String get systemLanguageSettings => 'System Language Settings';

  @override
  String get systemLanguageSettingsDescription =>
      'Open device language settings';

  @override
  String get systemLanguageSettingsDialog =>
      'This will open your device\'s language settings. The app will automatically detect and use your system language preference.';

  @override
  String get systemSettingsFallback =>
      'Please go to your device\'s Settings > Language & Region to change the system language.';

  @override
  String get cancel => 'Cancel';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get settings => 'Settings';

  @override
  String get profile => 'Profile';

  @override
  String get userName => 'User Name';

  @override
  String get userEmail => 'user@example.com';

  @override
  String get changePassword => 'Change Password';

  @override
  String get notifications => 'Notifications';

  @override
  String get pushNotifications => 'Push Notifications';

  @override
  String get receiveRemindersAndUpdates => 'Receive reminders and updates';

  @override
  String get dailyHealthReminders => 'Daily Health Reminders';

  @override
  String get morningRemindersForHealthTracking =>
      'Morning reminders for health tracking';

  @override
  String get surveyReminders => 'Survey Reminders';

  @override
  String get notificationsForPendingSurveys =>
      'Notifications for pending surveys';

  @override
  String get privacyAndDataSharing => 'Privacy & Data Sharing';

  @override
  String get dataPrivacyInfo =>
      'Your data privacy is important to us. All data sharing is optional and can be changed at any time.';

  @override
  String get shareDataWithResearchCenters => 'Share Data with Research Centers';

  @override
  String get helpAdvanceDementiaResearch =>
      'Help advance dementia research (anonymized data only)';

  @override
  String get healthDataSharing => 'Health Data Sharing';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'Share health metrics with your healthcare provider';

  @override
  String get locationTracking => 'Location Tracking';

  @override
  String get allowLocationDataForActivityTracking =>
      'Allow location data for activity tracking';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get termsOfService => 'Terms of Service';

  @override
  String get researchParticipation => 'Research Participation';

  @override
  String get researchParticipationInfo =>
      'Participating in research helps advance dementia prevention and treatment.';

  @override
  String get participateInResearchStudies => 'Participate in Research Studies';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'Join studies conducted by Lucy Cavendish College';

  @override
  String get currentResearchStudies => 'Current Research Studies';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'View available studies you can participate in';

  @override
  String get appInformation => 'App Information';

  @override
  String get version => 'Version';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'Developed by';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => 'Report a Bug';

  @override
  String get support => 'Support';

  @override
  String get helpAndFAQ => 'Help & FAQ';

  @override
  String get contactSupport => 'Contact Support';

  @override
  String get sendFeedback => 'Send Feedback';

  @override
  String get signOut => 'Sign Out';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get profileEditingFeatureComingSoon =>
      'Profile editing feature coming soon!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'Change Password';

  @override
  String get passwordChangeFeatureComingSoon =>
      'Password change feature coming soon!';

  @override
  String get dataSharingConsent => 'Data Sharing Consent';

  @override
  String get dataSharingConsentText =>
      'By enabling data sharing, you consent to sharing anonymized health data with dementia research centers. This helps advance scientific understanding of dementia prevention. Your personal information will never be shared.';

  @override
  String get iUnderstand => 'I Understand';

  @override
  String get researchParticipationTitle => 'Research Participation';

  @override
  String get researchParticipationText =>
      'By participating in research studies, you help advance dementia prevention research. You can opt out of any study at any time, and your participation is completely voluntary.';

  @override
  String get iAgree => 'I Agree';

  @override
  String get privacyPolicyTitle => 'Privacy Policy';

  @override
  String get privacyPolicyText =>
      'Privacy Policy content would go here. This would include detailed information about how we collect, use, and protect your personal data, in compliance with UK GDPR regulations.';

  @override
  String get close => 'Close';

  @override
  String get termsOfServiceTitle => 'Terms of Service';

  @override
  String get termsOfServiceText =>
      'Terms of Service content would go here. This would include the terms and conditions for using the RememberMe app.';

  @override
  String get currentResearchStudiesTitle => 'Current Research Studies';

  @override
  String get researchStudiesFeatureComingSoon =>
      'Research studies feature coming soon!';

  @override
  String get reportABugTitle => 'Report a Bug';

  @override
  String get bugReportingFeatureComingSoon =>
      'Bug reporting feature coming soon!';

  @override
  String get helpAndFAQTitle => 'Help & FAQ';

  @override
  String get helpSectionComingSoon => 'Help section coming soon!';

  @override
  String get contactSupportTitle => 'Contact Support';

  @override
  String get supportContactFeatureComingSoon =>
      'Support contact feature coming soon!';

  @override
  String get sendFeedbackTitle => 'Send Feedback';

  @override
  String get feedbackFeatureComingSoon => 'Feedback feature coming soon!';

  @override
  String get signOutTitle => 'Sign Out';

  @override
  String get areYouSureYouWantToSignOut => 'Are you sure you want to sign out?';

  @override
  String get signedOutSuccessfully => 'Signed out successfully';

  @override
  String get overview => 'Overview';

  @override
  String get domains => 'Domains';

  @override
  String get developedInPartnershipWithNHS =>
      'Developed in partnership with the NHS';

  @override
  String get healthDomains => 'Health Domains';

  @override
  String get healthDescription =>
      'Weight tracking, NHS Health Check reminders, and health monitoring';

  @override
  String get socialEngagement => 'Social Engagement';

  @override
  String get socialEngagementDescription =>
      'Community events, forums, and social activities';

  @override
  String get physicalActivity => 'Physical Activity';

  @override
  String get physicalActivityDescription =>
      'Step tracking, exercise goals, and activity monitoring';

  @override
  String get goalAchievedToday => 'Goal achieved today';

  @override
  String get cognitiveTraining => 'Cognitive Training';

  @override
  String get cognitiveTrainingDescription =>
      'Memory exercises, reminiscence therapy, and brain training';

  @override
  String get exerciseCompletedYesterday => 'Exercise completed yesterday';

  @override
  String get healthyDiet => 'Healthy Diet';

  @override
  String get healthyDietDescription =>
      'Nutrition tips, meal tracking, and healthy eating guidance';

  @override
  String get reminders => 'Reminders';

  @override
  String get viewAll => 'View All';

  @override
  String get healthSurveyDue => 'Health Survey Due';

  @override
  String get healthSurveyDueDescription =>
      'Complete your health assessment to track your progress';

  @override
  String get takeSurvey => 'Take Survey';

  @override
  String get learnMore => 'Learn More';

  @override
  String get recentActivity => 'Recent Activity';

  @override
  String get startTrackingYourActivities => 'Start tracking your activities';

  @override
  String get healthTipOfTheDay => 'Health Tip of the Day';

  @override
  String get stayHydrated => 'Stay Hydrated';

  @override
  String get logActivity => 'Log';

  @override
  String get community => 'Community';

  @override
  String get back => 'Back';

  @override
  String get next => 'Next';

  @override
  String get getStarted => 'Get Started';

  @override
  String get welcomeToRememberMe => 'Welcome to RememberMe';

  @override
  String get nhsPartnership => 'NHS Partnership';

  @override
  String get supportingYourBrainHealth => 'Supporting Your Brain Health';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'Daily walks and exercise to keep your brain active';

  @override
  String get healthyNutrition => 'Healthy Nutrition';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'Brain-healthy foods and hydration reminders';

  @override
  String get socialConnection => 'Social Connection';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'Stay connected with community and friends';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'Memory exercises and reminiscence therapy';

  @override
  String get yourPersonalDashboard => 'Your Personal Dashboard';

  @override
  String get social => 'Social';

  @override
  String get fitness => 'Fitness';

  @override
  String get cognitive => 'Cognitive';

  @override
  String get nutrition => 'Nutrition';

  @override
  String get yourPrivacyMatters => 'Your Privacy Matters';

  @override
  String get secureDataStorage => 'Secure Data Storage';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'Your information is encrypted and stored securely';

  @override
  String get optInDataSharing => 'Opt-in Data Sharing';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'Choose whether to share data with research partners';

  @override
  String get transparentPolicies => 'Transparent Policies';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'Clear privacy policies and data usage information';

  @override
  String get dataControl => 'Data Control';

  @override
  String get deleteYourDataAtAnyTime => 'Delete your data at any time';

  @override
  String get brainHealthyEating => 'Brain-Healthy Eating';

  @override
  String get nutritionTips => 'Nutrition Tips';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'Evidence-based dietary recommendations to support brain health and reduce dementia risk';

  @override
  String get dietReflection => 'Diet Reflection';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'Log your meals and get personalized feedback on your nutrition choices';

  @override
  String get hydrationTracker => 'Hydration Tracker';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'Track your daily water intake and receive reminders to stay hydrated';

  @override
  String get leafyGreens => 'Leafy Greens';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'Spinach, kale, and other greens are rich in folate and vitamin K';

  @override
  String get berries => 'Berries';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'Blueberries, strawberries, and other berries contain antioxidants';

  @override
  String get wholeGrains => 'Whole Grains';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'Brown rice, quinoa, and oats provide sustained energy and fiber';

  @override
  String get fish => 'Fish';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'Salmon, sardines, and other fatty fish are excellent sources of omega-3s';

  @override
  String get mealTracking => 'Meal Tracking';

  @override
  String get mealTrackingFeatureComingSoon =>
      'Meal tracking feature coming soon!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'Hydration tracking feature coming soon!';

  @override
  String get stayActive => 'Stay Active';

  @override
  String get activityTracker => 'Activity Tracker';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'Track your daily steps, walks, and physical activities with smart watch integration';

  @override
  String get exerciseGoals => 'Exercise Goals';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'Set and track your weekly exercise goals including walking, strength training, and cardio';

  @override
  String get socialActivities => 'Social Activities';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'Join group walks, fitness classes, and connect with others for motivation';

  @override
  String get fitnessTips => 'Fitness Tips';

  @override
  String get mixCardioAndStrengthTraining => 'Mix cardio and strength training';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'Both aerobic exercise and muscle strengthening activities are important for overall health.';

  @override
  String get stayConsistent => 'Stay consistent';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'Regular activity is more beneficial than intense but irregular exercise sessions.';

  @override
  String get listenToYourBody => 'Listen to your body';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'Start slowly and gradually increase intensity. Consult your doctor before starting new exercises.';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'Exercise goal setting feature coming soon!';

  @override
  String get brainTraining => 'Brain Training';

  @override
  String get brainExercises => 'Brain Exercises';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'Memory games, attention training, and cognitive assessments to keep your mind active';

  @override
  String get reminiscenceTherapy => 'Reminiscence Therapy';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'Share memories, stories, and experiences to maintain cognitive function and emotional well-being';

  @override
  String get cognitiveAssessment => 'Cognitive Assessment';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'Regular cognitive testing to track your brain health and identify areas for improvement';

  @override
  String get brainHealthTips => 'Brain Health Tips';

  @override
  String get stayMentallyActive => 'Stay mentally active';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'Read, do puzzles, learn new skills, or engage in hobbies that challenge your mind.';

  @override
  String get shareYourMemories => 'Share your memories';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'Talking about past experiences helps maintain memory and emotional connections.';

  @override
  String get staySociallyConnected => 'Stay socially connected';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'Regular social interaction is crucial for cognitive health and emotional well-being.';

  @override
  String get manageStress => 'Manage stress';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'Chronic stress can negatively impact memory and cognitive function.';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'Reminiscence therapy sessions coming soon!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'Cognitive assessment tools coming soon!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'Stay connected with your community and combat loneliness';

  @override
  String get socialFeatures => 'Social Features';

  @override
  String get communityEvents => 'Community Events';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'Discover local arts, crafts, and social activities organized by dementia support centers';

  @override
  String get communityForum => 'Community Forum';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'Connect with others, share experiences, and get support from the community';

  @override
  String get dementiaEncyclopedia => 'Dementia Encyclopedia';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'Learn about dementia, prevention strategies, and find helpful resources';

  @override
  String get socialConnectionTips => 'Social Connection Tips';

  @override
  String get joinLocalGroups => 'Join local groups';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'Look for arts and crafts workshops, walking groups, or hobby clubs in your area.';

  @override
  String get stayInTouch => 'Stay in touch';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'Regular phone calls or video chats with family and friends can make a big difference.';

  @override
  String get volunteer => 'Volunteer';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'Giving back to your community can provide purpose and social connection.';

  @override
  String get learnSomethingNew => 'Learn something new';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'Taking classes or joining learning groups can help you meet like-minded people.';

  @override
  String get couldNotOpenNHSWebsite => 'Could not open NHS website';

  @override
  String get couldNotOpenNHSBookingWebsite =>
      'Could not open NHS booking website';

  @override
  String get healthCheckComplete => 'Health Check Complete';

  @override
  String get healthCheckOverdue => 'Health Check Overdue';

  @override
  String get healthCheckDueSoon => 'Health Check Due Soon';

  @override
  String get benefitsOfNHSHealthCheck => 'Benefits of NHS Health Check';

  @override
  String get earlyDetection => 'Early Detection';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'Identifies health risks before they become serious problems';

  @override
  String get dementiaPrevention => 'Dementia Prevention';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'Helps reduce your risk of developing dementia through lifestyle advice';

  @override
  String get lifestyleAdvice => 'Lifestyle Advice';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'Get personalized advice on diet, exercise, and healthy living';

  @override
  String get freeService => 'Free Service';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'Completely free and takes about 20-30 minutes';

  @override
  String get learnMoreAboutHealthChecks => 'Learn More About Health Checks';

  @override
  String get markAsNotCompleted => 'Mark as Not Completed';

  @override
  String get bookYourHealthCheck => 'Book Your Health Check';

  @override
  String get currentWeight => 'Current Weight';

  @override
  String get updated => 'Updated';

  @override
  String get notRecorded => 'Not recorded';

  @override
  String get addYourHeightToCalculateBMI => 'Add your height to calculate BMI';

  @override
  String get logNewWeight => 'Log New Weight';

  @override
  String get enterYourWeight => 'Enter your weight';

  @override
  String get pleaseEnterYourWeight => 'Please enter your weight';

  @override
  String get pleaseEnterAValidNumber => 'Please enter a valid number';

  @override
  String get weightHistory => 'Weight History';

  @override
  String get trackYourWeightChangesOverTime =>
      'Track your weight changes over time';

  @override
  String get weightChartComingSoon => 'Weight Chart Coming Soon';

  @override
  String get bmiInformation => 'BMI Information';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'Add your height and weight to calculate your BMI';

  @override
  String get below18Point5 => 'Below 18.5';

  @override
  String get bmiRange18Point5To24Point9 => '18.5 - 24.9';

  @override
  String get bmiRange25Point0To29Point9 => '25.0 - 29.9';

  @override
  String get bmiRange30Point0AndAbove => '30.0 and above';

  @override
  String get todaysActivity => 'Today\'s Activity';

  @override
  String get steps => 'Steps';

  @override
  String get distance => 'Distance';

  @override
  String get calories => 'Calories';

  @override
  String get duration => 'Duration';

  @override
  String get logWalk => 'Log Walk';

  @override
  String get logExercise => 'Log Exercise';

  @override
  String get setGoals => 'Set Goals';

  @override
  String get viewHistory => 'View History';

  @override
  String get weeklyProgress => 'Weekly Progress';

  @override
  String get activityChartsComingSoon => 'Activity Charts Coming Soon';

  @override
  String get goalSettingFeatureComingSoon =>
      'Goal setting feature coming soon!';

  @override
  String get activityHistory => 'Activity History';

  @override
  String get activityHistoryFeatureComingSoon =>
      'Activity history feature coming soon!';

  @override
  String get dailyBrainTeaser => 'Daily Brain Teaser';

  @override
  String get aQuickPuzzleToStartYourDay => 'A quick puzzle to start your day.';

  @override
  String get memoryMatchGame => 'Memory Match Game';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'Match pairs of cards to improve your short-term memory.';

  @override
  String get wordAssociation => 'Word Association';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'Connect words and expand your vocabulary.';

  @override
  String get activities => 'Activities';

  @override
  String get reminiscence => 'Reminiscence';

  @override
  String get continueButton => 'Continue';

  @override
  String get start => 'Start';

  @override
  String get noPromptAvailable => 'No prompt available';

  @override
  String get review => 'Review';

  @override
  String get trainingProgress => 'Training Progress';

  @override
  String get activityProgress => 'Activity Progress';

  @override
  String get reminiscenceSessions => 'Reminiscence Sessions';

  @override
  String get untitledSession => 'Untitled Session';

  @override
  String get reminiscenceSession => 'Reminiscence Session';

  @override
  String get theMediterraneanDiet => 'The Mediterranean Diet';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'Focus on fruits, vegetables, whole grains, and healthy fats like olive oil. This diet has been linked to reduced dementia risk.';

  @override
  String get brainHealth => 'Brain Health';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'Drink 6-8 glasses of water daily. Proper hydration is essential for brain function and overall health.';

  @override
  String get hydration => 'Hydration';

  @override
  String get omega3FattyAcids => 'Omega-3 Fatty Acids';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'Include fish like salmon, mackerel, and sardines in your diet. Omega-3s support brain health and may reduce inflammation.';

  @override
  String get antioxidantRichFoods => 'Antioxidant-Rich Foods';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'Eat berries, dark leafy greens, and colorful vegetables. Antioxidants help protect brain cells from damage.';

  @override
  String get general => 'General';

  @override
  String get limitProcessedFoods => 'Limit Processed Foods';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'Reduce intake of processed meats, sugary snacks, and fried foods. These can contribute to inflammation and cognitive decline.';

  @override
  String get vitaminDForBrainHealth => 'Vitamin D for Brain Health';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'Get adequate vitamin D through sunlight, fortified foods, or supplements. Vitamin D deficiency has been linked to cognitive issues.';

  @override
  String get vitamins => 'Vitamins';

  @override
  String get healthyEatingForBrainHealth => 'Healthy Eating for Brain Health';

  @override
  String get allTips => 'All Tips';

  @override
  String get tipBookmarked => 'Tip bookmarked!';

  @override
  String get bookmarkRemoved => 'Bookmark removed';

  @override
  String get generalInformation => 'General Information';

  @override
  String get symptoms => 'Symptoms';

  @override
  String get riskFactors => 'Risk Factors';

  @override
  String get types => 'Types';

  @override
  String get diagnosis => 'Diagnosis';

  @override
  String get treatment => 'Treatment';

  @override
  String get prevention => 'Prevention';

  @override
  String get caregiving => 'Caregiving';

  @override
  String get entryBookmarked => 'Entry bookmarked!';

  @override
  String get wellbeing => 'Wellbeing';

  @override
  String get createNewPost => 'Create New Post';

  @override
  String get postCreationFeatureComingSoon =>
      'Post creation feature coming soon!';

  @override
  String get postDetails => 'Post Details';

  @override
  String get reply => 'Reply';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'Join local events designed to support cognitive health and social engagement';

  @override
  String get allEvents => 'All Events';

  @override
  String get arts => 'Arts';

  @override
  String get music => 'Music';

  @override
  String get education => 'Education';

  @override
  String get fullyBooked => 'Fully Booked';

  @override
  String get register => 'Register';

  @override
  String get joinEvent => 'Join Event';

  @override
  String get location => 'Location';

  @override
  String get date => 'Date';

  @override
  String get time => 'Time';

  @override
  String get participants => 'Participants';

  @override
  String get organizer => 'Organizer';

  @override
  String get contact => 'Contact';

  @override
  String get registerForEvent => 'Register for Event';

  @override
  String get surveys => 'Surveys';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'Regular assessments help track your progress and identify areas for improvement';

  @override
  String get allSurveys => 'All Surveys';

  @override
  String get comprehensive => 'Comprehensive';

  @override
  String get lifestyle => 'Lifestyle';

  @override
  String get reviewResults => 'Review Results';

  @override
  String get startSurvey => 'Start Survey';

  @override
  String get previous => 'Previous';

  @override
  String get complete => 'Complete';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get unsupportedQuestionType => 'Unsupported question type';

  @override
  String get rewards => 'Rewards';

  @override
  String get availablePoints => 'Available Points';

  @override
  String get totalEarned => 'Total Earned';

  @override
  String get availableRewards => 'Available Rewards';

  @override
  String get partner => 'Partner';

  @override
  String get redeem => 'Redeem';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'Not enough points to redeem this reward';

  @override
  String get redeemReward => 'Redeem Reward';

  @override
  String get dailyDietReflection => 'Daily Diet Reflection';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'Reflect on your eating habits and track your progress towards a healthier diet';

  @override
  String get saveReflection => 'Save Reflection';

  @override
  String get reflection => 'Reflection';

  @override
  String get areasForImprovement => 'Areas for Improvement';

  @override
  String get recentReflections => 'Recent Reflections';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'Please write a reflection before submitting';

  @override
  String get excellent => 'Excellent';

  @override
  String get good => 'Good';

  @override
  String get average => 'Average';

  @override
  String get poor => 'Poor';

  @override
  String get veryPoor => 'Very Poor';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'Good choices with room for minor improvements';

  @override
  String get moreFruitsAndVegetables => 'More fruits and vegetables';

  @override
  String get reduceProcessedFoods => 'Reduce processed foods';

  @override
  String get increaseWaterIntake => 'Increase water intake';

  @override
  String get moreWholeGrains => 'More whole grains';

  @override
  String get reduceSugarIntake => 'Reduce sugar intake';

  @override
  String get moreLeanProteins => 'More lean proteins';

  @override
  String get betterPortionControl => 'Better portion control';

  @override
  String get regularMealTiming => 'Regular meal timing';

  @override
  String get languageChanged => 'Language changed successfully';

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
  String get areYouSureYouWantToRedeem => 'Are you sure you want to redeem';

  @override
  String get forText => 'for';

  @override
  String get points => 'points';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'Your Progress';

  @override
  String get survey => 'Survey';

  @override
  String get nhsHealthCheckCompleted => 'NHS Health Check completed';

  @override
  String get nhsHealthCheckRecommended => 'NHS Health Check recommended';

  @override
  String get todaysStats => 'Today\'s Stats';

  @override
  String get water => 'Water';

  @override
  String get sleep => 'Sleep';

  @override
  String get glasses => 'glasses';

  @override
  String get hours => 'hours';

  @override
  String get ofText => 'of';

  @override
  String get urgent => 'URGENT';

  @override
  String get view => 'View';

  @override
  String get activityStartedMock => 'Activity started! (Mock)';

  @override
  String get reminiscenceSessionStartedMock =>
      'Reminiscence session started! (Mock)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'Health check marked as completed!';

  @override
  String get weightLogged => 'Weight logged';

  @override
  String get reflectionSavedSuccessfully => 'Reflection saved successfully!';

  @override
  String get surveyCompletedSuccessfully => 'Survey completed successfully!';

  @override
  String get successfullyRedeemed => 'Successfully redeemed';

  @override
  String get notesOptional => 'Notes (optional)';

  @override
  String get writeYourThoughtsHere => 'Write your thoughts here...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'How would you rate your diet quality today?';

  @override
  String get whatDidYouEatToday =>
      'What did you eat today? How did you feel about your food choices? What went well and what could be improved?';

  @override
  String get visualizeYourWeightTrends =>
      'Visualize your weight trends and progress over time with interactive charts.';

  @override
  String get question => 'Question';

  @override
  String get ofQuestions => 'of';

  @override
  String get surveyResultsFeatureComingSoon =>
      'Survey results feature coming soon!';

  @override
  String get whatIsAnNHSHealthCheck => 'What is an NHS Health Check?';

  @override
  String get rememberMeAndYourHealth => 'RememberMe & Your Health';

  @override
  String get regularHealthChecksAreImportant =>
      'Regular health checks are an important part of maintaining brain health and reducing dementia risk. The NHS Health Check provides valuable insights that complement your RememberMe journey.';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'Keep track of your health check results in RememberMe to monitor your dementia risk factors over time.';

  @override
  String get iveAlreadyHadMyHealthCheck => 'I\'ve Already Had My Health Check';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'Coffee Voucher - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Enjoy a free coffee at Cambridge Coffee House, a local independent cafe.';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'Bookstore Discount - Heffers';

  @override
  String get heffersBookshop => 'Heffers Bookshop';

  @override
  String get solveThePuzzle => 'Solve the puzzle.';

  @override
  String get submitYourAnswer => 'Submit your answer.';

  @override
  String get whatHasAnEyeButCannotSee => 'What has an eye, but cannot see?';

  @override
  String get flipTwoCards => 'Flip two cards.';

  @override
  String get ifTheyMatchTheyDisappear => 'If they match, they disappear.';

  @override
  String get matchAllPairs => 'Match all pairs.';

  @override
  String get startWithAWord => 'Start with a word.';

  @override
  String get listAssociatedWords => 'List associated words.';

  @override
  String get tryToMakeAChain => 'Try to make a chain.';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'What was your favorite childhood game or toy?';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'My favorite toy was a red train set. I spent hours building tracks and imagining journeys.';

  @override
  String get describeAMemorableFamilyHoliday =>
      'Describe a memorable family holiday.';

  @override
  String get min => 'min';

  @override
  String get status => 'Status';

  @override
  String get difficulty => 'Difficulty';

  @override
  String get registrationSuccessful =>
      'Registration successful! You will receive a confirmation email.';

  @override
  String get replyPostedSuccessfully => 'Reply posted successfully!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'Activity logging feature coming soon!';

  @override
  String get maintainAHealthyWeight => 'Maintain a Healthy Weight';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'Keep your BMI between 18.5 and 24.9 for optimal health.';

  @override
  String get regularHealthChecks => 'Regular Health Checks';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'Book your free NHS Health Check every 5 years.';

  @override
  String get monitorYourVitals => 'Monitor Your Vitals';

  @override
  String get knowYourNumbers => 'Know Your Numbers';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'Monitor your blood pressure, cholesterol, and blood sugar regularly.';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'Aim for at least 150 minutes of moderate exercise per week.';

  @override
  String get label => 'Label';

  @override
  String get likes => 'likes';
}
