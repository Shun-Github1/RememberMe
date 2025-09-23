import 'package:flutter/material.dart';

import '../../constants/app_constants.dart';
import '../../l10n/app_localizations.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.backgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.profile),
        backgroundColor: AppConstants.primaryTeal,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.profileEditingFeatureComingSoon),
      ),
    );
  }
}


