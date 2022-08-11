import 'package:flutter/material.dart';

Container AddButton(
    {required onTap,
    required double height,
    required double width,
    required String title}) {
  return Container(
    height: height,
    width: width,
    color: Colors.black,
    child: Column(
      children: [
        Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0,
                    bottom: 0,
                    right: 0,
                    top: 10), //apply padding to some sides only
                child: Text(
                  'Bingung cari kode Spare Part ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )),
        SizedBox(height: 10),
        Row(mainAxisAlignment: MainAxisAlignment.start, children: <Widget>[
          Text(
            "Lihat ",
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
            },
            child: new Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ]),
      ],
    ),
  );
}
