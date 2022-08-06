import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../spesifikasi-hino-profia.dart';


class ContentSection extends StatefulWidget {
  @override
  State<ContentSection> createState() => _ContentSectionState();
}

class _ContentSectionState extends State<ContentSection> {
  TextEditingController nameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Container(
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
                                          onTap: () {

                                          },
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
                                          onTap: () {

                                          },
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => SpesifikasiHinoProfiaPage()));
                                  },
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(

                                      child: Text(
                                        "Lihat Spesifikasi",
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold
                                        ),
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
            )
        )
    );
  }
}
