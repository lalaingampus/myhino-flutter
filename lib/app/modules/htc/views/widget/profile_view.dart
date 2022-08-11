import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[200],
        height: 750,
        width: 400,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Hino Total Support Customer Center',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 230,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/mobile/images/header-contact.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Hino Total Support Customer Center (HSTCC) sebagai pust pelatihan pengemudi untuk membantu kelancaran transportasi yang aman dan ekonomis melalui pengemudi yang handal dan tertib berlalu lintas. Fasilitas ini dapat digunakan customer setia Hino untuk terus meningkatkan keterampilan berkendara para pengemudinya',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Hino Total Support Customer Center. Memiliki 11 Area Praktek, dengan 5 Fasilits Utama',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Untuk lebih lanjut silakan klik link : \nhttps://htc.hino.co.id/trainingcenter/',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Atau hubungi : \nPak Avila : 081386043030 \nPak Irfan : 08121180918',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 25,
                      bottom: 0,
                      right: 25,
                      top: 5), //apply padding to some sides only
                  child: Text(
                    'Share This Article',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.facebook,
                      color: Colors.red,
                      size: 22,
                    ),
                    SizedBox(width: 15),
                    FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.red,
                      size: 22,
                    ),
                    SizedBox(width: 15),
                    FaIcon(
                      FontAwesomeIcons.twitter,
                      color: Colors.red,
                      size: 22,
                    ),
                    SizedBox(width: 15),
                    FaIcon(
                      FontAwesomeIcons.linkedin,
                      color: Colors.red,
                      size: 22,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.link,
                      color: Colors.grey,
                      size: 22,
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
