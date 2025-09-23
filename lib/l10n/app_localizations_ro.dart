// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription =>
      'NHS Tracker de Stil de Viață pentru Prevenirea Demenței';

  @override
  String get health => 'Sănătate';

  @override
  String get healthMonitoring => 'Monitorizarea sănătății';

  @override
  String get healthMonitoringDescription =>
      'Urmărește-ți greutatea, IMC-ul și starea verificărilor de sănătate';

  @override
  String get healthFeatures => 'Funcții de sănătate';

  @override
  String get quickActions => 'Acțiuni rapide';

  @override
  String get weightDiary => 'Jurnalul greutății';

  @override
  String get weightDiaryDescription =>
      'Înregistrează-ți greutatea zilnică și urmărește modificările IMC-ului în timp';

  @override
  String lastLogged(Object weight) {
    return 'Ultima înregistrare: ${weight}kg';
  }

  @override
  String get notLoggedYet => 'Nu a fost încă înregistrat';

  @override
  String get nhsHealthCheck => 'Verificare sănătate NHS';

  @override
  String get nhsHealthCheckDescription =>
      'Rezervă verificarea gratuită de sănătate NHS pentru a-ți monitoriza sănătatea';

  @override
  String completed(Object date) {
    return 'Completat $date';
  }

  @override
  String get completedRecently => 'Completat recent';

  @override
  String get dueNow => 'Scadent acum - Programează-ți verificarea gratuită';

  @override
  String get notDueYet => 'Nu este încă scadent';

  @override
  String get healthProfile => 'Profilul de sănătate';

  @override
  String get healthProfileDescription =>
      'Gestionează-ți afecțiunile medicale, medicamentele și contactele de urgență';

  @override
  String gpRegistered(Object gpName) {
    return 'Medic de familie: $gpName';
  }

  @override
  String get noGpRegistered => 'Nu este înregistrat medic de familie';

  @override
  String get logWeight => 'Înregistrează greutatea';

  @override
  String get healthTips => 'Sfaturi de Sănătate';

  @override
  String get healthOverview => 'Prezentare generală sănătate';

  @override
  String get weight => 'Greutate';

  @override
  String get bmi => 'IMC';

  @override
  String get bmiCategory => 'Categoria IMC';

  @override
  String get notSet => 'Nu este setat';

  @override
  String get calculate => 'Calculează';

  @override
  String get unknown => 'Necunoscut';

  @override
  String get underweight => 'Subponderal';

  @override
  String get normalWeight => 'Greutate normală';

  @override
  String get overweight => 'Supraponderal';

  @override
  String get obese => 'Obez';

  @override
  String get bmiMessageUnderweight =>
      'Luați în considerare să vorbiți cu medicul de familie despre strategiile de creștere sănătoasă în greutate.';

  @override
  String get bmiMessageNormal =>
      'Excelent! Sunteți într-un interval sănătos de greutate. Continuați așa!';

  @override
  String get bmiMessageOverweight =>
      'Luați în considerare să vorbiți cu medicul de familie despre gestionarea sănătoasă a greutății.';

  @override
  String get bmiMessageObese =>
      'Vă rugăm să vorbiți cu medicul de familie despre opțiunile de gestionare a greutății.';

  @override
  String get bmiMessageDefault =>
      'Monitorizați-vă greutatea regulat pentru o sănătate optimă.';

  @override
  String get progress => 'Progres';

  @override
  String get noUserDataAvailable => 'Nu sunt disponibile date utilizator';

  @override
  String get healthProfileManagementComingSoon =>
      'Gestionarea profilului de sănătate vine în curând';

  @override
  String get today => 'astăzi';

  @override
  String get yesterday => 'ieri';

  @override
  String daysAgo(Object count) {
    return 'acum $count zile';
  }

  @override
  String weeksAgo(Object count) {
    return 'acum $count săptămâni';
  }

  @override
  String monthsAgo(Object count) {
    return 'acum $count luni';
  }

  @override
  String yearsAgo(Object count) {
    return 'acum $count ani';
  }

  @override
  String get language => 'Limbă';

  @override
  String get selectLanguage => 'Selectează limba';

  @override
  String get selectLanguageDescription =>
      'Alege limba preferată pentru aplicație';

  @override
  String get systemLanguageSettings => 'Setări limba sistem';

  @override
  String get systemLanguageSettingsDescription =>
      'Deschide setările de limbă ale dispozitivului';

  @override
  String get systemLanguageSettingsDialog =>
      'Aceasta va deschide setările de limbă ale dispozitivului dvs. Aplicația va detecta automat și va folosi preferința de limbă a sistemului.';

  @override
  String get systemSettingsFallback =>
      'Vă rugăm să mergeți la Setări > Limbă și regiune pentru a schimba limba sistemului.';

  @override
  String get cancel => 'Anulează';

  @override
  String get openSettings => 'Deschide setările';

  @override
  String get settings => 'Setări';

  @override
  String get profile => 'Profil';

  @override
  String get userName => 'Nume utilizator';

  @override
  String get userEmail => 'utilizator@exemplu.com';

  @override
  String get changePassword => 'Schimbă parola';

  @override
  String get notifications => 'Notificări';

  @override
  String get pushNotifications => 'Notificări push';

  @override
  String get receiveRemindersAndUpdates =>
      'Primește memento-uri și actualizări';

  @override
  String get dailyHealthReminders => 'Memento-uri zilnice de sănătate';

  @override
  String get morningRemindersForHealthTracking =>
      'Memento-uri dimineața pentru urmărirea sănătății';

  @override
  String get surveyReminders => 'Memento-uri pentru sondaje';

  @override
  String get notificationsForPendingSurveys =>
      'Notificări pentru sondaje în așteptare';

  @override
  String get privacyAndDataSharing => 'Confidențialitate și partajare date';

  @override
  String get dataPrivacyInfo =>
      'Confidențialitatea datelor dvs. este importantă pentru noi. Toate partajările de date sunt opționale și pot fi modificate oricând.';

  @override
  String get shareDataWithResearchCenters =>
      'Partajează date cu centrele de cercetare';

  @override
  String get helpAdvanceDementiaResearch =>
      'Ajută la progresul cercetării demenței (doar date anonimizate)';

  @override
  String get healthDataSharing => 'Partajare date de sănătate';

  @override
  String get shareHealthMetricsWithHealthcareProvider =>
      'Partajează metricile de sănătate cu furnizorul de îngrijire medicală';

  @override
  String get locationTracking => 'Urmărire locație';

  @override
  String get allowLocationDataForActivityTracking =>
      'Permite datele de locație pentru urmărirea activității';

  @override
  String get privacyPolicy => 'Politica de confidențialitate';

  @override
  String get termsOfService => 'Termenii serviciului';

  @override
  String get researchParticipation => 'Participare la cercetare';

  @override
  String get researchParticipationInfo =>
      'Participarea la cercetare ajută la progresul prevenirii și tratamentului demenței.';

  @override
  String get participateInResearchStudies =>
      'Participă la studiile de cercetare';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      'Alătură-te studiilor conduse de Lucy Cavendish College';

  @override
  String get currentResearchStudies => 'Studiile de cercetare actuale';

  @override
  String get viewAvailableStudiesYouCanParticipateIn =>
      'Vezi studiile disponibile la care poți participa';

  @override
  String get appInformation => 'Informații aplicație';

  @override
  String get version => 'Versiunea';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => 'Dezvoltat de';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => 'Raportează o problemă';

  @override
  String get support => 'Suport';

  @override
  String get helpAndFAQ => 'Ajutor și FAQ';

  @override
  String get contactSupport => 'Contactează suportul';

  @override
  String get sendFeedback => 'Trimite feedback';

  @override
  String get signOut => 'Deconectare';

  @override
  String get editProfile => 'Editează profilul';

  @override
  String get profileEditingFeatureComingSoon =>
      'Funcția de editare profil va fi disponibilă în curând!';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => 'Schimbă parola';

  @override
  String get passwordChangeFeatureComingSoon =>
      'Funcția de schimbare parolă va fi disponibilă în curând!';

  @override
  String get dataSharingConsent => 'Consimțământ partajare date';

  @override
  String get dataSharingConsentText =>
      'Prin activarea partajării datelor, consimțiți la partajarea datelor de sănătate anonimizate cu centrele de cercetare demență. Acest lucru ajută la progresul înțelegerii științifice a prevenirii demenței. Informațiile dvs. personale nu vor fi niciodată partajate.';

  @override
  String get iUnderstand => 'Înțeleg';

  @override
  String get researchParticipationTitle => 'Participare la cercetare';

  @override
  String get researchParticipationText =>
      'Prin participarea la studiile de cercetare, ajuți la progresul cercetării prevenirii demenței. Poți renunța la orice studiu oricând, iar participarea ta este complet voluntară.';

  @override
  String get iAgree => 'Sunt de acord';

  @override
  String get privacyPolicyTitle => 'Politica de confidențialitate';

  @override
  String get privacyPolicyText =>
      'Conținutul politicii de confidențialitate ar fi aici. Ar include informații detaliate despre cum colectăm, folosim și protejăm datele dvs. personale, în conformitate cu reglementările UK GDPR.';

  @override
  String get close => 'Închide';

  @override
  String get termsOfServiceTitle => 'Termenii serviciului';

  @override
  String get termsOfServiceText =>
      'Conținutul termenilor serviciului ar fi aici. Ar include termenii și condițiile pentru utilizarea aplicației RememberMe.';

  @override
  String get currentResearchStudiesTitle => 'Studiile de cercetare actuale';

  @override
  String get researchStudiesFeatureComingSoon =>
      'Funcția studiilor de cercetare va fi disponibilă în curând!';

  @override
  String get reportABugTitle => 'Raportează o problemă';

  @override
  String get bugReportingFeatureComingSoon =>
      'Funcția de raportare probleme va fi disponibilă în curând!';

  @override
  String get helpAndFAQTitle => 'Ajutor și FAQ';

  @override
  String get helpSectionComingSoon =>
      'Secțiunea de ajutor va fi disponibilă în curând!';

  @override
  String get contactSupportTitle => 'Contactează suportul';

  @override
  String get supportContactFeatureComingSoon =>
      'Funcția de contact suport va fi disponibilă în curând!';

  @override
  String get sendFeedbackTitle => 'Trimite feedback';

  @override
  String get feedbackFeatureComingSoon =>
      'Funcția de feedback va fi disponibilă în curând!';

  @override
  String get signOutTitle => 'Deconectare';

  @override
  String get areYouSureYouWantToSignOut =>
      'Ești sigur că vrei să te deconectezi?';

  @override
  String get signedOutSuccessfully => 'Deconectare reușită';

  @override
  String get overview => 'Prezentare generală';

  @override
  String get domains => 'Domenii';

  @override
  String get developedInPartnershipWithNHS => 'Dezvoltat în parteneriat cu NHS';

  @override
  String get healthDomains => 'Domenii de sănătate';

  @override
  String get healthDescription =>
      'Urmărirea greutății, memento-uri pentru verificarea NHS și monitorizarea sănătății';

  @override
  String get socialEngagement => 'Implicare socială';

  @override
  String get socialEngagementDescription =>
      'Evenimente comunitare, forumuri și activități sociale';

  @override
  String get physicalActivity => 'Activitate fizică';

  @override
  String get physicalActivityDescription =>
      'Urmărirea pașilor, obiective de exercițiu și monitorizarea activității';

  @override
  String get goalAchievedToday => 'Obiectiv atins astăzi';

  @override
  String get cognitiveTraining => 'Antrenament cognitiv';

  @override
  String get cognitiveTrainingDescription =>
      'Exerciții de memorie, terapie de reminiscență și antrenament cerebral';

  @override
  String get exerciseCompletedYesterday => 'Exercițiu finalizat ieri';

  @override
  String get healthyDiet => 'Dietă sănătoasă';

  @override
  String get healthyDietDescription =>
      'Sfaturi nutriționale, urmărirea meselor și ghid pentru alimentația sănătoasă';

  @override
  String get reminders => 'Memento-uri';

  @override
  String get viewAll => 'Vezi toate';

  @override
  String get healthSurveyDue => 'Sondaj de sănătate datorat';

  @override
  String get healthSurveyDueDescription =>
      'Completează evaluarea ta de sănătate pentru a-ți urmări progresul';

  @override
  String get takeSurvey => 'Completează sondajul';

  @override
  String get learnMore => 'Află mai multe';

  @override
  String get recentActivity => 'Activitate recentă';

  @override
  String get startTrackingYourActivities =>
      'Începe să-ți urmărești activitățile';

  @override
  String get healthTipOfTheDay => 'Sfatul de sănătate al zilei';

  @override
  String get stayHydrated => 'Rămâi hidratat';

  @override
  String get logActivity => 'Înregistrează';

  @override
  String get community => 'Comunitate';

  @override
  String get back => 'Înapoi';

  @override
  String get next => 'Următorul';

  @override
  String get getStarted => 'Începe';

  @override
  String get welcomeToRememberMe => 'Bun venit la RememberMe';

  @override
  String get nhsPartnership => 'Parteneriat NHS';

  @override
  String get supportingYourBrainHealth => 'Sprijinind sănătatea creierului tău';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive =>
      'Plimbări zilnice și exerciții pentru a-ți menține creierul activ';

  @override
  String get healthyNutrition => 'Nutriție sănătoasă';

  @override
  String get brainHealthyFoodsAndHydrationReminders =>
      'Alimente sănătoase pentru creier și memento-uri de hidratare';

  @override
  String get socialConnection => 'Conectare socială';

  @override
  String get stayConnectedWithCommunityAndFriends =>
      'Rămâi conectat cu comunitatea și prietenii';

  @override
  String get memoryExercisesAndReminiscenceTherapy =>
      'Exerciții de memorie și terapie de reminiscență';

  @override
  String get yourPersonalDashboard => 'Panoul tău personal';

  @override
  String get social => 'Social';

  @override
  String get fitness => 'Fitness';

  @override
  String get cognitive => 'Cognitiv';

  @override
  String get nutrition => 'Nutriție';

  @override
  String get yourPrivacyMatters => 'Confidențialitatea ta contează';

  @override
  String get secureDataStorage => 'Stocare sigură a datelor';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely =>
      'Informațiile tale sunt criptate și stocate în siguranță';

  @override
  String get optInDataSharing => 'Partajare opțională a datelor';

  @override
  String get chooseWhetherToShareDataWithResearchPartners =>
      'Alege dacă să partajezi datele cu partenerii de cercetare';

  @override
  String get transparentPolicies => 'Politici transparente';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation =>
      'Politici clare de confidențialitate și informații despre utilizarea datelor';

  @override
  String get dataControl => 'Controlul datelor';

  @override
  String get deleteYourDataAtAnyTime => 'Șterge datele tale oricând';

  @override
  String get brainHealthyEating => 'Alimentație sănătoasă pentru creier';

  @override
  String get nutritionTips => 'Sfaturi nutriționale';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      'Recomandări nutriționale bazate pe dovezi pentru a sprijini sănătatea creierului și a reduce riscul de demență';

  @override
  String get dietReflection => 'Reflecție asupra dietei';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      'Înregistrează-ți mesele și primește feedback personalizat despre alegerile nutriționale';

  @override
  String get hydrationTracker => 'Urmărire hidratare';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      'Urmărește consumul zilnic de apă și primește memento-uri să rămâi hidratat';

  @override
  String get leafyGreens => 'Verdețuri cu frunze';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      'Spanacul, kale și alte verdețuri sunt bogate în folat și vitamina K';

  @override
  String get berries => 'Fructe de pădure';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      'Afinele, căpșunele și alte fructe de pădure conțin antioxidanți';

  @override
  String get wholeGrains => 'Cereale integrale';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      'Orezul brun, quinoa și ovăzul oferă energie susținută și fibre';

  @override
  String get fish => 'Pește';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      'Somonul, sardinele și alte pești grași sunt surse excelente de omega-3';

  @override
  String get mealTracking => 'Urmărire mese';

  @override
  String get mealTrackingFeatureComingSoon =>
      'Funcția de urmărire a meselor vine în curând!';

  @override
  String get hydrationTrackingFeatureComingSoon =>
      'Funcția de urmărire a hidratării vine în curând!';

  @override
  String get stayActive => 'Rămâi Activ';

  @override
  String get activityTracker => 'Urmărire activitate';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      'Urmărește pașii zilnici, plimbările și activitățile fizice cu integrarea smartwatch';

  @override
  String get exerciseGoals => 'Obiective de exercițiu';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      'Stabilește și urmărește obiectivele săptămânale de exercițiu, inclusiv mersul pe jos, antrenamentul de forță și cardio';

  @override
  String get socialActivities => 'Activități sociale';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      'Alătură-te plimbărilor de grup, claselor de fitness și conectează-te cu alții pentru motivație';

  @override
  String get fitnessTips => 'Sfaturi fitness';

  @override
  String get mixCardioAndStrengthTraining =>
      'Amestecă cardio și antrenamentul de forță';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      'Atât exercițiile aerobe, cât și activitățile de întărire a mușchilor sunt importante pentru sănătatea generală.';

  @override
  String get stayConsistent => 'Rămâi consecvent';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      'Activitatea regulată este mai benefică decât sesiunile intense, dar neregulate de exercițiu.';

  @override
  String get listenToYourBody => 'Ascultă-ți corpul';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      'Începe încet și crește treptat intensitatea. Consultă-ți medicul înainte de a începe exerciții noi.';

  @override
  String get exerciseGoalSettingFeatureComingSoon =>
      'Funcția de stabilire a obiectivelor de exercițiu vine în curând!';

  @override
  String get brainTraining => 'Antrenament cerebral';

  @override
  String get brainExercises => 'Exerciții cerebrale';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      'Jocuri de memorie, antrenament de atenție și evaluări cognitive pentru a-ți menține mintea activă';

  @override
  String get reminiscenceTherapy => 'Terapia reminiscenței';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      'Împărtășește amintiri, povești și experiențe pentru a menține funcția cognitivă și bunăstarea emoțională';

  @override
  String get cognitiveAssessment => 'Evaluare cognitivă';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      'Testare cognitivă regulată pentru a-ți urmări sănătatea creierului și a identifica zonele de îmbunătățire';

  @override
  String get brainHealthTips => 'Sfaturi pentru sănătatea creierului';

  @override
  String get stayMentallyActive => 'Rămâi mental activ';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      'Citește, fă puzzle-uri, învață abilități noi sau angajează-te în hobby-uri care îți provoacă mintea.';

  @override
  String get shareYourMemories => 'Împărtășește-ți amintirile';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      'Vorba despre experiențele trecute ajută la menținerea memoriei și conexiunilor emoționale.';

  @override
  String get staySociallyConnected => 'Rămâi conectat social';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      'Interacțiunea socială regulată este crucială pentru sănătatea cognitivă și bunăstarea emoțională.';

  @override
  String get manageStress => 'Gestionează stresul';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      'Stresul cronic poate afecta negativ memoria și funcția cognitivă.';

  @override
  String get reminiscenceTherapySessionsComingSoon =>
      'Sesiunile de terapie a reminiscenței vin în curând!';

  @override
  String get cognitiveAssessmentToolsComingSoon =>
      'Instrumentele de evaluare cognitivă vin în curând!';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      'Rămâi conectat cu comunitatea ta și combate singurătatea';

  @override
  String get socialFeatures => 'Funcții sociale';

  @override
  String get communityEvents => 'Evenimente comunitare';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      'Descoperă artele locale, meșteșugurile și activitățile sociale organizate de centrele de sprijin pentru demență';

  @override
  String get communityForum => 'Forumul comunității';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      'Conectează-te cu alții, împărtășește experiențe și primește sprijin de la comunitate';

  @override
  String get dementiaEncyclopedia => 'Enciclopedia demenței';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      'Învață despre demență, strategiile de prevenire și găsește resurse utile';

  @override
  String get socialConnectionTips => 'Sfaturi pentru conectarea socială';

  @override
  String get joinLocalGroups => 'Alătură-te grupurilor locale';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      'Caută ateliere de artă și meșteșuguri, grupuri de plimbare sau cluburi de hobby în zona ta.';

  @override
  String get stayInTouch => 'Rămâi în contact';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      'Apelurile telefonice regulate sau chat-urile video cu familia și prietenii pot face o mare diferență.';

  @override
  String get volunteer => 'Voluntariat';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      'A da înapoi comunității poate oferi scop și conectare socială.';

  @override
  String get learnSomethingNew => 'Învață ceva nou';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      'Participarea la cursuri sau alăturarea la grupuri de învățare te poate ajuta să întâlnești oameni cu gândire similară.';

  @override
  String get couldNotOpenNHSWebsite => 'Nu s-a putut deschide site-ul NHS';

  @override
  String get couldNotOpenNHSBookingWebsite =>
      'Nu s-a putut deschide site-ul de rezervare NHS';

  @override
  String get healthCheckComplete => 'Verificarea sănătății completă';

  @override
  String get healthCheckOverdue => 'Verificarea sănătății întârziată';

  @override
  String get healthCheckDueSoon => 'Verificarea sănătății în curând';

  @override
  String get benefitsOfNHSHealthCheck =>
      'Beneficiile verificării sănătății NHS';

  @override
  String get earlyDetection => 'Detectare timpurie';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      'Identifică riscurile de sănătate înainte să devină probleme serioase';

  @override
  String get dementiaPrevention => 'Prevenirea demenței';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      'Ajută să reduci riscul de dezvoltare a demenței prin sfaturi despre stilul de viață';

  @override
  String get lifestyleAdvice => 'Sfaturi despre stilul de viață';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      'Obține sfaturi personalizate despre dietă, exercițiu și viața sănătoasă';

  @override
  String get freeService => 'Serviciu gratuit';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes =>
      'Complet gratuit și durează aproximativ 20-30 de minute';

  @override
  String get learnMoreAboutHealthChecks =>
      'Află mai multe despre verificările sănătății';

  @override
  String get markAsNotCompleted => 'Marchează ca necompletat';

  @override
  String get bookYourHealthCheck => 'Rezervă verificarea sănătății';

  @override
  String get currentWeight => 'Greutatea actuală';

  @override
  String get updated => 'Actualizat';

  @override
  String get notRecorded => 'Nu este înregistrat';

  @override
  String get addYourHeightToCalculateBMI =>
      'Adaugă înălțimea pentru a calcula IMC';

  @override
  String get logNewWeight => 'Înregistrează greutatea nouă';

  @override
  String get enterYourWeight => 'Introdu greutatea';

  @override
  String get pleaseEnterYourWeight => 'Te rog introdu greutatea';

  @override
  String get pleaseEnterAValidNumber => 'Te rog introdu un număr valid';

  @override
  String get weightHistory => 'Istoricul greutății';

  @override
  String get trackYourWeightChangesOverTime =>
      'Urmărește schimbările greutății în timp';

  @override
  String get weightChartComingSoon => 'Graficul greutății vine în curând';

  @override
  String get bmiInformation => 'Informații IMC';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI =>
      'Adaugă înălțimea și greutatea pentru a calcula IMC';

  @override
  String get below18Point5 => 'Sub 18,5';

  @override
  String get bmiRange18Point5To24Point9 => '18,5 - 24,9';

  @override
  String get bmiRange25Point0To29Point9 => '25,0 - 29,9';

  @override
  String get bmiRange30Point0AndAbove => '30,0 și peste';

  @override
  String get todaysActivity => 'Activitatea de Astăzi';

  @override
  String get steps => 'Pași';

  @override
  String get distance => 'Distanță';

  @override
  String get calories => 'Calorii';

  @override
  String get duration => 'Durată';

  @override
  String get logWalk => 'Înregistrează Plimbarea';

  @override
  String get logExercise => 'Înregistrează Exercițiul';

  @override
  String get setGoals => 'Stabilește Obiective';

  @override
  String get viewHistory => 'Vezi Istoricul';

  @override
  String get weeklyProgress => 'Progresul Săptămânal';

  @override
  String get activityChartsComingSoon =>
      'Graficele de activitate vin în curând!';

  @override
  String get goalSettingFeatureComingSoon =>
      'Funcția de stabilire a obiectivelor vine în curând!';

  @override
  String get activityHistory => 'Istoricul Activității';

  @override
  String get activityHistoryFeatureComingSoon =>
      'Funcția de istoric al activității vine în curând!';

  @override
  String get dailyBrainTeaser => 'Ghicitoarea Zilnică a Creierului';

  @override
  String get aQuickPuzzleToStartYourDay =>
      'O ghicitoare rapidă pentru a-ți începe ziua';

  @override
  String get memoryMatchGame => 'Jocul de Memorie';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory =>
      'Potrivește perechile de cărți pentru a-ți îmbunătăți memoria pe termen scurt';

  @override
  String get wordAssociation => 'Asocierea Cuvintelor';

  @override
  String get connectWordsAndExpandYourVocabulary =>
      'Conectează cuvintele și îți extinde vocabularul';

  @override
  String get activities => 'Activități';

  @override
  String get reminiscence => 'Reminiscență';

  @override
  String get continueButton => 'Continuă';

  @override
  String get start => 'Începe';

  @override
  String get noPromptAvailable => 'Niciun prompt disponibil';

  @override
  String get review => 'Revizuiește';

  @override
  String get trainingProgress => 'Progresul Antrenamentului';

  @override
  String get activityProgress => 'Progresul Activității';

  @override
  String get reminiscenceSessions => 'Sesiunile de Reminiscență';

  @override
  String get untitledSession => 'Sesiune fără titlu';

  @override
  String get reminiscenceSession => 'Sesiunea de Reminiscență';

  @override
  String get theMediterraneanDiet => 'Dieta Mediteraneană';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      'Concentrează-te pe fructe, legume, cereale integrale și grăsimi sănătoase ca uleiul de măsline. Această dietă a fost legată de reducerea riscului de demență';

  @override
  String get brainHealth => 'Sănătatea Creierului';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      'Bea 6-8 pahare de apă zilnic. Hidratarea corespunzătoare este esențială pentru funcția creierului și sănătatea generală';

  @override
  String get hydration => 'Hidratare';

  @override
  String get omega3FattyAcids => 'Acizii Grași Omega-3';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      'Include pește ca somonul, macroul și sardinele în dieta ta. Omega-3 susțin sănătatea creierului și pot reduce inflamația';

  @override
  String get antioxidantRichFoods => 'Alimente Bogate în Antioxidanți';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      'Mănâncă fructe de pădure, verzi frunzoase întunecate și legume colorate. Antioxidanții ajută la protejarea celulelor creierului de la daune';

  @override
  String get general => 'General';

  @override
  String get limitProcessedFoods => 'Limitează Alimentele Procesate';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      'Reduce consumul de carne procesată, gustări dulci și alimente prăjite. Acestea pot contribui la inflamație și declinul cognitiv';

  @override
  String get vitaminDForBrainHealth => 'Vitamina D pentru Sănătatea Creierului';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      'Obține vitamina D adecvată prin soare, alimente îmbogățite sau suplimente. Deficiența de vitamina D a fost legată de probleme cognitive';

  @override
  String get vitamins => 'Vitamine';

  @override
  String get healthyEatingForBrainHealth =>
      'Alimentație sănătoasă pentru sănătatea creierului';

  @override
  String get allTips => 'Toate sfaturile';

  @override
  String get tipBookmarked => 'Sfat adăugat la marcaje!';

  @override
  String get bookmarkRemoved => 'Marcaj eliminat';

  @override
  String get generalInformation => 'Informații generale';

  @override
  String get symptoms => 'Simptome';

  @override
  String get riskFactors => 'Factori de risc';

  @override
  String get types => 'Tipuri';

  @override
  String get diagnosis => 'Diagnostic';

  @override
  String get treatment => 'Tratament';

  @override
  String get prevention => 'Prevenție';

  @override
  String get caregiving => 'Îngrijire';

  @override
  String get entryBookmarked => 'Intrare adăugată la marcaje!';

  @override
  String get wellbeing => 'Bunăstare';

  @override
  String get createNewPost => 'Creează post nou';

  @override
  String get postCreationFeatureComingSoon =>
      'Funcția de creare a posturilor vine în curând!';

  @override
  String get postDetails => 'Detalii post';

  @override
  String get reply => 'Răspunde';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      'Alătură-te evenimentelor locale concepute pentru a susține sănătatea cognitivă și implicarea socială';

  @override
  String get allEvents => 'Toate evenimentele';

  @override
  String get arts => 'Arte';

  @override
  String get music => 'Muzică';

  @override
  String get education => 'Educație';

  @override
  String get fullyBooked => 'Complet rezervat';

  @override
  String get register => 'Înregistrează-te';

  @override
  String get joinEvent => 'Alătură-te evenimentului';

  @override
  String get location => 'Locație';

  @override
  String get date => 'Data';

  @override
  String get time => 'Ora';

  @override
  String get participants => 'Participanți';

  @override
  String get organizer => 'Organizator';

  @override
  String get contact => 'Contact';

  @override
  String get registerForEvent => 'Înregistrează-te la eveniment';

  @override
  String get surveys => 'Sondaje';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      'Evaluările regulate ajută la urmărirea progresului și identificarea zonelor de îmbunătățire';

  @override
  String get allSurveys => 'Toate sondajele';

  @override
  String get comprehensive => 'Cuprinzător';

  @override
  String get lifestyle => 'Stil de viață';

  @override
  String get reviewResults => 'Revizuiește rezultatele';

  @override
  String get startSurvey => 'Începe sondajul';

  @override
  String get previous => 'Anterior';

  @override
  String get complete => 'Complet';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Nu';

  @override
  String get unsupportedQuestionType => 'Tip de întrebare nesuportat';

  @override
  String get rewards => 'Recompense';

  @override
  String get availablePoints => 'Puncte disponibile';

  @override
  String get totalEarned => 'Total câștigate';

  @override
  String get availableRewards => 'Recompense disponibile';

  @override
  String get partner => 'Partener';

  @override
  String get redeem => 'Răscumpără';

  @override
  String get notEnoughPointsToRedeemThisReward =>
      'Nu ai suficiente puncte pentru a răscumpăra această recompensă';

  @override
  String get redeemReward => 'Răscumpără recompensa';

  @override
  String get dailyDietReflection => 'Reflecția Zilnică asupra Dietei';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      'Reflectează asupra obiceiurilor tale alimentare și urmărește progresul către o dietă mai sănătoasă';

  @override
  String get saveReflection => 'Salvează Reflecția';

  @override
  String get reflection => 'Reflecție';

  @override
  String get areasForImprovement => 'Zone de Îmbunătățire';

  @override
  String get recentReflections => 'Reflecții Recente';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting =>
      'Te rugăm să scrii o reflecție înainte de a trimite';

  @override
  String get excellent => 'Excelent';

  @override
  String get good => 'Bun';

  @override
  String get average => 'Mediu';

  @override
  String get poor => 'Sărac';

  @override
  String get veryPoor => 'Foarte sărac';

  @override
  String get goodChoicesWithRoomForMinorImprovements =>
      'Alegări bune cu loc pentru îmbunătățiri minore';

  @override
  String get moreFruitsAndVegetables => 'Mai multe fructe și legume';

  @override
  String get reduceProcessedFoods => 'Reduce alimentele procesate';

  @override
  String get increaseWaterIntake => 'Crește consumul de apă';

  @override
  String get moreWholeGrains => 'Mai multe cereale integrale';

  @override
  String get reduceSugarIntake => 'Reduce consumul de zahăr';

  @override
  String get moreLeanProteins => 'Mai multe proteine slabe';

  @override
  String get betterPortionControl => 'Control mai bun al porțiilor';

  @override
  String get regularMealTiming => 'Programul regulat al meselor';

  @override
  String get languageChanged => 'Limba a fost schimbată cu succes';

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
  String get areYouSureYouWantToRedeem => 'Ești sigur că vrei să răscumperi';

  @override
  String get forText => 'pentru';

  @override
  String get points => 'puncte';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => 'Progresul Tău';

  @override
  String get survey => 'Sondaj';

  @override
  String get nhsHealthCheckCompleted =>
      'Verificarea de sănătate NHS completată';

  @override
  String get nhsHealthCheckRecommended =>
      'Verificarea de sănătate NHS recomandată';

  @override
  String get todaysStats => 'Statisticile de Azi';

  @override
  String get water => 'Apă';

  @override
  String get sleep => 'Somn';

  @override
  String get glasses => 'pahare';

  @override
  String get hours => 'ore';

  @override
  String get ofText => 'din';

  @override
  String get urgent => 'URGENT';

  @override
  String get view => 'Vezi';

  @override
  String get activityStartedMock => 'Activitatea a început! (Mock)';

  @override
  String get reminiscenceSessionStartedMock =>
      'Sesiunea de reminiscență a început! (Mock)';

  @override
  String get healthCheckMarkedAsCompleted =>
      'Verificarea de sănătate marcată ca completată!';

  @override
  String get weightLogged => 'Greutatea înregistrată';

  @override
  String get reflectionSavedSuccessfully => 'Reflecția salvată cu succes!';

  @override
  String get surveyCompletedSuccessfully => 'Sondajul completat cu succes!';

  @override
  String get successfullyRedeemed => 'Utilizat cu succes';

  @override
  String get notesOptional => 'Notițe (opțional)';

  @override
  String get writeYourThoughtsHere => 'Scrie gândurile tale aici...';

  @override
  String get howWouldYouRateYourDietQualityToday =>
      'Cum ai evalua calitatea dietei tale astăzi?';

  @override
  String get whatDidYouEatToday =>
      'Ce ai mâncat astăzi? Cum te-ai simțit cu privire la alegerile tale alimentare? Ce a mers bine și ce s-ar putea îmbunătăți?';

  @override
  String get visualizeYourWeightTrends =>
      'Vizualizează tendințele greutății și progresul în timp cu grafice interactive.';

  @override
  String get question => 'Întrebare';

  @override
  String get ofQuestions => 'din';

  @override
  String get surveyResultsFeatureComingSoon =>
      'Funcția de rezultate ale sondajului vine în curând!';

  @override
  String get whatIsAnNHSHealthCheck => 'Ce este o verificare de sănătate NHS?';

  @override
  String get rememberMeAndYourHealth => 'RememberMe și Sănătatea Ta';

  @override
  String get regularHealthChecksAreImportant =>
      'Verificările regulate de sănătate sunt o parte importantă a menținerii sănătății creierului și reducerea riscului de demență. Verificarea de sănătate NHS oferă informații valoroase care completează călătoria ta cu RememberMe.';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      'Urmărește rezultatele verificării de sănătate în RememberMe pentru a monitoriza factorii de risc de demență în timp.';

  @override
  String get iveAlreadyHadMyHealthCheck =>
      'Am avut deja verificarea de sănătate';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      'Voucher pentru cafea - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      'Bucură-te de o cafea gratuită la Cambridge Coffee House, o cafenea locală independentă.';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => 'Reducere la librărie - Heffers';

  @override
  String get heffersBookshop => 'Librăria Heffers';

  @override
  String get solveThePuzzle => 'Rezolvă puzzle-ul.';

  @override
  String get submitYourAnswer => 'Trimite răspunsul tău.';

  @override
  String get whatHasAnEyeButCannotSee => 'Ce are un ochi, dar nu poate vedea?';

  @override
  String get flipTwoCards => 'Întoarce două cărți.';

  @override
  String get ifTheyMatchTheyDisappear => 'Dacă se potrivesc, dispar.';

  @override
  String get matchAllPairs => 'Potrivește toate perechile.';

  @override
  String get startWithAWord => 'Începe cu un cuvânt.';

  @override
  String get listAssociatedWords => 'Listează cuvintele asociate.';

  @override
  String get tryToMakeAChain => 'Încearcă să faci un lanț.';

  @override
  String get whatWasYourFavoriteChildhoodGame =>
      'Care a fost jocul sau jucăria ta preferată din copilărie?';

  @override
  String get myFavoriteToyWasARedTrainSet =>
      'Jucăria mea preferată a fost un set de tren roșu. Am petrecut ore întregi construind șine și imaginându-mi călătorii.';

  @override
  String get describeAMemorableFamilyHoliday =>
      'Descrie o vacanță de familie memorabilă.';

  @override
  String get min => 'min';

  @override
  String get status => 'Status';

  @override
  String get difficulty => 'Dificultate';

  @override
  String get registrationSuccessful =>
      'Înregistrarea a reușit! Veți primi un e-mail de confirmare.';

  @override
  String get replyPostedSuccessfully => 'Răspunsul a fost postat cu succes!';

  @override
  String get activityLoggingFeatureComingSoon =>
      'Funcția de înregistrare a activității vine în curând!';

  @override
  String get maintainAHealthyWeight => 'Menține o Greutate Sănătoasă';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      'Menține IMC-ul între 18,5 și 24,9 pentru sănătatea optimă.';

  @override
  String get regularHealthChecks => 'Verificări Regulate de Sănătate';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years =>
      'Rezervă verificarea gratuită de sănătate NHS la fiecare 5 ani.';

  @override
  String get monitorYourVitals => 'Monitorizează Parametrii Vitali';

  @override
  String get knowYourNumbers => 'Cunoaște Numerele Tale';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      'Monitorizează regulat tensiunea arterială, colesterolul și glicemia.';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      'Țintește la cel puțin 150 de minute de exerciții moderate pe săptămână.';

  @override
  String get label => 'Etichetă';

  @override
  String get likes => 'aprecieri';
}
