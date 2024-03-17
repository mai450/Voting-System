import 'package:flutter/material.dart';
import 'package:voting/Screens/thankesVotingScreen/thanks_voting_screen.dart';

import 'package:voting/Screens/voteingScreen/voteingwidget/candidate_widget.dart';
import 'package:voting/Shared/shareWidget/button.dart';

import 'confirmVotingWidget/coustom_password.dart';

class ConfirmVoteScreen extends StatelessWidget {
  ConfirmVoteScreen({super.key});
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 15, left: 10),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_sharp,
              size: 18,
              color: Color(0xFF008753),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: ListView(
          children: [
            const ShowCandidate(),
            const SizedBox(
              height: 80,
            ),
            Container(
              child: Column(
                children: [
                  const Text(
                    "Enter Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Please input your Password to confirm your vote"),
                  const SizedBox(
                    height: 18,
                  ),
                  Form(key: formkey, child: CustomPassowrdText()),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                onPressed: () {
                  // Navigate to the second screen
                  if (formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ThankesToVoteScreen()),
                    );
                  }
                },
                word: "Confirm Vote",
                color: const Color(0xFF008753),
                textcolor: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: ButtonWidget(
                onPressed: () {
                  Navigator.pop(context);
                },
                word: "cancel",
                color: Colors.white,
                textcolor: const Color(0xFF008753),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
