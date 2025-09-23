import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_constants.dart';

class AppTheme {
  // Enhanced text theme with better accessibility
  static TextTheme _buildAccessibleTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1.2),
      displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, height: 1.2),
      displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 1.2),
      headlineLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, height: 1.3),
      headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, height: 1.3),
      headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, height: 1.3),
      titleLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, height: 1.4),
      titleMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, height: 1.4),
      titleSmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w600, height: 1.4),
      bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, height: 1.5),
      bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 1.5),
      bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, height: 1.5),
      labelLarge: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, height: 1.4),
      labelMedium: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, height: 1.4),
      labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w500, height: 1.4),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'Inter',
      
      // NHS Color Scheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppConstants.nhsBlue,
        brightness: Brightness.light,
        primary: AppConstants.nhsBlue,
        secondary: AppConstants.nhsBrightBlue,
        surface: AppConstants.surfaceColor,
        background: AppConstants.backgroundColor,
        error: AppConstants.errorColor,
      ),
      
      // Enhanced Text Theme for Accessibility
      textTheme: _buildAccessibleTextTheme(),
      
      // NHS App Bar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: AppConstants.nhsBlue,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: AppConstants.fontSizeXL,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      
      // Card Theme
      cardTheme: CardThemeData(
        color: AppConstants.cardColor,
        elevation: 2,
        shadowColor: Colors.black.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
        ),
      ),
      
      // NHS Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppConstants.nhsBlue,
          foregroundColor: Colors.white,
          elevation: 2,
          shadowColor: AppConstants.nhsBlue.withValues(alpha: 0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radiusM),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.spacingL,
            vertical: AppConstants.spacingM,
          ),
          textStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: AppConstants.fontSizeM,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // NHS Outlined Button Theme
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppConstants.nhsBlue,
          side: const BorderSide(color: AppConstants.nhsBlue, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.radiusM),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: AppConstants.spacingL,
            vertical: AppConstants.spacingM,
          ),
          textStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: AppConstants.fontSizeM,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppConstants.primaryTeal,
          textStyle: const TextStyle(
            fontFamily: 'Inter',
            fontSize: AppConstants.fontSizeM,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppConstants.surfaceColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppConstants.borderColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppConstants.borderColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppConstants.primaryTeal, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppConstants.radiusM),
          borderSide: const BorderSide(color: AppConstants.errorColor),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppConstants.spacingM,
          vertical: AppConstants.spacingM,
        ),
        labelStyle: const TextStyle(
          fontFamily: 'Inter',
          color: AppConstants.textSecondary,
          fontSize: AppConstants.fontSizeM,
        ),
        hintStyle: const TextStyle(
          fontFamily: 'Inter',
          color: AppConstants.textMuted,
          fontSize: AppConstants.fontSizeM,
        ),
      ),
      
      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppConstants.surfaceColor,
        selectedItemColor: AppConstants.primaryTeal,
        unselectedItemColor: AppConstants.textMuted,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        selectedLabelStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: AppConstants.fontSizeS,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: AppConstants.fontSizeS,
          fontWeight: FontWeight.w400,
        ),
      ),
      
      // Floating Action Button Theme
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppConstants.primaryTeal,
        foregroundColor: Colors.white,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(AppConstants.radiusM)),
        ),
      ),
      
      // Icon Theme
      iconTheme: const IconThemeData(
        color: AppConstants.textSecondary,
        size: 24,
      ),
      
      // Divider Theme
      dividerTheme: const DividerThemeData(
        color: AppConstants.borderColor,
        thickness: 1,
        space: 1,
      ),
      
      // List Tile Theme
      listTileTheme: const ListTileThemeData(
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppConstants.spacingM,
          vertical: AppConstants.spacingS,
        ),
        titleTextStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: AppConstants.fontSizeM,
          fontWeight: FontWeight.w500,
          color: AppConstants.textPrimary,
        ),
        subtitleTextStyle: TextStyle(
          fontFamily: 'Inter',
          fontSize: AppConstants.fontSizeS,
          fontWeight: FontWeight.w400,
          color: AppConstants.textSecondary,
        ),
      ),
    );
  }
  
  // Dark theme for future implementation
  static ThemeData get darkTheme {
    return lightTheme; // For now, return light theme
  }
}
