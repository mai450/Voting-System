import 'package:flutter/material.dart';

class OnboardingScreen4 extends StatelessWidget {
  const OnboardingScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [Color(0xFFE3FDF3), Color(0xFFE7F9EE)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
      ),
    );
  }
}
