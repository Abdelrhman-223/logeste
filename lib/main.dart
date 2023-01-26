import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/splash_screens/presentation/pages/splash_screen.dart';

import 'home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale(AppStrings.appLang),
      ],
      theme: ThemeData(
        fontFamily: "Cairo",
      ),
      home: const SplashScreen(),
    );
  }
}
