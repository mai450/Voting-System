import 'package:flutter/material.dart';

class ShowCandidate extends StatefulWidget {
  const ShowCandidate({super.key});

  @override
  State<ShowCandidate> createState() => _ShowCandidateState();
}

class _ShowCandidateState extends State<ShowCandidate> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      child: Container(
        height: 110,
        width: 360,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          border: Border.all(
            color:
                isPressed ? Color.fromRGBO(0, 135, 83, 1) : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Row(
            children: [
              Image.asset(
                "assets/images/Mask group candidate.png",
                width: 94,
                height: 94,
              ),
              const SizedBox(width: 8),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Mohamed Ahmed Ali",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Egyptian lawyer and founder of lorem ipsum lorem ipsum.",
                        style: TextStyle(
                            color: Color.fromARGB(252, 113, 113, 111),
                            fontSize: 12),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      /*
                      //!if take all size i will remove hight and width continer to take all size the text
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "hjfffffgjdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      */
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
