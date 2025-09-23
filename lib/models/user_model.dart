import 'package:uuid/uuid.dart';

class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final DateTime dateOfBirth;
  final String? phoneNumber;
  final String? address;
  final String? postcode;
  final Gender gender;
  final DateTime createdAt;
  final DateTime? lastLoginAt;
  final UserPreferences preferences;
  final UserHealthProfile healthProfile;
  final bool hasCompletedBaselineSurvey;
  final DateTime? lastSurveyDate;
  final bool dataSharingOptIn;
  final bool notificationOptIn;

  UserModel({
    String? id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.dateOfBirth,
    this.phoneNumber,
    this.address,
    this.postcode,
    required this.gender,
    DateTime? createdAt,
    this.lastLoginAt,
    UserPreferences? preferences,
    UserHealthProfile? healthProfile,
    this.hasCompletedBaselineSurvey = false,
    this.lastSurveyDate,
    this.dataSharingOptIn = false,
    this.notificationOptIn = true,
  }) : 
    id = id ?? const Uuid().v4(),
    createdAt = createdAt ?? DateTime.now(),
    preferences = preferences ?? UserPreferences(),
    healthProfile = healthProfile ?? UserHealthProfile();

  UserModel copyWith({
    String? firstName,
    String? lastName,
    String? email,
    DateTime? dateOfBirth,
    String? phoneNumber,
    String? address,
    String? postcode,
    Gender? gender,
    DateTime? lastLoginAt,
    UserPreferences? preferences,
    UserHealthProfile? healthProfile,
    bool? hasCompletedBaselineSurvey,
    DateTime? lastSurveyDate,
    bool? dataSharingOptIn,
    bool? notificationOptIn,
  }) {
    return UserModel(
      id: id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      postcode: postcode ?? this.postcode,
      gender: gender ?? this.gender,
      createdAt: createdAt,
      lastLoginAt: lastLoginAt ?? this.lastLoginAt,
      preferences: preferences ?? this.preferences,
      healthProfile: healthProfile ?? this.healthProfile,
      hasCompletedBaselineSurvey: hasCompletedBaselineSurvey ?? this.hasCompletedBaselineSurvey,
      lastSurveyDate: lastSurveyDate ?? this.lastSurveyDate,
      dataSharingOptIn: dataSharingOptIn ?? this.dataSharingOptIn,
      notificationOptIn: notificationOptIn ?? this.notificationOptIn,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'phoneNumber': phoneNumber,
      'address': address,
      'postcode': postcode,
      'gender': gender.toString().split('.').last,
      'createdAt': createdAt.toIso8601String(),
      'lastLoginAt': lastLoginAt?.toIso8601String(),
      'preferences': preferences.toJson(),
      'healthProfile': healthProfile.toJson(),
      'hasCompletedBaselineSurvey': hasCompletedBaselineSurvey,
      'lastSurveyDate': lastSurveyDate?.toIso8601String(),
      'dataSharingOptIn': dataSharingOptIn,
      'notificationOptIn': notificationOptIn,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      email: json['email'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      phoneNumber: json['phoneNumber'],
      address: json['address'],
      postcode: json['postcode'],
      gender: Gender.values.firstWhere(
        (e) => e.toString().split('.').last == json['gender'],
      ),
      createdAt: DateTime.parse(json['createdAt']),
      lastLoginAt: json['lastLoginAt'] != null ? DateTime.parse(json['lastLoginAt']) : null,
      preferences: UserPreferences.fromJson(json['preferences']),
      healthProfile: UserHealthProfile.fromJson(json['healthProfile']),
      hasCompletedBaselineSurvey: json['hasCompletedBaselineSurvey'] ?? false,
      lastSurveyDate: json['lastSurveyDate'] != null ? DateTime.parse(json['lastSurveyDate']) : null,
      dataSharingOptIn: json['dataSharingOptIn'] ?? false,
      notificationOptIn: json['notificationOptIn'] ?? true,
    );
  }

  String get fullName => '$firstName $lastName';
  int get age => DateTime.now().year - dateOfBirth.year;
}

enum Gender {
  male,
  female,
  other,
  preferNotToSay,
}

class UserPreferences {
  final int dailyStepGoal;
  final int waterGoal; // in glasses
  final int sleepGoal; // in hours
  final double weightGoal; // in kg
  final bool morningReminders;
  final bool eveningCheckIns;
  final bool hydrationReminders;
  final bool socialReminders;
  final String reminderTime; // HH:mm format
  final String eveningCheckInTime; // HH:mm format
  final bool weeklyProgressReports;
  final bool monthlyHealthReports;
  final String preferredLanguage;
  final bool highContrastMode;
  final double fontSizeScale;
  final bool voiceGuidance;

