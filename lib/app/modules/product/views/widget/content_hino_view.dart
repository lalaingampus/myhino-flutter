import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ContentHinoView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 430,
            width: 411,
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {

                          Get.to("HinoProfileView");

                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            child: Image.asset(
                              "assets/mobile/images/pc-profia.png",
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HinoBusPage()));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            child: Image.asset(
                              "assets/mobile/images/pc-bus.png",
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => HinoRangerPage()));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            child: Image.asset(
                              "assets/mobile/images/pc-ranger.png",
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => HinoDutroPage()));
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Container(
                            child: Image.asset(
                              "assets/mobile/images/pc-dutro.png",
                              scale: 1.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
