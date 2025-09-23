// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'RememberMe';

  @override
  String get appDescription => 'NHS痴呆症预防生活方式追踪器';

  @override
  String get health => '健康';

  @override
  String get healthMonitoring => '健康监测';

  @override
  String get healthMonitoringDescription => '跟踪您的体重、BMI和健康检查状态';

  @override
  String get healthFeatures => '健康功能';

  @override
  String get quickActions => '快速操作';

  @override
  String get weightDiary => '体重日记';

  @override
  String get weightDiaryDescription => '记录您的日常体重并跟踪BMI随时间的变化';

  @override
  String lastLogged(Object weight) {
    return '最后记录：${weight}kg';
  }

  @override
  String get notLoggedYet => '尚未记录';

  @override
  String get nhsHealthCheck => 'NHS健康检查';

  @override
  String get nhsHealthCheckDescription => '预约您的免费NHS健康检查以监测您的健康';

  @override
  String completed(Object date) {
    return '已完成 $date';
  }

  @override
  String get completedRecently => '最近完成';

  @override
  String get dueNow => '现在到期 - 预约您的免费检查';

  @override
  String get notDueYet => '尚未到期';

  @override
  String get healthProfile => '健康档案';

  @override
  String get healthProfileDescription => '管理您的医疗状况、药物和紧急联系人';

  @override
  String gpRegistered(Object gpName) {
    return '全科医生：$gpName';
  }

  @override
  String get noGpRegistered => '未注册全科医生';

  @override
  String get logWeight => '记录体重';

  @override
  String get healthTips => '健康提示';

  @override
  String get healthOverview => '健康概览';

  @override
  String get weight => '体重';

  @override
  String get bmi => 'BMI';

  @override
  String get bmiCategory => 'BMI类别';

  @override
  String get notSet => '未设置';

  @override
  String get calculate => '计算';

  @override
  String get unknown => '未知';

  @override
  String get underweight => '体重不足';

  @override
  String get normalWeight => '正常体重';

  @override
  String get overweight => '超重';

  @override
  String get obese => '肥胖';

  @override
  String get bmiMessageUnderweight => '考虑与您的全科医生讨论健康增重策略。';

  @override
  String get bmiMessageNormal => '太好了！您处于健康的体重范围内。继续保持！';

  @override
  String get bmiMessageOverweight => '考虑与您的全科医生讨论健康体重管理。';

  @override
  String get bmiMessageObese => '请与您的全科医生讨论体重管理选项。';

  @override
  String get bmiMessageDefault => '定期监测您的体重以获得最佳健康。';

  @override
  String get progress => '进度';

  @override
  String get noUserDataAvailable => '无用户数据可用';

  @override
  String get healthProfileManagementComingSoon => '健康档案管理即将推出';

  @override
  String get today => '今天';

  @override
  String get yesterday => '昨天';

  @override
  String daysAgo(Object count) {
    return '$count天前';
  }

  @override
  String weeksAgo(Object count) {
    return '$count周前';
  }

  @override
  String monthsAgo(Object count) {
    return '$count个月前';
  }

  @override
  String yearsAgo(Object count) {
    return '$count年前';
  }

  @override
  String get language => '语言';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get selectLanguageDescription => '为应用选择您喜欢的语言';

  @override
  String get systemLanguageSettings => '系统语言设置';

  @override
  String get systemLanguageSettingsDescription => '打开设备语言设置';

  @override
  String get systemLanguageSettingsDialog => '这将打开您设备的语言设置。应用将自动检测并使用您的系统语言偏好。';

  @override
  String get systemSettingsFallback => '请前往设备的设置 > 语言与地区来更改系统语言。';

  @override
  String get cancel => '取消';

  @override
  String get openSettings => '打开设置';

  @override
  String get settings => '设置';

  @override
  String get profile => '个人资料';

  @override
  String get userName => '用户名';

  @override
  String get userEmail => '用户@示例.com';

  @override
  String get changePassword => '修改密码';

  @override
  String get notifications => '通知';

  @override
  String get pushNotifications => '推送通知';

  @override
  String get receiveRemindersAndUpdates => '接收提醒和更新';

  @override
  String get dailyHealthReminders => '每日健康提醒';

  @override
  String get morningRemindersForHealthTracking => '健康跟踪的晨间提醒';

  @override
  String get surveyReminders => '调查提醒';

  @override
  String get notificationsForPendingSurveys => '待处理调查的通知';

  @override
  String get privacyAndDataSharing => '隐私和数据共享';

  @override
  String get dataPrivacyInfo => '您的数据隐私对我们很重要。所有数据共享都是可选的，可以随时更改。';

  @override
  String get shareDataWithResearchCenters => '与研究中心共享数据';

  @override
  String get helpAdvanceDementiaResearch => '帮助推进痴呆症研究（仅匿名数据）';

  @override
  String get healthDataSharing => '健康数据共享';

  @override
  String get shareHealthMetricsWithHealthcareProvider => '与您的医疗保健提供者共享健康指标';

  @override
  String get locationTracking => '位置跟踪';

  @override
  String get allowLocationDataForActivityTracking => '允许位置数据用于活动跟踪';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get termsOfService => '服务条款';

  @override
  String get researchParticipation => '研究参与';

  @override
  String get researchParticipationInfo => '参与研究有助于推进痴呆症预防和治疗。';

  @override
  String get participateInResearchStudies => '参与研究';

  @override
  String get joinStudiesConductedByLucyCavendishCollege =>
      '加入Lucy Cavendish College进行的研究';

  @override
  String get currentResearchStudies => '当前研究';

  @override
  String get viewAvailableStudiesYouCanParticipateIn => '查看您可以参与的可用研究';

  @override
  String get appInformation => '应用信息';

  @override
  String get version => '版本';

  @override
  String get versionNumber => '1.0.0';

  @override
  String get developedBy => '开发方';

  @override
  String get lucyCavendishCollegeUniversityOfCambridge =>
      'Lucy Cavendish College, University of Cambridge';

  @override
  String get reportABug => '报告错误';

  @override
  String get support => '支持';

  @override
  String get helpAndFAQ => '帮助和常见问题';

  @override
  String get contactSupport => '联系支持';

  @override
  String get sendFeedback => '发送反馈';

  @override
  String get signOut => '退出登录';

  @override
  String get editProfile => '编辑个人资料';

  @override
  String get profileEditingFeatureComingSoon => '个人资料编辑功能即将推出！';

  @override
  String get ok => 'OK';

  @override
  String get changePasswordTitle => '修改密码';

  @override
  String get passwordChangeFeatureComingSoon => '密码修改功能即将推出！';

  @override
  String get dataSharingConsent => '数据共享同意';

  @override
  String get dataSharingConsentText =>
      '通过启用数据共享，您同意与痴呆症研究中心共享匿名健康数据。这有助于推进痴呆症预防的科学理解。您的个人信息永远不会被共享。';

  @override
  String get iUnderstand => '我理解';

  @override
  String get researchParticipationTitle => '研究参与';

  @override
  String get researchParticipationText =>
      '通过参与研究，您帮助推进痴呆症预防研究。您可以随时退出任何研究，您的参与完全是自愿的。';

  @override
  String get iAgree => '我同意';

  @override
  String get privacyPolicyTitle => '隐私政策';

  @override
  String get privacyPolicyText =>
      '隐私政策内容将在此处。这将包括我们如何收集、使用和保护您个人数据的详细信息，符合英国GDPR法规。';

  @override
  String get close => '关闭';

  @override
  String get termsOfServiceTitle => '服务条款';

  @override
  String get termsOfServiceText => '服务条款内容将在此处。这将包括使用RememberMe应用的条件和条款。';

  @override
  String get currentResearchStudiesTitle => '当前研究';

  @override
  String get researchStudiesFeatureComingSoon => '研究功能即将推出！';

  @override
  String get reportABugTitle => '报告错误';

  @override
  String get bugReportingFeatureComingSoon => '错误报告功能即将推出！';

  @override
  String get helpAndFAQTitle => '帮助和常见问题';

  @override
  String get helpSectionComingSoon => '帮助部分即将推出！';

  @override
  String get contactSupportTitle => '联系支持';

  @override
  String get supportContactFeatureComingSoon => '支持联系功能即将推出！';

  @override
  String get sendFeedbackTitle => '发送反馈';

  @override
  String get feedbackFeatureComingSoon => '反馈功能即将推出！';

  @override
  String get signOutTitle => '退出登录';

  @override
  String get areYouSureYouWantToSignOut => '您确定要退出登录吗？';

  @override
  String get signedOutSuccessfully => '成功退出登录';

  @override
  String get overview => '概览';

  @override
  String get domains => '领域';

  @override
  String get developedInPartnershipWithNHS => '与NHS合作开发';

  @override
  String get healthDomains => '健康领域';

  @override
  String get healthDescription => '体重跟踪、NHS健康检查提醒和健康监测';

  @override
  String get socialEngagement => '社会参与';

  @override
  String get socialEngagementDescription => '社区活动、论坛和社交活动';

  @override
  String get physicalActivity => '身体活动';

  @override
  String get physicalActivityDescription => '步数跟踪、运动目标和活动监测';

  @override
  String get goalAchievedToday => '今日目标达成';

  @override
  String get cognitiveTraining => '认知训练';

  @override
  String get cognitiveTrainingDescription => '记忆练习、回忆疗法和大脑训练';

  @override
  String get exerciseCompletedYesterday => '昨天完成练习';

  @override
  String get healthyDiet => '健康饮食';

  @override
  String get healthyDietDescription => '营养提示、餐食跟踪和健康饮食指导';

  @override
  String get reminders => '提醒';

  @override
  String get viewAll => '查看全部';

  @override
  String get healthSurveyDue => '健康调查待完成';

  @override
  String get healthSurveyDueDescription => '完成您的健康评估以跟踪您的进展';

  @override
  String get takeSurvey => '进行调查';

  @override
  String get learnMore => '了解更多';

  @override
  String get recentActivity => '最近活动';

  @override
  String get startTrackingYourActivities => '开始跟踪您的活动';

  @override
  String get healthTipOfTheDay => '今日健康提示';

  @override
  String get stayHydrated => '保持水分';

  @override
  String get logActivity => '记录';

  @override
  String get community => '社区';

  @override
  String get back => '返回';

  @override
  String get next => '下一个';

  @override
  String get getStarted => '开始使用';

  @override
  String get welcomeToRememberMe => '欢迎使用RememberMe';

  @override
  String get nhsPartnership => 'NHS合作';

  @override
  String get supportingYourBrainHealth => '支持您的大脑健康';

  @override
  String get dailyWalksAndExerciseToKeepYourBrainActive => '日常散步和锻炼保持大脑活跃';

  @override
  String get healthyNutrition => '健康营养';

  @override
  String get brainHealthyFoodsAndHydrationReminders => '有益大脑健康的食物和水分提醒';

  @override
  String get socialConnection => '社交连接';

  @override
  String get stayConnectedWithCommunityAndFriends => '与社区和朋友保持联系';

  @override
  String get memoryExercisesAndReminiscenceTherapy => '记忆练习和回忆疗法';

  @override
  String get yourPersonalDashboard => '您的个人仪表板';

  @override
  String get social => '社交';

  @override
  String get fitness => '健身';

  @override
  String get cognitive => '认知';

  @override
  String get nutrition => '营养';

  @override
  String get yourPrivacyMatters => '您的隐私很重要';

  @override
  String get secureDataStorage => '安全数据存储';

  @override
  String get yourInformationIsEncryptedAndStoredSecurely => '您的信息经过加密并安全存储';

  @override
  String get optInDataSharing => '选择加入数据共享';

  @override
  String get chooseWhetherToShareDataWithResearchPartners => '选择是否与研究合作伙伴共享数据';

  @override
  String get transparentPolicies => '透明政策';

  @override
  String get clearPrivacyPoliciesAndDataUsageInformation => '清晰的隐私政策和数据使用信息';

  @override
  String get dataControl => '数据控制';

  @override
  String get deleteYourDataAtAnyTime => '随时删除您的数据';

  @override
  String get brainHealthyEating => '有益大脑健康的饮食';

  @override
  String get nutritionTips => '营养建议';

  @override
  String
  get evidenceBasedDietaryRecommendationsToSupportBrainHealthAndReduceDementiaRisk =>
      '基于证据的饮食建议，支持大脑健康并降低痴呆风险';

  @override
  String get dietReflection => '饮食反思';

  @override
  String get logYourMealsAndGetPersonalizedFeedbackOnYourNutritionChoices =>
      '记录您的餐食并获得关于营养选择的个性化反馈';

  @override
  String get hydrationTracker => '水分追踪器';

  @override
  String get trackYourDailyWaterIntakeAndReceiveRemindersToStayHydrated =>
      '追踪您的每日水分摄入并接收保持水分的提醒';

  @override
  String get leafyGreens => '绿叶蔬菜';

  @override
  String get spinachKaleAndOtherGreensAreRichInFolateAndVitaminK =>
      '菠菜、羽衣甘蓝和其他绿叶蔬菜富含叶酸和维生素K';

  @override
  String get berries => '浆果';

  @override
  String get blueberriesStrawberriesAndOtherBerriesContainAntioxidants =>
      '蓝莓、草莓和其他浆果含有抗氧化剂';

  @override
  String get wholeGrains => '全谷物';

  @override
  String get brownRiceQuinoaAndOatsProvideSustainedEnergyAndFiber =>
      '糙米、藜麦和燕麦提供持续能量和纤维';

  @override
  String get fish => '鱼类';

  @override
  String get salmonSardinesAndOtherFattyFishAreExcellentSourcesOfOmega3s =>
      '鲑鱼、沙丁鱼和其他脂肪鱼是omega-3的极佳来源';

  @override
  String get mealTracking => '餐食追踪';

  @override
  String get mealTrackingFeatureComingSoon => '餐食追踪功能即将推出！';

  @override
  String get hydrationTrackingFeatureComingSoon => '水分追踪功能即将推出！';

  @override
  String get stayActive => '保持活跃';

  @override
  String get activityTracker => '活动追踪器';

  @override
  String
  get trackYourDailyStepsWalksAndPhysicalActivitiesWithSmartWatchIntegration =>
      '通过智能手表集成追踪您的每日步数、步行和身体活动';

  @override
  String get exerciseGoals => '运动目标';

  @override
  String
  get setAndTrackYourWeeklyExerciseGoalsIncludingWalkingStrengthTrainingAndCardio =>
      '设置和追踪您的每周运动目标，包括步行、力量训练和有氧运动';

  @override
  String get socialActivities => '社交活动';

  @override
  String get joinGroupWalksFitnessClassesAndConnectWithOthersForMotivation =>
      '参加团体步行、健身课程，与他人联系获得动力';

  @override
  String get fitnessTips => '健身提示';

  @override
  String get mixCardioAndStrengthTraining => '混合有氧和力量训练';

  @override
  String
  get bothAerobicExerciseAndMuscleStrengtheningActivitiesAreImportantForOverallHealth =>
      '有氧运动和肌肉强化活动对整体健康都很重要。';

  @override
  String get stayConsistent => '保持一致性';

  @override
  String
  get regularActivityIsMoreBeneficialThanIntenseButIrregularExerciseSessions =>
      '定期活动比剧烈但不规律的运动更有益。';

  @override
  String get listenToYourBody => '倾听您的身体';

  @override
  String
  get startSlowlyAndGraduallyIncreaseIntensityConsultYourDoctorBeforeStartingNewExercises =>
      '慢慢开始，逐渐增加强度。在开始新运动前咨询您的医生。';

  @override
  String get exerciseGoalSettingFeatureComingSoon => '运动目标设置功能即将推出！';

  @override
  String get brainTraining => '大脑训练';

  @override
  String get brainExercises => '大脑练习';

  @override
  String
  get memoryGamesAttentionTrainingAndCognitiveAssessmentsToKeepYourMindActive =>
      '记忆游戏、注意力训练和认知评估，让您的大脑保持活跃';

  @override
  String get reminiscenceTherapy => '回忆疗法';

  @override
  String
  get shareMemoriesStoriesAndExperiencesToMaintainCognitiveFunctionAndEmotionalWellBeing =>
      '分享回忆、故事和经历，以维持认知功能和情感健康';

  @override
  String get cognitiveAssessment => '认知评估';

  @override
  String
  get regularCognitiveTestingToTrackYourBrainHealthAndIdentifyAreasForImprovement =>
      '定期认知测试，跟踪您的大脑健康并识别改进领域';

  @override
  String get brainHealthTips => '大脑健康提示';

  @override
  String get stayMentallyActive => '保持心理活跃';

  @override
  String
  get readDoPuzzlesLearnNewSkillsOrEngageInHobbiesThatChallengeYourMind =>
      '阅读、做拼图、学习新技能或参与挑战您思维的兴趣爱好。';

  @override
  String get shareYourMemories => '分享您的回忆';

  @override
  String
  get talkingAboutPastExperiencesHelpsMaintainMemoryAndEmotionalConnections =>
      '谈论过去的经历有助于维持记忆和情感联系。';

  @override
  String get staySociallyConnected => '保持社交联系';

  @override
  String
  get regularSocialInteractionIsCrucialForCognitiveHealthAndEmotionalWellBeing =>
      '定期社交互动对认知健康和情感健康至关重要。';

  @override
  String get manageStress => '管理压力';

  @override
  String get chronicStressCanNegativelyImpactMemoryAndCognitiveFunction =>
      '慢性压力会对记忆和认知功能产生负面影响。';

  @override
  String get reminiscenceTherapySessionsComingSoon => '回忆疗法课程即将推出！';

  @override
  String get cognitiveAssessmentToolsComingSoon => '认知评估工具即将推出！';

  @override
  String get stayConnectedWithYourCommunityAndCombatLoneliness =>
      '与您的社区保持联系并对抗孤独';

  @override
  String get socialFeatures => '社交功能';

  @override
  String get communityEvents => '社区活动';

  @override
  String
  get discoverLocalArtsCraftsAndSocialActivitiesOrganizedByDementiaSupportCenters =>
      '发现由痴呆支持中心组织的当地艺术、手工艺和社交活动';

  @override
  String get communityForum => '社区论坛';

  @override
  String get connectWithOthersShareExperiencesAndGetSupportFromTheCommunity =>
      '与他人联系，分享经验，并从社区获得支持';

  @override
  String get dementiaEncyclopedia => '痴呆症百科全书';

  @override
  String get learnAboutDementiaPreventionStrategiesAndFindHelpfulResources =>
      '了解痴呆、预防策略，并找到有用的资源';

  @override
  String get socialConnectionTips => '社交连接提示';

  @override
  String get joinLocalGroups => '加入当地团体';

  @override
  String get lookForArtsAndCraftsWorkshopsWalkingGroupsOrHobbyClubsInYourArea =>
      '在您的地区寻找艺术和手工艺工作坊、步行团体或爱好俱乐部。';

  @override
  String get stayInTouch => '保持联系';

  @override
  String
  get regularPhoneCallsOrVideoChatsWithFamilyAndFriendsCanMakeABigDifference =>
      '与家人和朋友定期通话或视频聊天可以产生很大影响。';

  @override
  String get volunteer => '志愿者';

  @override
  String get givingBackToYourCommunityCanProvidePurposeAndSocialConnection =>
      '回馈您的社区可以提供目标和社交连接。';

  @override
  String get learnSomethingNew => '学习新东西';

  @override
  String
  get takingClassesOrJoiningLearningGroupsCanHelpYouMeetLikeMindedPeople =>
      '参加课程或加入学习小组可以帮助您遇到志同道合的人。';

  @override
  String get couldNotOpenNHSWebsite => '无法打开NHS网站';

  @override
  String get couldNotOpenNHSBookingWebsite => '无法打开NHS预订网站';

  @override
  String get healthCheckComplete => '健康检查完成';

  @override
  String get healthCheckOverdue => '健康检查逾期';

  @override
  String get healthCheckDueSoon => '健康检查即将到期';

  @override
  String get benefitsOfNHSHealthCheck => 'NHS健康检查的好处';

  @override
  String get earlyDetection => '早期检测';

  @override
  String get identifiesHealthRisksBeforeTheyBecomeSeriousProblems =>
      '在健康风险变成严重问题之前识别它们';

  @override
  String get dementiaPrevention => '痴呆预防';

  @override
  String get helpsReduceYourRiskOfDevelopingDementiaThroughLifestyleAdvice =>
      '通过生活方式建议帮助降低患痴呆的风险';

  @override
  String get lifestyleAdvice => '生活方式建议';

  @override
  String get getPersonalizedAdviceOnDietExerciseAndHealthyLiving =>
      '获得关于饮食、运动和健康生活的个性化建议';

  @override
  String get freeService => '免费服务';

  @override
  String get completelyFreeAndTakesAbout20To30Minutes => '完全免费，大约需要20-30分钟';

  @override
  String get learnMoreAboutHealthChecks => '了解更多关于健康检查的信息';

  @override
  String get markAsNotCompleted => '标记为未完成';

  @override
  String get bookYourHealthCheck => '预订您的健康检查';

  @override
  String get currentWeight => '当前体重';

  @override
  String get updated => '已更新';

  @override
  String get notRecorded => '未记录';

  @override
  String get addYourHeightToCalculateBMI => '添加您的身高以计算BMI';

  @override
  String get logNewWeight => '记录新体重';

  @override
  String get enterYourWeight => '输入您的体重';

  @override
  String get pleaseEnterYourWeight => '请输入您的体重';

  @override
  String get pleaseEnterAValidNumber => '请输入有效数字';

  @override
  String get weightHistory => '体重历史';

  @override
  String get trackYourWeightChangesOverTime => '跟踪您随时间的体重变化';

  @override
  String get weightChartComingSoon => '体重图表即将推出';

  @override
  String get bmiInformation => 'BMI信息';

  @override
  String get addYourHeightAndWeightToCalculateYourBMI => '添加您的身高和体重以计算BMI';

  @override
  String get below18Point5 => '低于18.5';

  @override
  String get bmiRange18Point5To24Point9 => '18.5 - 24.9';

  @override
  String get bmiRange25Point0To29Point9 => '25.0 - 29.9';

  @override
  String get bmiRange30Point0AndAbove => '30.0及以上';

  @override
  String get todaysActivity => '今日活动';

  @override
  String get steps => '步数';

  @override
  String get distance => '距离';

  @override
  String get calories => '卡路里';

  @override
  String get duration => '持续时间';

  @override
  String get logWalk => '记录步行';

  @override
  String get logExercise => '记录运动';

  @override
  String get setGoals => '设定目标';

  @override
  String get viewHistory => '查看历史';

  @override
  String get weeklyProgress => '每周进度';

  @override
  String get activityChartsComingSoon => '活动图表即将推出！';

  @override
  String get goalSettingFeatureComingSoon => '目标设定功能即将推出！';

  @override
  String get activityHistory => '活动历史';

  @override
  String get activityHistoryFeatureComingSoon => '活动历史功能即将推出！';

  @override
  String get dailyBrainTeaser => '每日脑筋急转弯';

  @override
  String get aQuickPuzzleToStartYourDay => '开始一天的小谜题';

  @override
  String get memoryMatchGame => '记忆配对游戏';

  @override
  String get matchPairsOfCardsToImproveYourShortTermMemory => '配对卡片以改善您的短期记忆';

  @override
  String get wordAssociation => '词汇联想';

  @override
  String get connectWordsAndExpandYourVocabulary => '连接词汇并扩展您的词汇量';

  @override
  String get activities => '活动';

  @override
  String get reminiscence => '回忆';

  @override
  String get continueButton => '继续';

  @override
  String get start => '开始';

  @override
  String get noPromptAvailable => '没有可用的提示';

  @override
  String get review => '回顾';

  @override
  String get trainingProgress => '训练进度';

  @override
  String get activityProgress => '活动进度';

  @override
  String get reminiscenceSessions => '回忆治疗会话';

  @override
  String get untitledSession => '无标题会话';

  @override
  String get reminiscenceSession => '回忆治疗会话';

  @override
  String get theMediterraneanDiet => '地中海饮食';

  @override
  String
  get focusOnFruitsVegetablesWholeGrainsAndHealthyFatsLikeOliveOilThisDietHasBeenLinkedToReducedDementiaRisk =>
      '专注于水果、蔬菜、全谷物和健康脂肪如橄榄油。这种饮食与降低痴呆风险有关';

  @override
  String get brainHealth => '大脑健康';

  @override
  String
  get drink6To8GlassesOfWaterDailyProperHydrationIsEssentialForBrainFunctionAndOverallHealth =>
      '每天喝6-8杯水。适当的水分对大脑功能和整体健康至关重要';

  @override
  String get hydration => '水分';

  @override
  String get omega3FattyAcids => '欧米伽-3脂肪酸';

  @override
  String
  get includeFishLikeSalmonMackerelAndSardinesInYourDietOmega3sSupportBrainHealthAndMayReduceInflammation =>
      '在饮食中包含鲑鱼、鲭鱼和沙丁鱼等鱼类。欧米伽-3支持大脑健康并可能减少炎症';

  @override
  String get antioxidantRichFoods => '富含抗氧化剂的食物';

  @override
  String
  get eatBerriesDarkLeafyGreensAndColorfulVegetablesAntioxidantsHelpProtectBrainCellsFromDamage =>
      '吃浆果、深色绿叶蔬菜和彩色蔬菜。抗氧化剂有助于保护脑细胞免受损害';

  @override
  String get general => '一般';

  @override
  String get limitProcessedFoods => '限制加工食品';

  @override
  String
  get reduceIntakeOfProcessedMeatsSugarySnacksAndFriedFoodsTheseCanContributeToInflammationAndCognitiveDecline =>
      '减少加工肉类、含糖零食和油炸食品的摄入。这些可能导致炎症和认知衰退';

  @override
  String get vitaminDForBrainHealth => '大脑健康的维生素D';

  @override
  String
  get getAdequateVitaminDThroughSunlightFortifiedFoodsOrSupplementsVitaminDDeficiencyHasBeenLinkedToCognitiveIssues =>
      '通过阳光、强化食品或补充剂获得足够的维生素D。维生素D缺乏与认知问题有关';

  @override
  String get vitamins => '维生素';

  @override
  String get healthyEatingForBrainHealth => '有益大脑健康的健康饮食';

  @override
  String get allTips => '所有建议';

  @override
  String get tipBookmarked => '建议已收藏！';

  @override
  String get bookmarkRemoved => '已移除收藏';

  @override
  String get generalInformation => '一般信息';

  @override
  String get symptoms => '症状';

  @override
  String get riskFactors => '风险因素';

  @override
  String get types => '类型';

  @override
  String get diagnosis => '诊断';

  @override
  String get treatment => '治疗';

  @override
  String get prevention => '预防';

  @override
  String get caregiving => '护理';

  @override
  String get entryBookmarked => '条目已收藏！';

  @override
  String get wellbeing => '福祉';

  @override
  String get createNewPost => '创建新帖子';

  @override
  String get postCreationFeatureComingSoon => '帖子创建功能即将推出！';

  @override
  String get postDetails => '帖子详情';

  @override
  String get reply => '回复';

  @override
  String
  get joinLocalEventsDesignedToSupportCognitiveHealthAndSocialEngagement =>
      '参加旨在支持认知健康和社会参与的本地活动';

  @override
  String get allEvents => '所有活动';

  @override
  String get arts => '艺术';

  @override
  String get music => '音乐';

  @override
  String get education => '教育';

  @override
  String get fullyBooked => '已满员';

  @override
  String get register => '注册';

  @override
  String get joinEvent => '参加活动';

  @override
  String get location => '地点';

  @override
  String get date => '日期';

  @override
  String get time => '时间';

  @override
  String get participants => '参与者';

  @override
  String get organizer => '组织者';

  @override
  String get contact => '联系方式';

  @override
  String get registerForEvent => '注册活动';

  @override
  String get surveys => '调查';

  @override
  String
  get regularAssessmentsHelpTrackYourProgressAndIdentifyAreasForImprovement =>
      '定期评估有助于跟踪您的进度并识别需要改进的领域';

  @override
  String get allSurveys => '所有调查';

  @override
  String get comprehensive => '综合';

  @override
  String get lifestyle => '生活方式';

  @override
  String get reviewResults => '查看结果';

  @override
  String get startSurvey => '开始调查';

  @override
  String get previous => '上一个';

  @override
  String get complete => '完成';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get unsupportedQuestionType => '不支持的问题类型';

  @override
  String get rewards => '奖励';

  @override
  String get availablePoints => '可用积分';

  @override
  String get totalEarned => '总获得';

  @override
  String get availableRewards => '可用奖励';

  @override
  String get partner => '合作伙伴';

  @override
  String get redeem => '兑换';

  @override
  String get notEnoughPointsToRedeemThisReward => '积分不足以兑换此奖励';

  @override
  String get redeemReward => '兑换奖励';

  @override
  String get dailyDietReflection => '每日饮食反思';

  @override
  String
  get reflectOnYourEatingHabitsAndTrackYourProgressTowardsAHealthierDiet =>
      '反思您的饮食习惯并跟踪您向更健康饮食的进展';

  @override
  String get saveReflection => '保存反思';

  @override
  String get reflection => '反思';

  @override
  String get areasForImprovement => '改进领域';

  @override
  String get recentReflections => '最近的反思';

  @override
  String get pleaseWriteAReflectionBeforeSubmitting => '请在提交前写一份反思';

  @override
  String get excellent => '优秀';

  @override
  String get good => '良好';

  @override
  String get average => '一般';

  @override
  String get poor => '较差';

  @override
  String get veryPoor => '很差';

  @override
  String get goodChoicesWithRoomForMinorImprovements => '有改进空间的好选择';

  @override
  String get moreFruitsAndVegetables => '更多水果和蔬菜';

  @override
  String get reduceProcessedFoods => '减少加工食品';

  @override
  String get increaseWaterIntake => '增加水分摄入';

  @override
  String get moreWholeGrains => '更多全谷物';

  @override
  String get reduceSugarIntake => '减少糖分摄入';

  @override
  String get moreLeanProteins => '更多瘦肉蛋白';

  @override
  String get betterPortionControl => '更好的份量控制';

  @override
  String get regularMealTiming => '规律的用餐时间';

  @override
  String get languageChanged => '语言更改成功';

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
  String get areYouSureYouWantToRedeem => '您确定要兑换';

  @override
  String get forText => '换取';

  @override
  String get points => '积分';

  @override
  String get appName => 'RememberMe';

  @override
  String get appDeveloper => 'Lucy Cavendish College, University of Cambridge';

  @override
  String get yourProgress => '您的进度';

  @override
  String get survey => '调查';

  @override
  String get nhsHealthCheckCompleted => 'NHS健康检查已完成';

  @override
  String get nhsHealthCheckRecommended => '建议进行NHS健康检查';

  @override
  String get todaysStats => '今日统计';

  @override
  String get water => '水';

  @override
  String get sleep => '睡眠';

  @override
  String get glasses => '杯';

  @override
  String get hours => '小时';

  @override
  String get ofText => '的';

  @override
  String get urgent => '紧急';

  @override
  String get view => '查看';

  @override
  String get activityStartedMock => '活动已开始！（模拟）';

  @override
  String get reminiscenceSessionStartedMock => '回忆治疗会话已开始！（模拟）';

  @override
  String get healthCheckMarkedAsCompleted => '健康检查已标记为完成！';

  @override
  String get weightLogged => '体重已记录';

  @override
  String get reflectionSavedSuccessfully => '反思保存成功！';

  @override
  String get surveyCompletedSuccessfully => '调查完成成功！';

  @override
  String get successfullyRedeemed => '成功兑换';

  @override
  String get notesOptional => '备注（可选）';

  @override
  String get writeYourThoughtsHere => '在此写下您的想法...';

  @override
  String get howWouldYouRateYourDietQualityToday => '您如何评价今天的饮食质量？';

  @override
  String get whatDidYouEatToday => '您今天吃了什么？您对食物选择感觉如何？什么进展顺利，什么可以改进？';

  @override
  String get visualizeYourWeightTrends => '通过交互式图表可视化您的体重趋势和进度。';

  @override
  String get question => '问题';

  @override
  String get ofQuestions => '的';

  @override
  String get surveyResultsFeatureComingSoon => '调查结果功能即将推出！';

  @override
  String get whatIsAnNHSHealthCheck => '什么是NHS健康检查？';

  @override
  String get rememberMeAndYourHealth => 'RememberMe与您的健康';

  @override
  String get regularHealthChecksAreImportant =>
      '定期健康检查是维持大脑健康和降低痴呆风险的重要组成部分。NHS健康检查提供有价值的见解，补充您的RememberMe之旅。';

  @override
  String get keepTrackOfYourHealthCheckResults =>
      '在RememberMe中跟踪您的健康检查结果，以监控您的痴呆风险因素随时间的变化。';

  @override
  String get iveAlreadyHadMyHealthCheck => '我已经进行了健康检查';

  @override
  String get coffeeVoucherCambridgeCoffeeHouse =>
      '咖啡券 - Cambridge Coffee House';

  @override
  String get enjoyAFreeCoffeeAtCambridgeCoffeeHouse =>
      '在Cambridge Coffee House享受免费咖啡，这是一家当地独立咖啡店。';

  @override
  String get cambridgeCoffeeHouse => 'Cambridge Coffee House';

  @override
  String get bookstoreDiscountHeffers => '书店折扣 - Heffers';

  @override
  String get heffersBookshop => 'Heffers书店';

  @override
  String get solveThePuzzle => '解决谜题。';

  @override
  String get submitYourAnswer => '提交您的答案。';

  @override
  String get whatHasAnEyeButCannotSee => '什么有眼睛但看不见？';

  @override
  String get flipTwoCards => '翻转两张卡片。';

  @override
  String get ifTheyMatchTheyDisappear => '如果它们匹配，它们就消失。';

  @override
  String get matchAllPairs => '匹配所有配对。';

  @override
  String get startWithAWord => '从一个词开始。';

  @override
  String get listAssociatedWords => '列出相关词汇。';

  @override
  String get tryToMakeAChain => '尝试制作链条。';

  @override
  String get whatWasYourFavoriteChildhoodGame => '您最喜欢的童年游戏或玩具是什么？';

  @override
  String get myFavoriteToyWasARedTrainSet => '我最喜欢的玩具是一套红色火车。我花了几个小时建造轨道和想象旅程。';

  @override
  String get describeAMemorableFamilyHoliday => '描述一个难忘的家庭假期。';

  @override
  String get min => '分钟';

  @override
  String get status => '状态';

  @override
  String get difficulty => '难度';

  @override
  String get registrationSuccessful => '注册成功！您将收到确认邮件。';

  @override
  String get replyPostedSuccessfully => '回复发布成功！';

  @override
  String get activityLoggingFeatureComingSoon => '活动记录功能即将推出！';

  @override
  String get maintainAHealthyWeight => '保持健康体重';

  @override
  String get keepYourBMIBetween18Point5And24Point9ForOptimalHealth =>
      '将您的BMI保持在18.5到24.9之间以获得最佳健康。';

  @override
  String get regularHealthChecks => '定期健康检查';

  @override
  String get bookYourFreeNHSHealthCheckEvery5Years => '每5年预约您的免费NHS健康检查。';

  @override
  String get monitorYourVitals => '监测您的生命体征';

  @override
  String get knowYourNumbers => '了解您的数字';

  @override
  String get monitorYourBloodPressureCholesterolAndBloodSugarRegularly =>
      '定期监测您的血压、胆固醇和血糖。';

  @override
  String get aimForAtLeast150MinutesOfModerateExercisePerWeek =>
      '每周至少进行150分钟中等强度运动。';

  @override
  String get label => '标签';

  @override
  String get likes => '点赞';
}
