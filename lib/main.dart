import 'package:flutter/material.dart';
import 'package:voting/Screens/Home/Home_Screen.dart';
import 'package:voting/Screens/Onboarding/Onboarding.dart';
import 'package:voting/Screens/Onboarding/fourth_screen.dart';
import 'package:voting/Screens/Onboarding/second_screen.dart';
import 'package:voting/Screens/Onboarding/thrird_screen.dart';
import 'package:voting/Screens/Splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return MaterialApp();
=======
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
>>>>>>> 81e0f7445d22c1d7b65e5fca2b8d3c7088d7a051
  }
}
