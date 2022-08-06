import 'package:flutter/material.dart';

import 'package:get/get.dart';
import './header_profile_view.dart';

class HinoProfileView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HINO700 Profia"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.grey[100],
        height: 1000,
        child: Column(
          children: [
            // Start:: Header
            Container(
              child: Column(
                children: [
                  Container(
                    height: 230,
                    width: 411,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/mobile/images/img_profia.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // End:: Header
            SizedBox(height: 10),
            // Start:: Search
            Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          color: Colors.grey[200],
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Semua',
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp,
                                  color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      height: 70,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: Container(
                          child: TextField(
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              suffixIcon: Material(
                                elevation: 4.0,
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(13.0),
                                  bottomRight: Radius.circular(13.0),
                                ),
                                child: Icon(Icons.search, color: Colors.black),
                              ),
                              hintText: 'Cari Nomor Plat / Kabin',
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.all(15),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            // End:: Search
            SizedBox(height: 10),
            Container(
              height: 0.5,
              width: 395,
              color: Colors.grey,
            ),
            SizedBox(height: 25),
            //Start:: Content
            Container(
              height: 400,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    height: 180,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(14),
                      child: Container(
                        child: Row(
                          children: [
                            Container(
                              height: 100,
                              width: 140,
                              child: Image.asset(
                                "assets/mobile/images/icon-bus.png",
                                height: 10,
                                width: 20,
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              height: 380,
                              width: 220,
                              child: Column(
                                children: [
                                  SizedBox(height: 7),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: Text(
                                        "ZS4141 - Euro4",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      child: Text(
                                        "Profia",
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 25),
                                  Container(
                                    height: 30,
                                    width: 220,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            child: Icon(
                                              Icons.share,
                                              color: Colors.black,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Container(
                                            height: 25,
                                            width: 25,
                                            child: Icon(
                                              Icons.download,
                                              color: Colors.black,
                                              size: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //         builder: (context) =>
                                      //             SpesifikasiHinoProfiaPage()));
                                    },
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        child: Text(
                                          "Lihat Spesifikasi",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //End:: Content
          ],
        ),
      ),
    );
  }
}
