import 'package:flutter/material.dart';

import 'package:get/get.dart';

class ProfileHeaderView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 215,
            width: 411,
            color: Colors.black,
            child: Column(
              children: [
                SizedBox(height: 45),
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/mobile/images/avatar.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(500),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 15,
                          bottom: 0,
                          right: 0,
                          top: 5), //apply padding to some sides only
                      child: Text(
                        'Muhamad Hafizh Widodo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
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
