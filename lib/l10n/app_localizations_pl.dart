// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS Tracker Stylu Życia Zapobiegający Demencji';

  @override
  String get health => 'Zdrowie';

  @override
  String get healthMonitoring => 'Monitorowanie zdrowia';

  @override
  String get healthMonitoringDescription =>
      'Śledź swoją wagę, BMI i status badań zdrowotnych';

  @override
  String get healthFeatures => 'Funkcje zdrowotne';

  @override
  String get quickActions => 'Szybkie działania';

  @override
  String get weightDiary => 'Dziennik wagi';

  @override
  String get weightDiaryDescription =>
      'Zapisuj codzienną wagę i śledź zmiany BMI w czasie';

  @override
  String lastLogged(Object weight) {
    return 'Ostatni wpis: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'Jeszcze nie zapisano';

  @override
  String get nhsHealthCheck => 'Badanie zdrowia NHS';

  @override
  String get nhsHealthCheckDescription =>
      'Zarezerwuj bezpłatne badanie zdrowia NHS, aby monitorować swoje zdrowie';

  @override
  String completed(Object date) {
    return 'Ukończone $date';
  }

  @override
  String get completedRecently => 'Ukończone niedawno';

  @override
  String get dueNow => 'Termin teraz - Umów się na darmowe badanie';

  @override
  String get notDueYet => 'Jeszcze nie termin';

  @override
  String get healthProfile => 'Profil zdrowotny';

  @override
  String get healthProfileDescription =>
      'Zarządzaj swoimi schorzeniami, lekami i kontaktami awaryjnymi';

  @override
  String gpRegistered(Object gpName) {
    return 'Lekarz rodzinny: $gpName';
  }

  @override
  String get noGpRegistered => 'Brak zarejestrowanego lekarza rodzinnego';

  @override
  String get logWeight => 'Zarejestruj wagę';

  @override
  String get healthTips => 'Wskazówki Zdrowotne';

  @override
  String get healthOverview => 'Przegląd zdrowia';

  @override
  String get weight => 'Waga';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'Kategoria BMI';

  @override
  String get notSet => 'Nie ustawiono';

  @override
  String get calculate => 'Oblicz';

  @override
  String get unknown => 'Nieznane';

  @override
  String get underweight => 'Niedowaga';

  @override
  String get normalWeight => 'Prawidłowa waga';

  @override
  String get overweight => 'Nadwaga';

  @override
  String get obese => 'Otyłość';

  @override
  String get bmiMessageUnderweight =>
      'Rozważ rozmowę z lekarzem rodzinnym o strategiach zdrowego przybierania na wadze.';

  @override
  String get bmiMessageNormal =>
      'Świetnie! Jesteś w zdrowym zakresie wagi. Tak trzymaj!';

  @override
  String get bmiMessageOverweight =>
      'Rozważ rozmowę z lekarzem rodzinnym o zdrowym zarządzaniu wagą.';

  @override
  String get bmiMessageObese =>
      'Proszę porozmawiać z lekarzem rodzinnym o opcjach zarządzania wagą.';

  @override
  String get bmiMessageDefault =>
      'Regularnie monitoruj swoją wagę dla optymalnego zdrowia.';

  @override
  String get progress => 'Postęp';

  @override
  String get noUserDataAvailable => 'Brak danych użytkownika';

  @override
  String get healthProfileManagementComingSoon =>
      'Zarządzanie profilem zdrowotnym wkrótce';

  @override
  String get today => 'dzisiaj';

  @override
  String get yesterday => 'wczoraj';

  @override
  String daysAgo(Object count) {
    return '$count dni temu';
  }

  @override
  String weeksAgo(Object count) {
    return '$count tygodni temu';
  }

  @override
  String monthsAgo(Object count) {
    return '$count miesięcy temu';
  }

  @override
  String yearsAgo(Object count) {
    return '$count lat temu';
  }

  @override
  String get language => 'Język';

  @override
  String get selectLanguage => 'Wybierz język';

  @override
  String get selectLanguageDescription => 'Wybierz preferowany język aplikacji';

  @override
  String get systemLanguageSettings => 'Ustawienia języka systemu';

  @override
  String get systemLanguageSettingsDescription =>
      'Otwórz ustawienia języka urządzenia';

  @override
  String get systemLanguageSettingsDialog =>
      'To otworzy ustawienia języka Twojego urządzenia. Aplikacja automatycznie wykryje i użyje preferencji języka systemu.';

  @override
  String get systemSettingsFallback =>
      'Przejdź do Ustawienia > Język i region, aby zmienić język systemu.';

  @override
  String get cancel => 'Anuluj';

  @override
  String get openSettings => 'Otwórz ustawienia';

  @override
  String get settings => 'Ustawienia';

  @override
  String get profile => 'Profil';

  @override
  String get userName => 'Nazwa użytkownika';

  @override
  String get userEmail => 'użytkownik@przykład.com';

  @override
  String get changePassword => 'Zmień hasło';

  @override
  String get notifications => 'Powiadomienia';

  @override
  String get pushNotifications => 'Powiadomienia push';

  @override
  String get receiveRemindersAndUpdates =>
      'Otrzymuj przypomnienia i aktualizacje';

  @override
  String get dailyHealthReminders => 'Codzienne przypomnienia zdrowotne';

  @override
  String get morningRemindersForHealthTracking =>
      'Poranne przypomnienia o śledzeniu zdrowia';

  @override
  String get surveyReminders => 'Przypomnienia o ankietach';

  @override
  String get notificationsForPendingSurveys =>
      'Powiadomienia o oczekujących ankietach';

  @override
  String get privacyAndDataSharing => 'Prywatność i udostępnianie danych';

  @override
  String get dataPrivacyInfo =>
      'Twoja prywatność danych jest dla nas ważna. Wszystkie udostępnianie danych jest opcjonalne i można je zmienić w każdej chwili.';

  @override
  String get shareDataWithResearchCenters =>
      'Udostępniaj dane centrom badawczym';

  @override
  String get helpAdvanceDementiaResearch =>
      'Pomóż w rozwoju badań nad demencją (tylko dane anonimowe)';

  @override
  String get healthDataSharing => 'Udostępnianie danych zdrowotnych';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'Udostępniaj wskaźniki zdrowotne swojemu lekarzowi';

  @override
  String get locationTracking => 'Śledzenie lokalizacji';

  @override
  String get allowLocationDataForActivityTracking =>
      'Zezwól na dane lokalizacji do śledzenia aktywności';

  @override
  String get privacyPolicy => 'Polityka prywatności';

  @override
  String get termsOfService => 'Warunki usługi';

  @override
  String get researchParticipation => 'Uczestnictwo w badaniach';

  @override
  String get researchParticipationInfo =>
      'Uczestnictwo w badaniach pomaga w rozwoju zapobiegania i leczenia demencji.';

  @override
  String get participateInResearchStudies => 'Uczestnicz w badaniach naukowych';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'Dołącz do badań prowadzonych przez Lucy Cavendish College';

  @override
  String get currentResearchStudies => 'Aktualne badania naukowe';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'Zobacz dostępne badania, w których możesz uczestniczyć';

  @override
  String get appInformation => 'Informacje o aplikacji';

  @override
  String get version => 'Wersja';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'Opracowane przez';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => 'Zgłoś błąd';

  @override
  String get support => 'Wsparcie';

  @override
  String get helpAndFAQ => 'Pomoc i FAQ';

  @override
  String get contactSupport => 'Skontaktuj się z pomocą';

  @override
  String get sendFeedback => 'Wyślij opinię';

  @override
  String get signOut => 'Wyloguj się';

  @override
  String get editProfile => 'Edytuj profil';

  @override
  String get profileEditingFeatureComingSoon =>
      'Funkcja edycji profilu wkrótce dostępna!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'Zmień hasło';

  @override
  String get passwordChangeFeatureComingSoon =>
      'Funkcja zmiany hasła wkrótce dostępna!';

  @override
  String get dataSharingConsent => 'Zgoda na udostępnianie danych';

  @override
  String get dataSharingConsentText =>
      'Włączając udostępnianie danych, wyrażasz zgodę na udostępnianie anonimowych danych zdrowotnych centrom badawczym demencji. To pomaga w rozwoju naukowego zrozumienia zapobiegania demencji. Twoje dane osobowe nigdy nie będą udostępniane.';

  @override
  String get iUnderstand => 'Rozumiem';

  @override
  String get researchParticipationTitle => 'Uczestnictwo w badaniach';

  @override
  String get researchParticipationText =>
      'Uczestnicząc w badaniach naukowych, pomagasz w rozwoju badań nad zapobieganiem demencji. Możesz zrezygnować z każdego badania w każdej chwili, a Twoje uczestnictwo jest całkowicie dobrowolne.';

  @override
  String get iAgree => 'Zgadzam się';

  @override
  String get privacyPolicyTitle => 'Polityka prywatności';

  @override
  String get privacyPolicyText =>
      'Treść polityki prywatności znajdzie się tutaj. Zawierałaby szczegółowe informacje o tym, jak zbieramy, używamy i chronimy Twoje dane osobowe, zgodnie z rozporządzeniem UK GDPR.';

  @override
  String get close => 'Zamknij';

  @override
  String get termsOfServiceTitle => 'Warunki usługi';

  @override
  String get termsOfServiceText =>
      'Treść warunków usługi znajdzie się tutaj. Zawierałaby warunki i zasady korzystania z aplikacji RememberMe.';

  @override
  String get currentResearchStudiesTitle => 'Aktualne badania naukowe';

  @override
  String get researchStudiesFeatureComingSoon =>
      'Funkcja badań naukowych wkrótce dostępna!';

  @override
  String get reportABugTitle => 'Zgłoś błąd';

  @override
  String get bugReportingFeatureComingSoon =>
      'Funkcja zgłaszania błędów wkrótce dostępna!';

  @override
  String get helpAndFAQTitle => 'Pomoc i FAQ';

  @override
  String get helpSectionComingSoon => 'Sekcja pomocy wkrótce dostępna!';

  @override
  String get contactSupportTitle => 'Skontaktuj się z pomocą';

  @override
  String get supportContactFeatureComingSoon =>
      'Funkcja kontaktu z pomocą wkrótce dostępna!';

  @override
  String get sendFeedbackTitle => 'Wyślij opinię';

  @override
  String get feedbackFeatureComingSoon => 'Funkcja opinii wkrótce dostępna!';

  @override
  String get signOutTitle => 'Wyloguj się';

  @override
  String get areYouSureYouWantToSignOut => 'Czy na pewno chcesz się wylogować?';

  @override
  String get signedOutSuccessfully => 'Pomyślnie wylogowano';

  @override
  String get overview => 'Przegląd';

  @override
  String get domains => 'Domeny';

  @override
  String get developedInPartnershipWithNHS => 'Opracowane we współpracy z NHS';

  @override
  String get healthDomains => 'Domeny zdrowia';

  @override
  String get healthDescription =>
      'Śledzenie wagi, przypomnienia o badaniach NHS i monitorowanie zdrowia';

  @override
  String get socialEngagement => 'Zaangażowanie społeczne';

  @override
  String get socialEngagementDescription =>
      'Wydarzenia społecznościowe, fora i aktywności społeczne';

  @override
  String get physicalActivity => 'Aktywność fizyczna';

  @override
  String get physicalActivityDescription =>
      'Śledzenie kroków, cele ćwiczeń i monitorowanie aktywności';

  @override
  String get goalAchievedToday => 'Cel osiągnięty dzisiaj';

  @override
  String get cognitiveTraining => 'Trening poznawczy';

  @override
  String get cognitiveTrainingDescription =>
      'Ćwiczenia pamięci, terapia reminiscencji i trening mózgu';

  @override
  String get exerciseCompletedYesterday => 'Ćwiczenie ukończone wczoraj';

  @override
  String get healthyDiet => 'Zdrowa dieta';

  @override
  String get healthyDietDescription =>
      'Wskazówki żywieniowe, śledzenie posiłków i przewodnik po zdrowym odżywianiu';

  @override
  String get reminders => 'Przypomnienia';

  @override
  String get viewAll => 'Zobacz wszystkie';

  @override
  String get healthSurveyDue => 'Ankieta zdrowotna do wypełnienia';

  @override
  String get healthSurveyDueDescription =>
      'Ukończ swoją ocenę zdrowia, aby śledzić postęp';

  @override
  String get takeSurvey => 'Wypełnij ankietę';

  @override
  String get learnMore => 'Dowiedz się więcej';

  @override
  String get recentActivity => 'Ostatnia aktywność';

  @override
  String get startTrackingYourActivities => 'Zacznij śledzić swoje aktywności';

  @override
  String get healthTipOfTheDay => 'Wskazówka zdrowotna dnia';

  @override
  String get stayHydrated => 'Pij wodę';

  @override
  String get logActivity => 'Zaloguj';

  @override
  String get community => 'Społeczność';

  @override
  String get back => 'Wstecz';

  @override
  String get next => 'Następny';

  @override
  String get getStarted => 'Rozpocznij';

  @override
  String get welcomeToRememberMe => 'Witamy w RememberMe';

  @override
  String get nhsPartnership => 'Partnerstwo z NHS';

  @override
  String get supportingYourBrainHealth => 'Wspieranie zdrowia Twojego mózgu';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'Codzienne spacery i ćwiczenia, aby utrzymać mózg w aktywności';

  @override
  String get healthyNutrition => 'Zdrowa dieta';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'Pokarmy zdrowe dla mózgu i przypomnienia o nawodnieniu';

  @override
  String get socialConnection => 'Połączenie społeczne';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'Pozostań w kontakcie ze społecznością i przyjaciółmi';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'Ćwiczenia pamięci i terapia reminiscencji';

  @override
  String get yourPersonalDashboard => 'Twój osobisty panel';

  @override
  String get social => 'Społeczne';

  @override
  String get fitness => 'Fitness';

  @override
  String get cognitive => 'Poznawczy';

  @override
  String get nutrition => 'Żywienie';

  @override
  String get yourPrivacyMatters => 'Twoja prywatność ma znaczenie';

  @override
  String get secureDataStorage => 'Bezpieczne przechowywanie danych';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'Twoje informacje są szyfrowane i przechowywane bezpiecznie';

  @override
  String get optInDataSharing => 'Opcjonalne udostępnianie danych';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'Wybierz, czy udostępniać dane partnerom badawczym';

  @override
  String get transparentPolicies => 'Przejrzyste zasady';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'Jasne zasady prywatności i informacje o użytkowaniu danych';

  @override
  String get dataControl => 'Kontrola danych';

  @override
  String get deleteYourDataAtAnyTime => 'Usuń swoje dane w dowolnym momencie';

  @override
  String get brainHealthyEating => 'Zdrowe odżywianie dla mózgu';

  @override
  String get nutritionTips => 'Wskazówki żywieniowe';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'Zalecenia żywieniowe oparte na dowodach, wspierające zdrowie mózgu i zmniejszające ryzyko demencji';

  @override
  String get dietReflection => 'Refleksja nad dietą';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'Zapisuj swoje posiłki i otrzymuj spersonalizowane opinie o wyborach żywieniowych';

  @override
  String get hydrationTracker => 'Śledzenie nawodnienia';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'Śledź dzienne spożycie wody i otrzymuj przypomnienia o nawodnieniu';

  @override
  String get leafyGreens => 'Zielone warzywa liściaste';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'Szpinak, jarmuż i inne zielone warzywa są bogate w folian i witaminę K';

  @override
  String get berries => 'Jagody';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'Borówki, truskawki i inne jagody zawierają przeciwutleniacze';

  @override
  String get wholeGrains => 'Pełne ziarna';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'Brązowy ryż, komosa ryżowa i owies zapewniają trwałą energię i błonnik';

  @override
  String get fish => 'Ryby';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'Łosoś, sardynki i inne tłuste ryby są doskonałym źródłem omega-3';

  @override
  String get mealTracking => 'Śledzenie posiłków';

  @override
  String get mealTrackingFeatureComingSoon =>
      'Funkcja śledzenia posiłków wkrótce!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'Funkcja śledzenia nawodnienia wkrótce!';

  @override
  String get stayActive => 'Pozostań Aktywny';

  @override
  String get activityTracker => 'Śledzenie aktywności';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'Śledź dzienne kroki, spacery i aktywności fizyczne z integracją smartwatch';

  @override
  String get exerciseGoals => 'Cele ćwiczeń';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'Ustawiaj i śledź tygodniowe cele ćwiczeń, w tym chodzenie, trening siłowy i cardio';

  @override
  String get socialActivities => 'Aktywności społeczne';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'Dołącz do grupowych spacerów, zajęć fitness i łącz się z innymi dla motywacji';

  @override
  String get fitnessTips => 'Wskazówki fitness';

  @override
  String get mixCardioAndStrengthTraining => 'Mieszaj cardio i trening siłowy';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'Zarówno ćwiczenia aerobowe, jak i wzmacnianie mięśni są ważne dla ogólnego zdrowia.';

  @override
  String get stayConsistent => 'Pozostań konsekwentny';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'Regularna aktywność jest bardziej korzystna niż intensywne, ale nieregularne sesje ćwiczeń.';

  @override
  String get listenToYourBody => 'Słuchaj swojego ciała';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'Zacznij powoli i stopniowo zwiększaj intensywność. Skonsultuj się z lekarzem przed rozpoczęciem nowych ćwiczeń.';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'Funkcja ustawiania celów ćwiczeń wkrótce!';

  @override
  String get brainTraining => 'Trening mózgu';

  @override
  String get brainExercises => 'Ćwiczenia mózgu';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'Gry pamięciowe, trening uwagi i oceny poznawcze, aby utrzymać umysł w aktywności';

  @override
  String get reminiscenceTherapy => 'Terapia reminiscencji';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'Dziel się wspomnieniami, historiami i doświadczeniami, aby utrzymać funkcje poznawcze i dobre samopoczucie emocjonalne';

  @override
  String get cognitiveAssessment => 'Ocena poznawcza';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'Regularne testy poznawcze do śledzenia zdrowia mózgu i identyfikacji obszarów do poprawy';

  @override
  String get brainHealthTips => 'Wskazówki dotyczące zdrowia mózgu';

  @override
  String get stayMentallyActive => 'Pozostań umysłowo aktywny';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'Czytaj, rozwiązuj łamigłówki, ucz się nowych umiejętności lub angażuj się w hobby, które stymuluje umysł.';

  @override
  String get shareYourMemories => 'Dziel się wspomnieniami';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'Rozmowa o przeszłych doświadczeniach pomaga utrzymać pamięć i więzi emocjonalne.';

  @override
  String get staySociallyConnected => 'Pozostań społecznie połączony';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'Regularna interakcja społeczna jest kluczowa dla zdrowia poznawczego i dobrego samopoczucia emocjonalnego.';

  @override
  String get manageStress => 'Zarządzaj stresem';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'Przewlekły stres może negatywnie wpływać na pamięć i funkcje poznawcze.';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'Sesje terapii reminiscencji wkrótce!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'Narzędzia oceny poznawczej wkrótce!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'Pozostań w kontakcie ze swoją społecznością i walcz z samotnością';

  @override
  String get socialFeatures => 'Funkcje społeczne';

  @override
  String get communityEvents => 'Wydarzenia społeczności';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'Odkryj lokalne sztuki, rzemiosło i aktywności społeczne organizowane przez centra wsparcia demencji';

  @override
  String get communityForum => 'Forum społeczności';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'Połącz się z innymi, dziel się doświadczeniami i otrzymuj wsparcie od społeczności';

  @override
  String get dementiaEncyclopedia => 'Encyklopedia demencji';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'Dowiedz się o demencji, strategiach zapobiegania i znajdź pomocne zasoby';

  @override
  String get socialConnectionTips =>
      'Wskazówki dotyczące połączenia społecznego';

  @override
  String get joinLocalGroups => 'Dołącz do lokalnych grup';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'Szukaj warsztatów sztuki i rzemiosła, grup spacerowych lub klubów hobby w swojej okolicy.';

  @override
  String get stayInTouch => 'Pozostań w kontakcie';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'Regularne rozmowy telefoniczne lub wideoczaty z rodziną i przyjaciółmi mogą wiele zmienić.';

  @override
  String get volunteer => 'Wolontariat';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'Oddawanie społeczności może zapewnić cel i połączenie społeczne.';

  @override
  String get learnSomethingNew => 'Naucz się czegoś nowego';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'Uczestnictwo w zajęciach lub dołączanie do grup naukowych może pomóc w spotkaniu podobnie myślących ludzi.';

  @override
  String get couldNotOpenNHSWebsite => 'Nie można otworzyć strony NHS';

  @override
  String get couldNotOpenNHSBookingWebsite =>
      'Nie można otworzyć strony rezerwacji NHS';

  @override
  String get healthCheckComplete => 'Badanie zdrowia ukończone';

  @override
  String get healthCheckOverdue => 'Badanie zdrowia przeterminowane';

  @override
  String get healthCheckDueSoon => 'Badanie zdrowia wkrótce';

  @override
  String get benefitsOfNHSHealthCheck => 'Korzyści z badania zdrowia NHS';

  @override
  String get earlyDetection => 'Wczesne wykrywanie';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'Identyfikuje ryzyko zdrowotne zanim staną się poważnymi problemami';

  @override
  String get dementiaPrevention => 'Zapobieganie demencji';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'Pomaga zmniejszyć ryzyko rozwoju demencji poprzez porady dotyczące stylu życia';

  @override
  String get lifestyleAdvice => 'Porady dotyczące stylu życia';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'Otrzymaj spersonalizowane porady dotyczące diety, ćwiczeń i zdrowego życia';

  @override
  String get freeService => 'Bezpłatna usługa';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'Całkowicie bezpłatne i trwa około 20-30 minut';

  @override
  String get learnMoreAboutHealthChecks =>
      'Dowiedz się więcej o badaniach zdrowia';

  @override
  String get markAsNotCompleted => 'Oznacz jako nieukończone';

  @override
  String get bookYourHealthCheck => 'Zarezerwuj badanie zdrowia';

  @override
  String get currentWeight => 'Aktualna waga';

  @override
  String get updated => 'Zaktualizowano';

  @override
  String get notRecorded => 'Nie zarejestrowano';

  @override
  String get addYourHeightToCalculateBMI =>
      'Dodaj swój wzrost, aby obliczyć BMI';

  @override
  String get logNewWeight => 'Zarejestruj nową wagę';

  @override
  String get enterYourWeight => 'Wprowadź swoją wagę';

  @override
  String get pleaseEnterYourWeight => 'Proszę wprowadzić wagę';

  @override
  String get pleaseEnterAValidNumber => 'Proszę wprowadzić prawidłową liczbę';

  @override
  String get weightHistory => 'Historia wagi';

  @override
  String get trackYourWeightChangesOverTime => 'Śledź zmiany wagi w czasie';

  @override
  String get weightChartComingSoon => 'Wykres wagi wkrótce';

  @override
  String get bmiInformation => 'Informacje o BMI';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'Dodaj swój wzrost i wagę, aby obliczyć BMI';

  @override
  String get below18Point5 => 'Poniżej 18,5';

  @override
  String get bmiRange18Point5To24Point9 => '18,5 - 24,9';

  @override
  String get bmiRange25Point0To29Point9 => '25,0 - 29,9';

  @override
  String get bmiRange30Point0AndAbove => '30,0 i powyżej';

  @override
  String get todaysActivity => 'Dzisiejsza Aktywność';

  @override
  String get steps => 'Kroki';

  @override
  String get distance => 'Dystans';

  @override
  String get calories => 'Kalorie';

  @override
  String get duration => 'Czas trwania';

  @override
  String get logWalk => 'Zaloguj Spacer';

  @override
  String get logExercise => 'Zaloguj Ćwiczenie';

  @override
  String get setGoals => 'Ustaw Cele';

  @override
  String get viewHistory => 'Zobacz Historię';

  @override
  String get weeklyProgress => 'Tygodniowy Postęp';

  @override
  String get activityChartsComingSoon => 'Wykresy aktywności wkrótce!';

  @override
  String get goalSettingFeatureComingSoon =>
      'Funkcja ustawiania celów wkrótce!';

  @override
  String get activityHistory => 'Historia Aktywności';

  @override
  String get activityHistoryFeatureComingSoon =>
      'Funkcja historii aktywności wkrótce!';

  @override
  String get dailyBrainTeaser => 'Dzienna Zagadka Mózgowa';

  @override
  String get aQuickPuzzleToStartYourDay => 'Szybka zagadka na rozpoczęcie dnia';

  @override
  String get memoryMatchGame => 'Gra w Pamięć';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'Dopasuj pary kart, aby poprawić swoją pamięć krótkotrwałą';

  @override
  String get wordAssociation => 'Skojarzenia Słowne';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'Łącz słowa i rozszerzaj swoje słownictwo';

  @override
  String get activities => 'Aktywności';

  @override
  String get reminiscence => 'Wspomnienia';

  @override
  String get continueButton => 'Kontynuuj';

  @override
  String get start => 'Start';

  @override
  String get noPromptAvailable => 'Brak dostępnego promptu';

  @override
  String get review => 'Przeglądaj';

  @override
  String get trainingProgress => 'Postęp Treningu';

  @override
  String get activityProgress => 'Postęp Aktywności';

  @override
  String get reminiscenceSessions => 'Sesje Wspomnień';

  @override
  String get untitledSession => 'Sesja bez tytułu';

  @override
  String get reminiscenceSession => 'Sesja Wspomnień';

  @override
  String get theMediterraneanDiet => 'Dieta Śródziemnomorska';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'Skup się na owocach, warzywach, pełnych ziarnach i zdrowych tłuszczach jak oliwa z oliwek. Ta dieta została powiązana ze zmniejszonym ryzykiem demencji';

  @override
  String get brainHealth => 'Zdrowie Mózgu';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'Pij 6-8 szklanek wody dziennie. Właściwe nawodnienie jest niezbędne dla funkcji mózgu i ogólnego zdrowia';

  @override
  String get hydration => 'Nawodnienie';

  @override
  String get omega3FattyAcids => 'Kwasy Tłuszczowe Omega-3';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'Włącz ryby jak łosoś, makrela i sardynki do swojej diety. Omega-3 wspierają zdrowie mózgu i mogą zmniejszać stany zapalne';

  @override
  String get antioxidantRichFoods => 'Pokarmy Bogate w Przeciwutleniacze';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'Jedz jagody, ciemne liściaste warzywa i kolorowe warzywa. Przeciwutleniacze pomagają chronić komórki mózgu przed uszkodzeniami';

  @override
  String get general => 'Ogólne';

  @override
  String get limitProcessedFoods => 'Ogranicz Przetworzoną Żywność';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'Zmniejsz spożycie przetworzonego mięsa, słodkich przekąsek i smażonych potraw. Mogą one przyczyniać się do stanów zapalnych i spadku funkcji poznawczych';

  @override
  String get vitaminDForBrainHealth => 'Witamina D dla Zdrowia Mózgu';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'Zapewnij odpowiednią witaminę D poprzez światło słoneczne, wzbogaconą żywność lub suplementy. Niedobór witaminy D został powiązany z problemami poznawczymi';

  @override
  String get vitamins => 'Witaminy';

  @override
  String get healthyEatingForBrainHealth => 'Zdrowa dieta dla zdrowia mózgu';

  @override
  String get allTips => 'Wszystkie wskazówki';

  @override
  String get tipBookmarked => 'Wskazówka dodana do zakładek!';

  @override
  String get bookmarkRemoved => 'Zakładka usunięta';

  @override
  String get generalInformation => 'Informacje ogólne';

  @override
  String get symptoms => 'Objawy';

  @override
  String get riskFactors => 'Czynniki ryzyka';

  @override
  String get types => 'Typy';

  @override
  String get diagnosis => 'Diagnoza';

  @override
  String get treatment => 'Leczenie';

  @override
  String get prevention => 'Zapobieganie';

  @override
  String get caregiving => 'Opieka';

  @override
  String get entryBookmarked => 'Wpis dodany do zakładek!';

  @override
  String get wellbeing => 'Dobrostan';

  @override
  String get createNewPost => 'Utwórz nowy post';

  @override
  String get postCreationFeatureComingSoon =>
      'Funkcja tworzenia postów wkrótce!';

  @override
  String get postDetails => 'Szczegóły postu';

  @override
  String get reply => 'Odpowiedz';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'Dołącz do lokalnych wydarzeń zaprojektowanych, aby wspierać zdrowie poznawcze i zaangażowanie społeczne';

  @override
  String get allEvents => 'Wszystkie wydarzenia';

  @override
  String get arts => 'Sztuka';

  @override
  String get music => 'Muzyka';

  @override
  String get education => 'Edukacja';

  @override
  String get fullyBooked => 'Pełne';

  @override
  String get register => 'Zarejestruj się';

  @override
  String get joinEvent => 'Dołącz do wydarzenia';

  @override
  String get location => 'Lokalizacja';

  @override
  String get date => 'Data';

  @override
  String get time => 'Czas';

  @override
  String get participants => 'Uczestnicy';

  @override
  String get organizer => 'Organizator';

  @override
  String get contact => 'Kontakt';

  @override
  String get registerForEvent => 'Zarejestruj się na wydarzenie';

  @override
  String get surveys => 'Ankiety';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'Regularne oceny pomagają śledzić postęp i identyfikować obszary do poprawy';

  @override
  String get allSurveys => 'Wszystkie ankiety';

  @override
  String get comprehensive => 'Kompleksowe';

  @override
  String get lifestyle => 'Styl życia';

  @override
  String get reviewResults => 'Przejrzyj wyniki';

  @override
  String get startSurvey => 'Rozpocznij ankietę';

  @override
  String get previous => 'Poprzedni';

  @override
  String get complete => 'Kompletne';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';

  @override
  String get unsupportedQuestionType => 'Nieobsługiwany typ pytania';

  @override
  String get rewards => 'Nagrody';

  @override
  String get availablePoints => 'Dostępne punkty';

  @override
  String get totalEarned => 'Łącznie zdobyte';

  @override
  String get availableRewards => 'Dostępne nagrody';

  @override
  String get partner => 'Partner';

  @override
  String get redeem => 'Wykorzystaj';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'Za mało punktów, aby wykorzystać tę nagrodę';

  @override
  String get redeemReward => 'Wykorzystaj nagrodę';

  @override
  String get dailyDietReflection => 'Dzienna Refleksja nad Dietą';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'Refleksja nad swoimi nawykami żywieniowymi i śledzenie postępów w kierunku zdrowszej diety';

  @override
  String get saveReflection => 'Zapisz Refleksję';

  @override
  String get reflection => 'Refleksja';

  @override
  String get areasForImprovement => 'Obszary do Poprawy';

  @override
  String get recentReflections => 'Ostatnie Refleksje';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'Proszę napisać refleksję przed przesłaniem';

  @override
  String get excellent => 'Doskonały';

  @override
  String get good => 'Dobry';

  @override
  String get average => 'Średni';

  @override
  String get poor => 'Słaby';

  @override
  String get veryPoor => 'Bardzo słaby';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'Dobre wybory z miejscem na drobne poprawki';

  @override
  String get moreFruitsAndVegetables => 'Więcej owoców i warzyw';

  @override
  String get reduceProcessedFoods => 'Zmniejsz przetworzoną żywność';

  @override
  String get increaseWaterIntake => 'Zwiększ spożycie wody';

  @override
  String get moreWholeGrains => 'Więcej pełnych ziaren';

  @override
  String get reduceSugarIntake => 'Zmniejsz spożycie cukru';

  @override
  String get moreLeanProteins => 'Więcej chudych białek';

  @override
  String get betterPortionControl => 'Lepsza kontrola porcji';

  @override
  String get regularMealTiming => 'Regularne pory posiłków';

  @override
  String get languageChanged => 'Język został pomyślnie zmieniony';

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
  String get areYouSureYouWantToRedeem => 'Czy na pewno chcesz wykorzystać';

  @override
  String get forText => 'za';

  @override
  String get points => 'punkty';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'Twój Postęp';

  @override
  String get survey => 'Ankieta';

  @override
  String get nhsHealthCheckCompleted => 'Kontrola zdrowia NHS ukończona';

  @override
  String get nhsHealthCheckRecommended => 'Zalecana kontrola zdrowia NHS';

  @override
  String get todaysStats => 'Dzisiejsze Statystyki';

  @override
  String get water => 'Woda';

  @override
  String get sleep => 'Sen';

  @override
  String get glasses => 'szklanki';

  @override
  String get hours => 'godziny';

  @override
  String get ofText => 'z';

  @override
  String get urgent => 'PILNE';

  @override
  String get view => 'Zobacz';

  @override
  String get activityStartedMock => 'Aktywność rozpoczęta! (Mock)';

  @override
  String get reminiscenceSessionStartedMock =>
      'Sesja wspomnień rozpoczęta! (Mock)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'Kontrola zdrowia oznaczona jako ukończona!';

  @override
  String get weightLogged => 'Waga zapisana';

  @override
  String get reflectionSavedSuccessfully => 'Refleksja zapisana pomyślnie!';

  @override
  String get surveyCompletedSuccessfully => 'Ankieta ukończona pomyślnie!';

  @override
  String get successfullyRedeemed => 'Pomyślnie wykorzystano';

  @override
  String get notesOptional => 'Notatki (opcjonalne)';

  @override
  String get writeYourThoughtsHere => 'Napisz swoje myśli tutaj...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'Jak oceniasz jakość swojej diety dzisiaj?';

  @override
  String get whatDidYouEatToday =>
      'Co jadłeś dzisiaj? Jak czułeś się z wyborami żywieniowymi? Co poszło dobrze, a co można poprawić?';

  @override
  String get visualizeYourWeightTrends =>
      'Wizualizuj trendy wagi i postęp w czasie za pomocą interaktywnych wykresów.';

  @override
  String get question => 'Pytanie';

  @override
  String get ofQuestions => 'z';

  @override
  String get surveyResultsFeatureComingSoon =>
      'Funkcja wyników ankiety wkrótce!';

  @override
  String get whatIsAnNHSHealthCheck => 'Co to jest kontrola zdrowia NHS?';

  @override
  String get rememberMeAndYourHealth => 'RememberMe i Twoje Zdrowie';

  @override
  String get regularHealthChecksAreImportant =>
      'Regularne kontrole zdrowia są ważną częścią utrzymania zdrowia mózgu i zmniejszenia ryzyka demencji. Kontrola zdrowia NHS zapewnia cenne informacje, które uzupełniają Twoją podróż z RememberMe.';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'Śledź wyniki kontroli zdrowia w RememberMe, aby monitorować czynniki ryzyka demencji w czasie.';

  @override
  String get iveAlreadyHadMyHealthCheck => 'Już miałem kontrolę zdrowia';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'Voucher na kawę - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Ciesz się darmową kawą w Cambridge Coffee House, lokalnej niezależnej kawiarni.';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'Zniżka w księgarni - Heffers';

  @override
  String get heffersBookshop => 'Księgarnia Heffers';

  @override
  String get solveThePuzzle => 'Rozwiąż zagadkę.';

  @override
  String get submitYourAnswer => 'Prześlij swoją odpowiedź.';

  @override
  String get whatHasAnEyeButCannotSee => 'Co ma oko, ale nie może widzieć?';

  @override
  String get flipTwoCards => 'Odwróć dwie karty.';

  @override
  String get ifTheyMatchTheyDisappear => 'Jeśli pasują, znikają.';

  @override
  String get matchAllPairs => 'Dopasuj wszystkie pary.';

  @override
  String get startWithAWord => 'Zacznij od słowa.';

  @override
  String get listAssociatedWords => 'Wypisz powiązane słowa.';

  @override
  String get tryToMakeAChain => 'Spróbuj zrobić łańcuch.';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'Jaka była Twoja ulubiona gra lub zabawka z dzieciństwa?';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'Moją ulubioną zabawką był czerwony zestaw pociągów. Spędzałem godziny budując tory i wyobrażając sobie podróże.';

  @override
  String get describeAMemorableFamilyHoliday =>
      'Opisz niezapomniane wakacje rodzinne.';

  @override
  String get min => 'min';

  @override
  String get status => 'Status';

  @override
  String get difficulty => 'Trudność';

  @override
  String get registrationSuccessful =>
      'Rejestracja pomyślna! Otrzymasz e-mail potwierdzający.';

  @override
  String get replyPostedSuccessfully => 'Odpowiedź opublikowana pomyślnie!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'Funkcja logowania aktywności wkrótce!';

  @override
  String get maintainAHealthyWeight => 'Utrzymuj Zdrową Wagę';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'Utrzymuj BMI między 18,5 a 24,9 dla optymalnego zdrowia.';

  @override
  String get regularHealthChecks => 'Regularne Kontrole Zdrowia';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'Umów się na darmową kontrolę zdrowia NHS co 5 lat.';

  @override
  String get monitorYourVitals => 'Monitoruj Swoje Parametry Życiowe';

  @override
  String get knowYourNumbers => 'Znaj Swoje Liczby';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'Regularnie monitoruj ciśnienie krwi, cholesterol i poziom cukru we krwi.';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'Staraj się wykonywać co najmniej 150 minut umiarkowanych ćwiczeń tygodniowo.';

  @override
  String get label => 'Etykieta';

  @override
  String get likes => 'polubienia';
}
