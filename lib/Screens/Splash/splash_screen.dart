import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:voting/Screens/Onboarding/first_screen.dart';
import 'package:voting/Shared/Colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/Mask group (1).png',
              height: MediaQuery.of(context).size.height * .8,
              width: MediaQuery.of(context).size.width * .2),
          Image.asset('assets/images/Mask group.png',
              height: MediaQuery.of(context).size.height * .5,
              width: MediaQuery.of(context).size.width * .5),
        ],
      ),
      backgroundColor: AppColors.mainColor,
      nextScreen: const OnboardingScreen1(),
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      pageTransitionType: PageTransitionType.fade,
    );
  }
}
