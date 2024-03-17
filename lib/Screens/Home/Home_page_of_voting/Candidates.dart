import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:voting/Screens/Home/Home_page_of_voting/Custom_Candidate/Shared_Candidates.dart';
import 'package:voting/Shared/Colors.dart';
import 'package:voting/Shared/Fonts.dart';

class Candidates extends StatefulWidget {
  const Candidates({super.key});

  @override
  State<Candidates> createState() => _CandidatesState();
}

class _CandidatesState extends State<Candidates> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4");
    //_controller = VideoPlayerController.asset("videos/sample_video.mp4");
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.mainColor,
              size: 20,
            )),
        title: Text(
          'Mohamed Ahmed',
          style: AppFonts.boldText(fontSize: 16, color: AppColors.mainColor),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 20 / 375,
              vertical: MediaQuery.of(context).size.height * 20 / 812),
          child: Column(
            children: [
              Stack(children: [
                FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return Center(
                        child: AspectRatio(
                          aspectRatio: _controller.value.aspectRatio,
                          child: VideoPlayer(_controller),
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.40,
                  top: MediaQuery.of(context).size.height * 0.09,
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(50)),
                    child: FloatingActionButton(
                      backgroundColor: Color.fromARGB(0, 255, 255, 255),
                      elevation: 0,
                      onPressed: () {
                        // setState(() {
                        //   if (_controller.value.isPlaying) {
                        //     _controller.pause();
                        //   } else {
                        //     _controller.play();
                        //   }
                        // });
                      },
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                )
              ]),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 335 / 375,
                height: MediaQuery.of(context).size.height * 248 / 812,
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'personal information',
                        style: AppFonts.boldText(
                            fontSize: 12, color: AppColors.mainColor),
                      ),
                      const SizedBox(
                        height: 23,
                      ),
                      const personal_Info(
                          title: 'NAME :', desc: 'Mohamed Ahmed', width: 42),
                      const SizedBox(
                        height: 16,
                      ),
                      const personal_Info(
                          title: 'AGE :', desc: '50', width: 53),
                      const SizedBox(
                        height: 16,
                      ),
                      const personal_Info(
                        title: 'EDUCATION :',
                        desc: 'MCS',
                        width: 16,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const personal_Info(
                        title: 'JOB :',
                        desc: 'Engineer',
                        width: 55,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const personal_Info(
                        title: 'LOCATION :',
                        desc: 'Egypt',
                        width: 24,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Bio_Goals(
                  title: 'Bio',
                  desc:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolore possimus dicta, ad recusandae sint consectetur perferendis dolorem! Iure maxime ullam quis, molestiae corporis provident error eius! Excepturi explicabo nostrum recusandae dolor sit .'),
              const SizedBox(
                height: 16,
              ),
              const Bio_Goals(
                  title: 'Goals',
                  desc:
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit , Lorem ipsum dolor sit amet consectetur adipisicing elit ,Lorem ipsum dolor sit amet consectetur adipisicing elit')
            ],
          ),
        ),
      ),
    );
  }
}
