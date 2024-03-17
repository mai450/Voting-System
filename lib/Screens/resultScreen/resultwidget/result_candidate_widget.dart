import 'package:flutter/material.dart';

class CustomResultCndidate extends StatelessWidget {
  const CustomResultCndidate(
      {super.key, required this.color, required this.standing});
  final bool color;
  final int standing;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 360,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color:
              color ? const Color.fromRGBO(0, 135, 83, 1) : Colors.transparent,
          width: 2,
        ),
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mohamed Ahmed Ali",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            children: [
                              Text(
                                "votes: ",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 95, 93, 93),
                                    fontSize: 16),
                              ),
                              Text(
                                "13,868,556",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 14),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 28,
                            height: 28,
                            child: Stack(
                              children: [
                                const Positioned(
                                  bottom: 10,
                                  left: 9,
                                  child: Text(
                                    "rd",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 135, 83, 1),
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Text(
                                  "${standing}",
                                  style: const TextStyle(
                                      color: Color.fromRGBO(0, 135, 83, 1),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
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
