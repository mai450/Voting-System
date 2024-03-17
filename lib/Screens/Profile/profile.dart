import 'package:flutter/material.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';
import 'package:voting/Screens/Profile/Custom_Profile/Shard_Profile.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final String userName = "mohamed ahmed";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 20 / 375,
                  vertical: MediaQuery.of(context).size.height * 20 / 812),
              child: Row(
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.mainColor,
                      radius: 25,
                      child: Text(
                          userName.isNotEmpty ? userName[0].toUpperCase() : "",
                          style: AppFonts.boldText(
                              fontSize: 24, color: Colors.white))),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mohamed Ahmed',
                        style: AppFonts.semiBoldText(fontSize: 16),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Verified',
                        style: AppFonts.regularText(
                            fontSize: 12, color: AppColors.mainColor),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const profile_Info(
              title: 'personal detailes',
              icon1: Icons.perm_identity_rounded,
              text1: 'Mohamed Ahmed Ali Ismail Mohamed',
              icon2: Icons.assignment_ind_outlined,
              text2: '30203211703504',
              icon3: Icons.calendar_month_outlined,
              text3: '1/4/1964',
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 169 / 812,
              width: double.infinity,
              color: AppColors.eventButtonColor,
              child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Settings',
                          style: AppFonts.semiBoldText(
                              fontSize: 16, color: AppColors.mainColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const row2_in_profile(
                            icon: Icons.dark_mode_outlined, text: 'Dark Mode'),
                        const row2_in_profile(
                            icon: Icons.language, text: 'Arabic '),
                      ])),
            ),
            const SizedBox(
              height: 16,
            ),
            const profile_Info(
              title: 'More Details',
              icon1: Icons.help_outline_outlined,
              icon2: Icons.logout,
              icon3: Icons.share,
              text1: 'Get Help',
              text2: 'Log Out',
              text3: 'Share',
            ),
          ],
        ),
      ),
    );
  }
}
