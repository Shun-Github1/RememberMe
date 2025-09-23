import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

class AccessibilityUtils {
  // Large text scaling factor for better readability
  static const double largeTextScale = 1.2;
  
  // High contrast colors for better visibility
  static const Color highContrastPrimary = Color(0xFF0066CC);
  static const Color highContrastSecondary = Color(0xFF333333);
  static const Color highContrastBackground = Color(0xFFFFFFFF);
  
  // Minimum touch target size (44x44 logical pixels as per accessibility guidelines)
  static const double minTouchTargetSize = 44.0;
  
  // Enhanced button style for better accessibility
  static ButtonStyle getAccessibleButtonStyle(BuildContext context) {
    return ElevatedButton.styleFrom(
      minimumSize: const Size(minTouchTargetSize, minTouchTargetSize),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      textStyle: Theme.of(context).textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
  
  // Accessible card with proper semantics
  static Widget buildAccessibleCard({
    required BuildContext context,
    required Widget child,
    VoidCallback? onTap,
    String? semanticLabel,
    String? semanticHint,
  }) {
    return Semantics(
      label: semanticLabel,
      hint: semanticHint,
      button: onTap != null,
      child: Card(
        child: InkWell(
          onTap: onTap,
          child: child,
        ),
      ),
    );
  }
  
  // Accessible list tile with enhanced semantics
  static Widget buildAccessibleListTile({
    required BuildContext context,
    required String title,
    String? subtitle,
    Widget? leading,
    Widget? trailing,
    VoidCallback? onTap,
    String? semanticHint,
  }) {
    return Semantics(
      label: title,
      hint: semanticHint ?? subtitle,
      button: onTap != null,
      child: ListTile(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: subtitle != null ? Text(subtitle) : null,
        leading: leading,
        trailing: trailing,
        onTap: onTap,
        minVerticalPadding: 16,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    );
  }
  
  // Enhanced text with proper semantics
  static Widget buildAccessibleText({
    required BuildContext context,
    required String text,
    TextStyle? style,
    TextAlign? textAlign,
    String? semanticLabel,
    bool excludeSemantics = false,
  }) {
    return Semantics(
      label: semanticLabel,
      excludeSemantics: excludeSemantics,
      child: Text(
        text,
        style: style ?? Theme.of(context).textTheme.bodyLarge?.copyWith(
          height: 1.5, // Better line height for readability
        ),
        textAlign: textAlign,
      ),
    );
  }
  
  // Accessible icon with semantic label
  static Widget buildAccessibleIcon({
    required IconData icon,
    Color? color,
    double? size,
    String? semanticLabel,
  }) {
    return Semantics(
      label: semanticLabel,
      child: Icon(
        icon,
        color: color,
        size: size,
      ),
    );
  }
  
  // High contrast theme for users with visual impairments
  static ThemeData getHighContrastTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: highContrastPrimary,
      scaffoldBackgroundColor: highContrastBackground,
      cardColor: highContrastBackground,
      dividerColor: highContrastSecondary,
      textTheme: const TextTheme(
        headlineLarge: TextStyle(color: highContrastSecondary, fontSize: 32, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: highContrastSecondary, fontSize: 28, fontWeight: FontWeight.bold),
        headlineSmall: TextStyle(color: highContrastSecondary, fontSize: 24, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(color: highContrastSecondary, fontSize: 20, fontWeight: FontWeight.w600),
        titleMedium: TextStyle(color: highContrastSecondary, fontSize: 18, fontWeight: FontWeight.w600),
        titleSmall: TextStyle(color: highContrastSecondary, fontSize: 16, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(color: highContrastSecondary, fontSize: 16),
        bodyMedium: TextStyle(color: highContrastSecondary, fontSize: 14),
        bodySmall: TextStyle(color: highContrastSecondary, fontSize: 12),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: highContrastPrimary,
          foregroundColor: Colors.white,
          minimumSize: const Size(minTouchTargetSize, minTouchTargetSize),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
      cardTheme: const CardTheme(
        color: highContrastBackground,
        elevation: 4,
        shadowColor: highContrastSecondary,
      ),
    );
  }
  
  // Announce important messages to screen readers
  static void announceToScreenReader(BuildContext context, String message) {
    SemanticsService.announce(message, TextDirection.ltr);
  }
  
  // Show accessible snackbar with proper semantics
  static void showAccessibleSnackBar(
    BuildContext context, {
    required String message,
    Duration duration = const Duration(seconds: 3),
    Color? backgroundColor,
    Color? textColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Semantics(
          label: message,
          child: Text(
            message,
            style: TextStyle(
              color: textColor ?? Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        backgroundColor: backgroundColor,
        duration: duration,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
      ),
    );
  }
  
  // Accessible dialog with proper focus management
  static Future<T?> showAccessibleDialog<T>({
    required BuildContext context,
    required String title,
    required Widget content,
    List<Widget>? actions,
    String? semanticLabel,
  }) {
    return showDialog<T>(
      context: context,
      builder: (context) => Semantics(
        label: semanticLabel ?? title,
        child: AlertDialog(
          title: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: content,
          actions: actions,
        ),
      ),
    );
  }
  
  // Check if user has accessibility features enabled
  static bool isAccessibilityEnabled(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return mediaQuery.textScaleFactor > 1.1 || 
           mediaQuery.boldText || 
           mediaQuery.highContrast;
  }
  
  // Get appropriate text scale for accessibility
  static double getAccessibleTextScale(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final baseScale = mediaQuery.textScaleFactor;
    
    // Ensure minimum readable size
    if (baseScale < 1.0) {
      return 1.0;
    }
    
    // Cap maximum scale to prevent UI breaking
    if (baseScale > 2.0) {
      return 2.0;
    }
    
    return baseScale;
  }
  
  // Enhanced focus indicators for keyboard navigation
  static Widget buildFocusableWidget({
    required Widget child,
    required FocusNode focusNode,
    VoidCallback? onTap,
    String? semanticLabel,
  }) {
    return Focus(
      focusNode: focusNode,
      child: Semantics(
        label: semanticLabel,
        button: onTap != null,
        child: InkWell(
          onTap: onTap,
          focusColor: Colors.blue.withOpacity(0.2),
          hoverColor: Colors.blue.withOpacity(0.1),
          child: child,
        ),
      ),
    );
  }
}


