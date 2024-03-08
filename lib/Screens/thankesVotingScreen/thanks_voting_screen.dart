import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:voting/Screens/resultScreen/result_screen.dart';

import 'package:voting/Shared/shareWidget/button.dart';

class ThankesToVoteScreen extends StatelessWidget {
  const ThankesToVoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            SvgPicture.asset(
              'assets/images/Group 575.svg',
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Thanks for voting!",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Your vote has been registered on the chain.",
              style: TextStyle(
                  color: Color.fromRGBO(119, 114, 114, 1),
                  fontWeight: FontWeight.w400),
            ),
            const Text(
              " Now wait to see the final results",
              style: TextStyle(
                  color: Color.fromRGBO(119, 114, 114, 1),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 200,
            ),
            ButtonWidget(
              onPressed: () {
                //todo
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => ResultScreen()),
                );
              },
              word: "View Live Results",
              color: const Color(0xFF008753),
              textcolor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
