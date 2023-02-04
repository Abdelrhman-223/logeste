import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:logeste/core/utils/colors.dart';
import 'package:logeste/core/utils/strings.dart';
import 'package:logeste/splash_screens/presentation/pages/introduction_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const IntroductionPage(),
      splash: Text(
        AppStrings.appTitle,
        style: TextStyle(
          color: AppColors.splashScreenTextColor,
          fontSize: (MediaQuery.of(context).size.height) / 20,
        ),
      ),
      backgroundColor: AppColors.splashScreenBackgroundColor,
    );
  }
}
