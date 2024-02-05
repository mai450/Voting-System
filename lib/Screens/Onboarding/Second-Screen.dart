// import 'package:flutter/material.dart';
// import 'package:voting/Shared/Colors.dart';
// import 'package:voting/Shared/Fonts.dart';
// import 'package:voting/Shared/Onboarding_Page.dart';

// class OnboardingScreen22 extends StatefulWidget {
//   const OnboardingScreen22({super.key});

//   @override
//   State<OnboardingScreen22> createState() => _OnboardingScreen22State();
// }

// class _OnboardingScreen22State extends State<OnboardingScreen22> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               colors: [Color(0xFFCAD4C3), Color(0xFFFFEBD8)],
//               begin: Alignment.topCenter,
//               end: Alignment.bottomCenter,
//               stops: [
//                 0.4,
//                 0.6,
//               ])),
//       child: Column(
//         children: [
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.15,
//           ),
//           onboarding_page(context,
//               img: 'assets/images/Group 632.png',
//               tittle: 'Are you ready to vote?',
//               desc:
//                   'Welcome to ballotchain, the app that makes voting secure & transparent.Take part in elections,wherever you are.'),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.087,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 width: MediaQuery.of(context).size.height * 0.02,
//                 child: Container(
//                   width: 10,
//                   height: 10,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle, color: AppColors.mainColor),
//                 ),
//               ),
//               for (int i = 0; i < 3; i++)
//                 SizedBox(
//                   width: MediaQuery.of(context).size.height * 0.02,
//                   child: Container(
//                     width: 10,
//                     height: 10,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.circle, color: Colors.white),
//                   ),
//                 ),
//             ],
//           ),
//           // SmoothPageIndicator(
//           //   controller: _controller,
//           //   count: 4,
//           //   effect: SwapEffect(
//           //     activeDotColor: AppColors.mainColor,
//           //     dotColor: Colors.white,
//           //     dotHeight: 10,
//           //     dotWidth: 10,
//           //   ),
//           //   onDotClicked: (index) {
//           //     _controller.animateToPage(index,
//           //         duration: const Duration(microseconds: 500),
//           //         curve: Curves.easeIn);
//           //   },
//           // ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.024,
//           ),
//           ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute<void>(
//                     builder: (BuildContext context) => OnboardingScreen22(),
//                   ),
//                 );
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                 shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                     side: BorderSide(color: AppColors.borderColor),
//                   ),
//                 ),
//                 fixedSize: MaterialStateProperty.all<Size>(
//                   Size(MediaQuery.of(context).size.width * 0.64,
//                       MediaQuery.of(context).size.height * 0.053),
//                 ),
//               ),
//               child: Text(
//                 'Next',
//                 style: AppFonts.regularText(
//                     fontSize: 16, color: AppColors.mainColor),
//               )),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * 0.024,
//           ),
//           Text(
//             'Skip',
//             style: AppFonts.regularText(
//                 fontSize: 16, color: AppColors.secondaryTextColor),
//           ),
//         ],
//       ),
//     );
//   }
// }
