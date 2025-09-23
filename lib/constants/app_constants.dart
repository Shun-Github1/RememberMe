import 'package:flutter/material.dart';

class AppConstants {
  // App Information
  static const String appName = 'RememberMe';
  static const String appDescription = 'NHS Dementia Prevention Lifestyle Tracker';
  static const String appDeveloper = 'Lucy Cavendish College, University of Cambridge';
  static const String appVersion = '1.0.0';
  static const String nhsPartnership = 'Developed in partnership with NHS';
  static const String nhsWebsite = 'https://www.nhs.uk';
  static const String nhs111 = '111';
  
  // NHS Colors - Official NHS Brand Guidelines
  static const Color nhsBlue = Color(0xFF005EB8); // NHS Blue
  static const Color nhsDarkBlue = Color(0xFF003087); // NHS Dark Blue
  static const Color nhsBrightBlue = Color(0xFF0072CE); // NHS Bright Blue
  static const Color nhsLightBlue = Color(0xFF41B6E6); // NHS Light Blue
  static const Color nhsAquaBlue = Color(0xFF00A9CE); // NHS Aqua Blue
  
  // Legacy colors for compatibility
  static const Color primaryTeal = Color(0xFF005EB8); // Now NHS Blue
  static const Color primaryBlue = Color(0xFF0072CE); // Now NHS Bright Blue
  static const Color lightTeal = Color(0xFF41B6E6); // Now NHS Light Blue
  static const Color lightBlue = Color(0xFF00A9CE); // Now NHS Aqua Blue
  static const Color darkTeal = Color(0xFF003087); // Now NHS Dark Blue
  static const Color darkBlue = Color(0xFF003087); // Now NHS Dark Blue
  
  // Neutral Colors
  static const Color backgroundColor = Color(0xFFF8FAFC); // slate-50
  static const Color surfaceColor = Color(0xFFFFFFFF); // white
  static const Color cardColor = Color(0xFFF1F5F9); // slate-100
  static const Color textPrimary = Color(0xFF1E293B); // slate-800
  static const Color textSecondary = Color(0xFF64748B); // slate-500
  static const Color textMuted = Color(0xFF94A3B8); // slate-400
  static const Color borderColor = Color(0xFFE2E8F0); // slate-200
  
  // Status Colors
  static const Color successColor = Color(0xFF10B981); // emerald-500
  static const Color warningColor = Color(0xFFF59E0B); // amber-500
  static const Color errorColor = Color(0xFFEF4444); // red-500
  static const Color infoColor = Color(0xFF06B6D4); // cyan-500
  
  // Domain Colors
  static const Color healthColor = Color(0xFFEF4444); // red-500
  static const Color socialColor = Color(0xFF8B5CF6); // violet-500
  static const Color fitnessColor = Color(0xFF10B981); // emerald-500
  static const Color cognitiveColor = Color(0xFFF59E0B); // amber-500
  static const Color nutritionColor = Color(0xFF06B6D4); // cyan-500
  
  // Spacing
  static const double spacingXS = 4.0;
  static const double spacingS = 8.0;
  static const double spacingM = 16.0;
  static const double spacingL = 24.0;
  static const double spacingXL = 32.0;
  static const double spacingXXL = 48.0;
  
  // Border Radius
  static const double radiusS = 8.0;
  static const double radiusM = 12.0;
  static const double radiusL = 16.0;
  static const double radiusXL = 24.0;
  
  // Font Sizes
  static const double fontSizeXS = 12.0;
  static const double fontSizeS = 14.0;
  static const double fontSizeM = 16.0;
  static const double fontSizeL = 18.0;
  static const double fontSizeXL = 20.0;
  static const double fontSizeXXL = 24.0;
  static const double fontSizeXXXL = 32.0;
  
  // Animation Durations
  static const Duration animationFast = Duration(milliseconds: 200);
  static const Duration animationMedium = Duration(milliseconds: 300);
  static const Duration animationSlow = Duration(milliseconds: 500);
  
  // API Endpoints (Mock)
  static const String baseUrl = 'https://api.rememberme.cambridge.ac.uk';
  static const String apiVersion = 'v1';
  
  // Local Storage Keys
  static const String userDataKey = 'user_data';
  static const String settingsKey = 'app_settings';
  static const String surveyDataKey = 'survey_data';
  static const String activityDataKey = 'activity_data';
  static const String notificationSettingsKey = 'notification_settings';
  
  // Default Values
  static const int defaultStepGoal = 10000;
  static const int defaultWaterGoal = 8; // glasses
  static const int defaultSleepGoal = 8; // hours
  static const double defaultWeightGoal = 70.0; // kg
  
  // Survey Intervals
  static const int baselineSurveyInterval = 0; // days
  static const int followUpSurveyInterval = 180; // days (6 months)
  static const int monthlyCheckInInterval = 30; // days
  
  // Notification Times
  static const String morningReminderTime = '08:00';
  static const String eveningCheckInTime = '20:00';
  static const String hydrationReminderInterval = '2'; // hours
}
