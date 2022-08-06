
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 200,
            width: 411,
            color: Colors.red,
            padding: EdgeInsets.symmetric(vertical: 70, horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: 'Selamat Datang \n',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Muhamad Hafizh Widodo',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}