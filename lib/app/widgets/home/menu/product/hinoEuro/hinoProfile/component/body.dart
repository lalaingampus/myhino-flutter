import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'header.dart';
import 'content.dart';
import 'search.dart';



class BodyComponents extends StatelessWidget {
  BodyComponents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[100],
        height: 1000,
        child: Column(
          children: [
            HeaderSection(),
            SizedBox(height:10),
            SearchSection(),
            SizedBox(height:10),
            Container(
              height: 0.5,
              width: 395,
              color: Colors.grey,
            ),
            SizedBox(height:25),
            ContentSection(),

          ],
        ),
      ),
    );
  }




}


