import 'package:flutter/material.dart';

import 'package:get/get.dart';

class InformationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 130,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Informasi Khusus",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  height: 70,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/icon-euro-4.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image:
                                ExactAssetImage('assets/mobile/images/HTC.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 160.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/info-express.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
