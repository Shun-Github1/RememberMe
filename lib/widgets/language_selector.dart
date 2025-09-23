import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../l10n/app_localizations.dart';
import '../constants/app_constants.dart';
import '../services/locale_service.dart';

class LanguageSelector extends StatefulWidget {
  const LanguageSelector({super.key});

  @override
  State<LanguageSelector> createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleService>(
      builder: (context, localeService, child) {
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.spacingM),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.selectLanguage,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: AppConstants.spacingM),
                ...LocaleService.supportedLocales.map((locale) {
                  final isSelected = localeService.currentLocale.languageCode == locale.languageCode;
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: isSelected 
                          ? AppConstants.primaryTeal 
                          : AppConstants.borderColor,
                      child: Text(
                        locale.languageCode.toUpperCase(),
                        style: TextStyle(
                          color: isSelected ? Colors.white : AppConstants.textSecondary,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    title: Text(
                      localeService.getLanguageName(locale),
                      style: TextStyle(
                        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                        color: isSelected ? AppConstants.primaryTeal : AppConstants.textPrimary,
                      ),
                    ),
                    subtitle: Text(
                      localeService.getLanguageDescription(locale),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: AppConstants.textSecondary,
                      ),
                    ),
                    trailing: isSelected 
                        ? Icon(
                            Icons.check_circle,
                            color: AppConstants.primaryTeal,
                          )
                        : null,
                    onTap: () => _changeLanguage(locale, localeService),
                  );
                }).toList(),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _changeLanguage(Locale locale, LocaleService localeService) async {
    await localeService.changeLocale(locale);

    // Show confirmation
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalizations.of(context)!.languageChanged),
          backgroundColor: AppConstants.successColor,
        ),
      );
    }
  }
}