  UserPreferences({
    this.dailyStepGoal = 10000,
    this.waterGoal = 8,
    this.sleepGoal = 8,
    this.weightGoal = 70.0,
    this.morningReminders = true,
    this.eveningCheckIns = true,
    this.hydrationReminders = true,
    this.socialReminders = true,
    this.reminderTime = '08:00',
    this.eveningCheckInTime = '20:00',
    this.weeklyProgressReports = true,
    this.monthlyHealthReports = true,
    this.preferredLanguage = 'en',
    this.highContrastMode = false,
    this.fontSizeScale = 1.0,
    this.voiceGuidance = false,
  });

  UserPreferences copyWith({
    int? dailyStepGoal,
    int? waterGoal,
    int? sleepGoal,
    double? weightGoal,
    bool? morningReminders,
    bool? eveningCheckIns,
    bool? hydrationReminders,
    bool? socialReminders,
    String? reminderTime,
    String? eveningCheckInTime,
    bool? weeklyProgressReports,
    bool? monthlyHealthReports,
    String? preferredLanguage,
    bool? highContrastMode,
    double? fontSizeScale,
    bool? voiceGuidance,
  }) {
    return UserPreferences(
      dailyStepGoal: dailyStepGoal ?? this.dailyStepGoal,
      waterGoal: waterGoal ?? this.waterGoal,
      sleepGoal: sleepGoal ?? this.sleepGoal,
      weightGoal: weightGoal ?? this.weightGoal,
      morningReminders: morningReminders ?? this.morningReminders,
      eveningCheckIns: eveningCheckIns ?? this.eveningCheckIns,
      hydrationReminders: hydrationReminders ?? this.hydrationReminders,
      socialReminders: socialReminders ?? this.socialReminders,
      reminderTime: reminderTime ?? this.reminderTime,
      eveningCheckInTime: eveningCheckInTime ?? this.eveningCheckInTime,
      weeklyProgressReports: weeklyProgressReports ?? this.weeklyProgressReports,
      monthlyHealthReports: monthlyHealthReports ?? this.monthlyHealthReports,
      preferredLanguage: preferredLanguage ?? this.preferredLanguage,
      highContrastMode: highContrastMode ?? this.highContrastMode,
      fontSizeScale: fontSizeScale ?? this.fontSizeScale,
      voiceGuidance: voiceGuidance ?? this.voiceGuidance,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'dailyStepGoal': dailyStepGoal,
      'waterGoal': waterGoal,
      'sleepGoal': sleepGoal,
      'weightGoal': weightGoal,
      'morningReminders': morningReminders,
      'eveningCheckIns': eveningCheckIns,
      'hydrationReminders': hydrationReminders,
      'socialReminders': socialReminders,
      'reminderTime': reminderTime,
      'eveningCheckInTime': eveningCheckInTime,
      'weeklyProgressReports': weeklyProgressReports,
      'monthlyHealthReports': monthlyHealthReports,
      'preferredLanguage': preferredLanguage,
      'highContrastMode': highContrastMode,
      'fontSizeScale': fontSizeScale,
      'voiceGuidance': voiceGuidance,
    };
  }

  factory UserPreferences.fromJson(Map<String, dynamic> json) {
    return UserPreferences(
      dailyStepGoal: json['dailyStepGoal'] ?? 10000,
      waterGoal: json['waterGoal'] ?? 8,
      sleepGoal: json['sleepGoal'] ?? 8,
      weightGoal: (json['weightGoal'] ?? 70.0).toDouble(),
      morningReminders: json['morningReminders'] ?? true,
      eveningCheckIns: json['eveningCheckIns'] ?? true,
      hydrationReminders: json['hydrationReminders'] ?? true,
      socialReminders: json['socialReminders'] ?? true,
      reminderTime: json['reminderTime'] ?? '08:00',
      eveningCheckInTime: json['eveningCheckInTime'] ?? '20:00',
      weeklyProgressReports: json['weeklyProgressReports'] ?? true,
      monthlyHealthReports: json['monthlyHealthReports'] ?? true,
      preferredLanguage: json['preferredLanguage'] ?? 'en',
      highContrastMode: json['highContrastMode'] ?? false,
      fontSizeScale: (json['fontSizeScale'] ?? 1.0).toDouble(),
      voiceGuidance: json['voiceGuidance'] ?? false,
    );
  }
}

