import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants/app_constants.dart';
import 'constants/app_theme.dart';
import 'utils/app_router.dart';
import 'services/user_service.dart';
import 'services/notification_service.dart';
import 'services/activity_service.dart';
import 'services/survey_service.dart';
import 'services/locale_service.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize services
  await _initializeServices();
  
  // Set system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  
  runApp(const RememberMeApp());
}

Future<void> _initializeServices() async {
  // Initialize SharedPreferences
  await SharedPreferences.getInstance();
  
  // Initialize notification service
  await NotificationService.initialize();
  
  // Initialize other services
  ActivityService.initialize();
  SurveyService.initialize();
}

class RememberMeApp extends StatelessWidget {
  const RememberMeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserService()),
        ChangeNotifierProvider(create: (_) => NotificationService()),
        ChangeNotifierProvider(create: (_) => ActivityService()),
        ChangeNotifierProvider(create: (_) => SurveyService()),
        ChangeNotifierProvider(create: (_) => LocaleService()),
      ],
      child: const AppWrapper(),
    );
  }
}

class AppWrapper extends StatefulWidget {
  const AppWrapper({super.key});

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  @override
  void initState() {
    super.initState();
    // Initialize locale service
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LocaleService>().initialize();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleService>(
      builder: (context, localeService, child) {
        if (!localeService.isInitialized) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }

        return MaterialApp.router(
          title: AppConstants.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          routerConfig: AppRouter.router,
          locale: localeService.currentLocale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: LocaleService.supportedLocales,
          builder: (context, child) {
            return MediaQuery(
              // Enhanced accessibility support with proper text scaling
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(
                  MediaQuery.of(context).textScaler.scale(1.0).clamp(0.8, 2.0), // Allow up to 2.0x scaling
                ),
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
