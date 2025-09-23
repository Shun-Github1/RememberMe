import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleService extends ChangeNotifier {
  static const String _localeKey = 'selected_locale';
  
  Locale _currentLocale = const Locale('en', '');
  bool _isInitialized = false;

  Locale get currentLocale => _currentLocale;
  bool get isInitialized => _isInitialized;

  // Supported locales mapping
  static const Map<String, Locale> _supportedLocales = {
    'en': const Locale('en', ''),
    'pl': const Locale('pl', ''),
    'ro': const Locale('ro', ''),
    'pa': const Locale('pa', ''),
    'ur': const Locale('ur', ''),
    'zh': const Locale('zh', ''),
    'bn': const Locale('bn', ''),
  };

  static const List<Locale> supportedLocales = [
    Locale('en', ''),
    Locale('pl', ''),
    Locale('ro', ''),
    Locale('pa', ''),
    Locale('ur', ''),
    Locale('zh', ''),
    Locale('bn', ''),
  ];

  /// Initialize the locale service
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      final savedLocaleCode = prefs.getString(_localeKey);
      
      if (savedLocaleCode != null && _supportedLocales.containsKey(savedLocaleCode)) {
        // Use saved locale preference
        _currentLocale = _supportedLocales[savedLocaleCode]!;
      } else {
        // Detect system locale
        _currentLocale = _detectSystemLocale();
      }
      
      _isInitialized = true;
      notifyListeners();
    } catch (e) {
      // Fallback to English if there's an error
      _currentLocale = const Locale('en', '');
      _isInitialized = true;
      notifyListeners();
    }
  }

  /// Detect the best matching locale from system settings
  Locale _detectSystemLocale() {
    // Get the system locale
    final systemLocale = WidgetsBinding.instance.platformDispatcher.locale;
    
    // Try to find exact match
    if (_supportedLocales.containsKey(systemLocale.languageCode)) {
      return _supportedLocales[systemLocale.languageCode]!;
    }
    
    // Try to find language match (ignoring country code)
    for (final locale in _supportedLocales.values) {
      if (locale.languageCode == systemLocale.languageCode) {
        return locale;
      }
    }
    
    // Fallback to English
    return const Locale('en', '');
  }

  /// Change the app locale
  Future<void> changeLocale(Locale newLocale) async {
    if (_currentLocale == newLocale) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString(_localeKey, newLocale.languageCode);
      
      _currentLocale = newLocale;
      notifyListeners();
    } catch (e) {
      // Handle error silently or show a message
      debugPrint('Error changing locale: $e');
    }
  }

  /// Get locale by language code
  Locale? getLocaleByCode(String languageCode) {
    return _supportedLocales[languageCode];
  }

  /// Get language name in native script
  String getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'pl':
        return 'Polski';
      case 'ro':
        return 'Română';
      case 'pa':
        return 'ਪੰਜਾਬੀ';
      case 'ur':
        return 'اردو';
      case 'zh':
        return '中文';
      case 'bn':
        return 'বাংলা';
      default:
        return 'English';
    }
  }

  /// Get language description in English
  String getLanguageDescription(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'pl':
        return 'Polish';
      case 'ro':
        return 'Romanian';
      case 'pa':
        return 'Punjabi';
      case 'ur':
        return 'Urdu';
      case 'zh':
        return 'Chinese';
      case 'bn':
        return 'Bengali';
      default:
        return 'English';
    }
  }

  /// Check if a locale is supported
  bool isLocaleSupported(Locale locale) {
    return _supportedLocales.containsKey(locale.languageCode);
  }
}