class UserHealthProfile {
  final double? height; // in cm
  final double? currentWeight; // in kg
  final double? targetWeight; // in kg
  final bool hasNHSHealthCheck;
  final DateTime? lastNHSHealthCheck;
  final DateTime? nextNHSHealthCheck;
  final List<String> medicalConditions;
  final List<String> medications;
  final List<String> allergies;
  final String? emergencyContact;
  final String? emergencyContactPhone;
  final bool hasGP;
  final String? gpName;
  final String? gpPhone;
  final String? gpAddress;

  UserHealthProfile({
    this.height,
    this.currentWeight,
    this.targetWeight,
    this.hasNHSHealthCheck = false,
    this.lastNHSHealthCheck,
    this.nextNHSHealthCheck,
    this.medicalConditions = const [],
    this.medications = const [],
    this.allergies = const [],
    this.emergencyContact,
    this.emergencyContactPhone,
    this.hasGP = false,
    this.gpName,
    this.gpPhone,
    this.gpAddress,
  });

  UserHealthProfile copyWith({
    double? height,
    double? currentWeight,
    double? targetWeight,
    bool? hasNHSHealthCheck,
    DateTime? lastNHSHealthCheck,
    DateTime? nextNHSHealthCheck,
    List<String>? medicalConditions,
    List<String>? medications,
    List<String>? allergies,
    String? emergencyContact,
    String? emergencyContactPhone,
    bool? hasGP,
    String? gpName,
    String? gpPhone,
    String? gpAddress,
  }) {
    return UserHealthProfile(
      height: height ?? this.height,
      currentWeight: currentWeight ?? this.currentWeight,
      targetWeight: targetWeight ?? this.targetWeight,
      hasNHSHealthCheck: hasNHSHealthCheck ?? this.hasNHSHealthCheck,
      lastNHSHealthCheck: lastNHSHealthCheck ?? this.lastNHSHealthCheck,
      nextNHSHealthCheck: nextNHSHealthCheck ?? this.nextNHSHealthCheck,
      medicalConditions: medicalConditions ?? this.medicalConditions,
      medications: medications ?? this.medications,
      allergies: allergies ?? this.allergies,
      emergencyContact: emergencyContact ?? this.emergencyContact,
      emergencyContactPhone: emergencyContactPhone ?? this.emergencyContactPhone,
      hasGP: hasGP ?? this.hasGP,
      gpName: gpName ?? this.gpName,
      gpPhone: gpPhone ?? this.gpPhone,
      gpAddress: gpAddress ?? this.gpAddress,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'height': height,
      'currentWeight': currentWeight,
      'targetWeight': targetWeight,
      'hasNHSHealthCheck': hasNHSHealthCheck,
      'lastNHSHealthCheck': lastNHSHealthCheck?.toIso8601String(),
      'nextNHSHealthCheck': nextNHSHealthCheck?.toIso8601String(),
      'medicalConditions': medicalConditions,
      'medications': medications,
      'allergies': allergies,
      'emergencyContact': emergencyContact,
      'emergencyContactPhone': emergencyContactPhone,
      'hasGP': hasGP,
      'gpName': gpName,
      'gpPhone': gpPhone,
      'gpAddress': gpAddress,
    };
  }

  factory UserHealthProfile.fromJson(Map<String, dynamic> json) {
    return UserHealthProfile(
      height: json['height']?.toDouble(),
      currentWeight: json['currentWeight']?.toDouble(),
      targetWeight: json['targetWeight']?.toDouble(),
      hasNHSHealthCheck: json['hasNHSHealthCheck'] ?? false,
      lastNHSHealthCheck: json['lastNHSHealthCheck'] != null 
          ? DateTime.parse(json['lastNHSHealthCheck']) 
          : null,
      nextNHSHealthCheck: json['nextNHSHealthCheck'] != null 
          ? DateTime.parse(json['nextNHSHealthCheck']) 
          : null,
      medicalConditions: List<String>.from(json['medicalConditions'] ?? []),
      medications: List<String>.from(json['medications'] ?? []),
      allergies: List<String>.from(json['allergies'] ?? []),
      emergencyContact: json['emergencyContact'],
      emergencyContactPhone: json['emergencyContactPhone'],
      hasGP: json['hasGP'] ?? false,
      gpName: json['gpName'],
      gpPhone: json['gpPhone'],
      gpAddress: json['gpAddress'],
    );
  }

  double? get bmi {
    if (height != null && currentWeight != null) {
      final heightInMeters = height! / 100;
      return currentWeight! / (heightInMeters * heightInMeters);
    }
    return null;
  }

  String? get bmiCategory {
    final bmiValue = bmi;
    if (bmiValue == null) return null;
    
    if (bmiValue < 18.5) return 'Underweight';
    if (bmiValue < 25) return 'Normal weight';
    if (bmiValue < 30) return 'Overweight';
    return 'Obese';
  }
}
