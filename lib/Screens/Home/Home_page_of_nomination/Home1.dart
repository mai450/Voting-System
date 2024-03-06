import 'package:flutter/material.dart';
import 'package:voting/Screens/Home/Home_page_of_nomination/Trending_news.dart';
import 'package:voting/Screens/Profile/profile.dart';
import 'package:voting/Screens/Result/Result.dart';
import 'package:voting/Screens/Vote/Vote_Screen.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
///////////////////////////////// Container of Trending News ////////////////////////////////////////////////////////
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 20 / 375,
                      vertical: MediaQuery.of(context).size.height * 20 / 812),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Hello Mohamed!',
                              style: AppFonts.semiBoldText(
                                  color: AppColors.mainColor, fontSize: 24)),
                          const Spacer(),
                          Icon(
                            Icons.notifications_outlined,
                            size: 24,
                            color: AppColors.secondaryTextColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 25 / 812,
                      ),
                      Row(
                        children: [
                          Text('Trending news',
                              style: AppFonts.regularText(
                                  color: AppColors.secondaryTextColor,
                                  fontSize: 18)),
                          Icon(
                            Icons.campaign_outlined,
                            color: AppColors.secondaryTextColor,
                          ),
                          // const Image(
                          //     image: AssetImage('assets/images/Group 720.png')),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 12 / 812,
                      ),
//////////////////////////////////////// Trending News List ///////////////////////////////////////////////////////////
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            for (int i = 0; i <= 4; i++)
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                      builder: (BuildContext context) =>
                                          const Trending_news(),
                                    ),
                                  );
                                },
                                child: Stack(children: [
                                  Container(
                                    margin: const EdgeInsets.only(
                                      right: 10,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        154 /
                                        812,
                                    width: MediaQuery.of(context).size.width *
                                        273 /
                                        375,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/Rectangle 204.png'),
                                            fit: BoxFit.cover),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          const Spacer(),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                250 /
                                                375,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                70 /
                                                812,
                                            child: Text(
                                              'Billionaire-backed Koch network endorses Nikki for president.',
                                              style: AppFonts.semiBoldText(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
//////////////////////////////////////////// Events & Candidates ///////////////////////////////////////////////////
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.backgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              MediaQuery.of(context).size.width * 20 / 375,
                          vertical:
                              MediaQuery.of(context).size.height * 21 / 812),
///////////////////////////////////////////////  Tabbar   /////////////////////////////////////////////////////////////////////////////
                      child: Container(
                          width: MediaQuery.of(context).size.width * 335 / 375,
                          height: MediaQuery.of(context).size.height * 55 / 812,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TabBar(
                                indicator: BoxDecoration(
                                    border: Border.all(
                                        color: AppColors.borderColor),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    color: AppColors.tabBarColor),
                                controller: _controller,
                                tabs: [
                                  Tab(
                                    child: Text(
                                      'Events',
                                      style:
                                          TextStyle(color: AppColors.mainColor),
                                    ),
                                  ),
                                  Tab(
                                    child: Text(
                                      'Candidates',
                                      style:
                                          TextStyle(color: AppColors.mainColor),
                                    ),
                                  ),
                                ]),
                          )),
                    ),
/////////////////////////////////////////////  List Of Events   //////////////////////////////////////////////////////////////////
                    Expanded(
                        child: TabBarView(
                      controller: _controller,
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          itemBuilder: (context, index) {
////////////////////////////////////////// Padding for Events Container ///////////////////////////////////////////////
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: MediaQuery.of(context).size.width *
                                      20 /
                                      375,
                                  right: MediaQuery.of(context).size.width *
                                      20 /
                                      375,
                                  bottom: MediaQuery.of(context).size.height *
                                      10 /
                                      812),
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    335 /
                                    375,
                                height: MediaQuery.of(context).size.height *
                                    145 /
                                    812,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
/////////////////////////////////////////////  Column padding inside Event container /////////////////////////////////////////////////
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Column(
                                    children: [
/////////////////////////////////////////  First Row inside Event container ///////////////////////////////////////////////
                                      Row(
                                        children: [
                                          Image(
                                              image: const AssetImage(
                                                'assets/images/Ellipse 36.png',
                                              ),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  375,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  50 /
                                                  812),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'NOMINATING FOR ELECTIONS',
                                                style: AppFonts.semiBoldText(
                                                    fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                'Nationwide',
                                                style: AppFonts.regularText(
                                                    fontSize: 12,
                                                    color: AppColors
                                                        .secondaryTextColor),
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    color: AppColors
                                                        .secondaryTextColor,
                                                    size: 16,
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    'voting ends in 8 hours',
                                                    style: AppFonts.regularText(
                                                        fontSize: 12,
                                                        color: AppColors
                                                            .secondaryTextColor),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .assignment_turned_in_outlined,
                                                    color: AppColors
                                                        .secondaryTextColor,
                                                    size: 16,
                                                  ),
                                                  const SizedBox(
                                                    width: 4,
                                                  ),
                                                  Text(
                                                    '36,555,444 votes',
                                                    style: AppFonts.regularText(
                                                        fontSize: 12,
                                                        color: AppColors
                                                            .secondaryTextColor),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          const Spacer(),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(Colors.white),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  side: BorderSide(
                                                      color:
                                                          AppColors.mainColor),
                                                ),
                                              ),
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(
                                                Size(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        102 /
                                                        375,
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        32 /
                                                        812),
                                              ),
                                            ),
                                            child: Text(
                                              'Apply',
                                              style: AppFonts.regularText(
                                                  fontSize: 12,
                                                  color: AppColors.mainColor),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
///////////////////////////////////////////////////////// Page of Candidats in Tabbar /////////////////////////////////////////
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No Ongoing Eletions!',
                              style: AppFonts.semiBoldText(fontSize: 16),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 200 / 375,
                              height:
                                  MediaQuery.of(context).size.height * 40 / 812,
                              child: Center(
                                child: Text(
                                  'The elections are starting in 30 days.You will be notified when the election starts.',
                                  textAlign: TextAlign.center,
                                  style: AppFonts.regularText(
                                    fontSize: 12,
                                    color: AppColors.secondaryTextColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
