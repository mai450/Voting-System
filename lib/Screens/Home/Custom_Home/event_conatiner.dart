import 'package:flutter/material.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';

class event_container extends StatefulWidget {
  const event_container({super.key});

  @override
  State<event_container> createState() => _event_containerState();
}

class _event_containerState extends State<event_container> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image(
                image: const AssetImage(
                  'assets/images/Ellipse 36.png',
                ),
                width: MediaQuery.of(context).size.width * 50 / 375,
                height: MediaQuery.of(context).size.height * 50 / 812),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'NOMINATING FOR ELECTIONS',
                  style: AppFonts.semiBoldText(fontSize: 12),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Nationwide',
                  style: AppFonts.regularText(
                      fontSize: 12, color: AppColors.secondaryTextColor),
                )
              ],
            )
          ],
        ),
        const Spacer(),
/////////////////////////////////////////  Second Row inside Event container ///////////////////////////////////////////////
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.access_time,
                      color: AppColors.secondaryTextColor,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'voting ends in 8 hours',
                      style: AppFonts.regularText(
                          fontSize: 12, color: AppColors.secondaryTextColor),
                    )
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.assignment_turned_in_outlined,
                      color: AppColors.secondaryTextColor,
                      size: 16,
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      '36,555,444 votes',
                      style: AppFonts.regularText(
                          fontSize: 12, color: AppColors.secondaryTextColor),
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: AppColors.mainColor),
                  ),
                ),
                fixedSize: MaterialStateProperty.all<Size>(
                  Size(MediaQuery.of(context).size.width * 102 / 375,
                      MediaQuery.of(context).size.height * 32 / 812),
                ),
              ),
              child: Text(
                'Apply',
                style: AppFonts.regularText(
                    fontSize: 12, color: AppColors.mainColor),
              ),
            )
          ],
        ),
      ],
    );
  }
}
