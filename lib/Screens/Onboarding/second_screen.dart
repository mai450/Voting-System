import 'package:flutter/material.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFCAD4C3), Color(0xFFFFEBD8)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.4,
                  0.6,
                ])),
      ),
    );
  }
}
