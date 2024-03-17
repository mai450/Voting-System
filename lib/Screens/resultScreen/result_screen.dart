import 'package:flutter/material.dart';

import 'package:voting/Screens/resultScreen/resultwidget/result_candidate_widget.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 80,
        title: const Padding(
          padding: EdgeInsets.only(top: 15),
          child: Text(
            "Results",
            style: TextStyle(
              fontSize: 28,
              color: Color(0xFF008753),
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: Container(
        color: const Color(0xFFF3FAF7),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Votes",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 86, 85, 85)),
                  ),
                  Text(
                    'Voting ends in 6 hours',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 86, 85, 85)),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "44,868,556",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              ),
              const SizedBox(height: 18),
              Expanded(
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return index == 0
                        ? CustomResultCndidate(
                            color: true,
                            standing: index + 1,
                          )
                        : CustomResultCndidate(
                            color: false,
                            standing: index + 1,
                          );
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 18),
                  itemCount: 9,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
