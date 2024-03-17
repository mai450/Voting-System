import 'package:flutter/material.dart';
import 'package:voting/Screens/Home/Home_page_of_voting/Candidates.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';

class candidate_list extends StatefulWidget {
  const candidate_list({super.key});

  @override
  State<candidate_list> createState() => _candidate_listState();
}

class _candidate_listState extends State<candidate_list> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: const Image(
              image: AssetImage(
            'assets/images/unsplash_pAtA8xe_iVM.png',
          )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mohamed Ahmed Ali',
                  style: AppFonts.regularText(fontSize: 16),
                ),
                Text(
                  'Egyptian lawyer and founder of lorem ipsum  tian lawyer and founder of lorem ipsumtian lawyer and founder of lorem ipsum ',
                  maxLines: 2,
                  style: AppFonts.regularText(
                      height: 1.5,
                      fontSize: 12,
                      color: AppColors.secondaryTextColor),
                ),
                SizedBox(
                  height: 30,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => Candidates(),
                            ),
                          );
                        },
                        child: Text(
                          'Read more',
                          style: AppFonts.boldText(
                              fontSize: 12,
                              color: AppColors.secondaryTextColor),
                        )),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
