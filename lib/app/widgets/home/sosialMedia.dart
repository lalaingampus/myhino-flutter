
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SosialMediaSection extends StatelessWidget {
  SosialMediaSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 125,

            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ikuti Sosial Media Kami",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 70,

                  padding: EdgeInsets.fromLTRB(75,0,0,0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Container(
                        width: 50.0,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/icon-soc-fb.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 50.0,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/icon-soc-tw.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 50.0,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/icon-soc-yt.png'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        width: 50.0,

                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: ExactAssetImage(
                                'assets/mobile/images/icon-soc-ig.png'),
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