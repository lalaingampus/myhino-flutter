import 'package:flutter/material.dart';

import 'package:get/get.dart';

class VehicleView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 20,
                    bottom: 0,
                    right: 0,
                    top: 5), //apply padding to some sides only
                child: Text(
                  'Jumlah Unit Hino',
                  style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 60,
            width: 410,
            margin: const EdgeInsets.only(top: 0.0, bottom: 12),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 15.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/mobile/images/logo-dutro.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 250),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
                primary: Colors.grey[100],
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 60,
            width: 410,
            margin: const EdgeInsets.only(top: 0.0, bottom: 12),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 15.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/mobile/images/logo-ranger.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 250),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
                primary: Colors.grey[100],
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 60,
            width: 410,
            margin: const EdgeInsets.only(top: 0.0, bottom: 12),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 10.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/mobile/images/logo-profia.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 250),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
                primary: Colors.grey[100],
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 60,
            width: 410,
            margin: const EdgeInsets.only(top: 0.0, bottom: 12),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Container(
                    height: 10.0,
                    width: 70.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/mobile/images/logo-bus.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 250),
                  Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              style: ElevatedButton.styleFrom(
                elevation: 0.0,
                shadowColor: Colors.transparent,
                primary: Colors.grey[100],
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 2),
          Container(
            height: 2,
            width: 375,
            color: Colors.grey[300],
          ),
          SizedBox(height: 20),
          Container(
            height: 50,
            width: 410,
            margin: const EdgeInsets.only(top: 4.0, bottom: 20),
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Edit',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                fixedSize: const Size(240, 80),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
