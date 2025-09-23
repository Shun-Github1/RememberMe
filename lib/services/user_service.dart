import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../models/user_model.dart';
import '../constants/app_constants.dart';

class UserService extends ChangeNotifier {
  UserModel? _currentUser;
  bool _isLoading = false;
  String? _error;

  UserModel? get currentUser => _currentUser;
  bool get isLoading => _isLoading;
  String? get error => _error;
  bool get isLoggedIn => _currentUser != null;

  // Initialize with mock data for development
  Future<void> initialize() async {
    await loadUserData();
    
    if (_currentUser == null) {
      await createMockUser();
    }
  }

  Future<void> loadUserData() async {
    _setLoading(true);
    try {
      final prefs = await SharedPreferences.getInstance();
      final userData = prefs.getString(AppConstants.userDataKey);
      
      if (userData != null) {
        final userJson = json.decode(userData);
        _currentUser = UserModel.fromJson(userJson);
      }
    } catch (e) {
      _setError('Failed to load user data: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> saveUserData() async {
    if (_currentUser == null) return;
    
    try {
      final prefs = await SharedPreferences.getInstance();
      final userJson = json.encode(_currentUser!.toJson());
      await prefs.setString(AppConstants.userDataKey, userJson);
    } catch (e) {
      _setError('Failed to save user data: $e');
    }
  }

  Future<void> createMockUser() async {
    _setLoading(true);
    try {
      _currentUser = UserModel(
        firstName: 'John',
        lastName: 'Smith',
        email: 'john.smith@example.com',
        dateOfBirth: DateTime(1955, 3, 15),
        gender: Gender.male,
        phoneNumber: '+44 7123 456789',
        address: '123 High Street, Cambridge, CB2 1TN',
        postcode: 'CB2 1TN',
        hasCompletedBaselineSurvey: false,
        dataSharingOptIn: false,
        notificationOptIn: true,
        preferences: UserPreferences(
          dailyStepGoal: 8000,
          waterGoal: 6,
          sleepGoal: 7,
          weightGoal: 75.0,
          morningReminders: true,
          eveningCheckIns: true,
          hydrationReminders: true,
          socialReminders: true,
          reminderTime: '08:00',
          eveningCheckInTime: '20:00',
          weeklyProgressReports: true,
          monthlyHealthReports: true,
          preferredLanguage: 'en',
          highContrastMode: false,
          fontSizeScale: 1.1,
          voiceGuidance: false,
        ),
        healthProfile: UserHealthProfile(
          height: 175.0,
          currentWeight: 78.5,
          targetWeight: 75.0,
          hasNHSHealthCheck: false,
          medicalConditions: ['Type 2 Diabetes', 'Hypertension'],
          medications: ['Metformin 500mg', 'Lisinopril 10mg'],
          allergies: ['Penicillin'],
          emergencyContact: 'Mary Smith',
          emergencyContactPhone: '+44 7123 456790',
          hasGP: true,
          gpName: 'Dr. Sarah Johnson',
          gpPhone: '+44 1223 123456',
          gpAddress: 'Cambridge Medical Centre, 45 Mill Road, Cambridge',
        ),
      );
      
      await saveUserData();
    } catch (e) {
      _setError('Failed to create user: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateUser(UserModel user) async {
    _setLoading(true);
    try {
      _currentUser = user;
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update user: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateUserPreferences(UserPreferences preferences) async {
    if (_currentUser == null) return;
    
    _setLoading(true);
    try {
      _currentUser = _currentUser!.copyWith(preferences: preferences);
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update preferences: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateHealthProfile(UserHealthProfile healthProfile) async {
    if (_currentUser == null) return;
    
    _setLoading(true);
    try {
      _currentUser = _currentUser!.copyWith(healthProfile: healthProfile);
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update health profile: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> markSurveyCompleted(DateTime completionDate) async {
    if (_currentUser == null) return;
    
    _setLoading(true);
    try {
      _currentUser = _currentUser!.copyWith(
        hasCompletedBaselineSurvey: true,
        lastSurveyDate: completionDate,
      );
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update survey status: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateDataSharingConsent(bool consent) async {
    if (_currentUser == null) return;
    
    _setLoading(true);
    try {
      _currentUser = _currentUser!.copyWith(dataSharingOptIn: consent);
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update data sharing consent: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateNotificationConsent(bool consent) async {
    if (_currentUser == null) return;
    
    _setLoading(true);
    try {
      _currentUser = _currentUser!.copyWith(notificationOptIn: consent);
      await saveUserData();
      notifyListeners();
    } catch (e) {
      _setError('Failed to update notification consent: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> updateLastLogin() async {
    if (_currentUser == null) return;
    
    try {
      _currentUser = _currentUser!.copyWith(lastLoginAt: DateTime.now());
      await saveUserData();
    } catch (e) {
      _setError('Failed to update last login: $e');
    }
  }

  Future<void> logout() async {
    _setLoading(true);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(AppConstants.userDataKey);
      _currentUser = null;
      notifyListeners();
    } catch (e) {
      _setError('Failed to logout: $e');
    } finally {
      _setLoading(false);
    }
  }

  Future<void> deleteAccount() async {
    _setLoading(true);
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(AppConstants.userDataKey);
      await prefs.remove(AppConstants.settingsKey);
      await prefs.remove(AppConstants.surveyDataKey);
      await prefs.remove(AppConstants.activityDataKey);
      await prefs.remove(AppConstants.notificationSettingsKey);
      _currentUser = null;
      notifyListeners();
    } catch (e) {
      _setError('Failed to delete account: $e');
    } finally {
      _setLoading(false);
    }
  }

  // Helper methods
  bool isSurveyDue() {
    if (_currentUser == null) return true;
    
    if (!_currentUser!.hasCompletedBaselineSurvey) {
      return true; // Baseline survey not completed
    }
    
    if (_currentUser!.lastSurveyDate == null) {
      return true; // No survey date recorded
    }
    
    final daysSinceLastSurvey = DateTime.now()
        .difference(_currentUser!.lastSurveyDate!)
        .inDays;
    
    return daysSinceLastSurvey >= AppConstants.followUpSurveyInterval;
  }

  int daysUntilNextSurvey() {
    if (_currentUser == null || _currentUser!.lastSurveyDate == null) {
      return 0;
    }
    
    final daysSinceLastSurvey = DateTime.now()
        .difference(_currentUser!.lastSurveyDate!)
        .inDays;
    
    return (AppConstants.followUpSurveyInterval - daysSinceLastSurvey).clamp(0, 
        AppConstants.followUpSurveyInterval);
  }

  bool isNHSHealthCheckDue() {
    if (_currentUser?.healthProfile.hasNHSHealthCheck != true) {
      return true; // Never had one
    }
    
    if (_currentUser?.healthProfile.lastNHSHealthCheck == null) {
      return true; // No date recorded
    }
    
    final yearsSinceLastCheck = DateTime.now()
        .difference(_currentUser!.healthProfile.lastNHSHealthCheck!)
        .inDays / 365;
    
    return yearsSinceLastCheck >= 5; // NHS Health Check is due every 5 years
  }

  String getWelcomeMessage() {
    if (_currentUser == null) return 'Welcome to RememberMe';
    
    final hour = DateTime.now().hour;
    String greeting;
    
    if (hour < 12) {
      greeting = 'Good morning';
    } else if (hour < 17) {
      greeting = 'Good afternoon';
    } else {
      greeting = 'Good evening';
    }
    
    return '$greeting, ${_currentUser!.firstName}!';
  }

  String getProgressSummary() {
    if (_currentUser == null) return 'Complete your profile to see progress';
    
    final completed = [
      _currentUser!.healthProfile.height != null,
      _currentUser!.healthProfile.currentWeight != null,
      _currentUser!.healthProfile.hasGP,
      _currentUser!.hasCompletedBaselineSurvey,
    ].where((item) => item).length;
    
    final total = 4;
    final percentage = (completed / total * 100).round();
    
    return '$completed of $total profile sections completed ($percentage%)';
  }

  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void _setError(String? error) {
    _error = error;
    notifyListeners();
  }

  void clearError() {
    _error = null;
    notifyListeners();
  }
}


