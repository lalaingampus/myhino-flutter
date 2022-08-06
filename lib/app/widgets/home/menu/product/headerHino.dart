
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderHinoSection extends StatelessWidget {
  HeaderHinoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 60,
            width: 411,

            padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "HINO Series",
                            style: TextStyle(

                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),

                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}