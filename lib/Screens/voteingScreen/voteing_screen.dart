import 'package:flutter/material.dart';
import 'package:voting/Screens/confirmVotingScreen/confirm_voteing_screen.dart';

import 'package:voting/Screens/voteingScreen/voteingwidget/candidate_widget.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/shareWidget/button.dart';

class VoteingScreenn extends StatelessWidget {
  const VoteingScreenn({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            "Elections",
            style: TextStyle(
              fontSize: 28,
              color: AppColors.mainColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: AppColors.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Presidential Elections",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Select the candidate of your choice and tap to vote.",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 18),
                  Expanded(
                    child: ListView.separated(
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return const ShowCandidate();
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 18),
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Center(
              child: ButtonWidget(
                onPressed: () {
                  // Navigate to the second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ConfirmVoteScreen()),
                  );
                },
                color: const Color(0xFF008753),
                textcolor: Colors.white,
                word: "vote",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
