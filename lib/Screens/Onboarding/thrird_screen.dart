import 'package:flutter/material.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFE0FFE3), Color(0xFF9EDEBE)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.2,
                  0.6,
                ])),
      ),
    );
  }
}
