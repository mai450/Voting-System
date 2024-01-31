import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:voting/Screens/Onboarding/fourth_screen.dart';
import 'package:voting/Screens/Onboarding/second_screen.dart';
import 'package:voting/Screens/Onboarding/thrird_screen.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';

class OnboardingScreen1 extends StatefulWidget {
  const OnboardingScreen1({super.key});

  @override
  State<OnboardingScreen1> createState() => _OnboardingScreen1State();
}

class _OnboardingScreen1State extends State<OnboardingScreen1> {
  final PageController _controller = PageController(initialPage: 0);

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFFC8E6E0), Color(0xFFBBCDCA)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.4,
                  0.7,
                ])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Are you ready to vote?',
                style: AppFonts.semiBoldText(fontSize: 24)),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.016,
            ),
            Text(
              'Welcome to ballotchain, the app that makes',
              style: AppFonts.regularText(
                  fontSize: 16, color: AppColors.secondaryTextColor),
            ),
            Text(
              'voting secure & transparent.Take part in',
              style: AppFonts.regularText(
                  fontSize: 16, color: AppColors.secondaryTextColor),
            ),
            Text(
              'elections,wherever you are.',
              style: AppFonts.regularText(
                  fontSize: 16, color: AppColors.secondaryTextColor),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.087,
            ),
            const Image(
              image: AssetImage('assets/images/Group 632.png'),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.087,
            ),
            // PageView(
            //   controller: _controller,
            //   onPageChanged: (page) {
            //     currentPage = page;
            //   },
            //   children: const [
            //     OnboardingScreen1(),
            //     OnboardingScreen2(),
            //     OnboardingScreen3(),
            //     OnboardingScreen4(),
            //   ],
            // ),
            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: SwapEffect(
                activeDotColor: AppColors.mainColor,
                dotColor: Colors.white,
                dotHeight: 5,
                dotWidth: 5,
              ),
              onDotClicked: (index) {
                _controller.animateToPage(index,
                    duration: const Duration(microseconds: 500),
                    curve: Curves.easeIn);
              },
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.024,
            ),
            ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: AppColors.borderColor),
                    ),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    Size(MediaQuery.of(context).size.width * 0.64,
                        MediaQuery.of(context).size.height * 0.053),
                  ),
                ),
                child: Text(
                  'Next',
                  style: AppFonts.regularText(
                      fontSize: 16, color: AppColors.mainColor),
                )),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.024,
            ),
            Text(
              'Skip',
              style: AppFonts.regularText(
                  fontSize: 16, color: AppColors.secondaryTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
