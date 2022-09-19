import 'package:flutter/material.dart';

import 'package:get/get.dart';

class PersonalView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            height: 605,
            width: 430,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 420,
                                    width: 185,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Nama Perusahaan',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Bussiness Segment',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Partshop',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'E-mail.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Bottlewar87@gmail.com',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Container(
                                          height: 50,
                                          width: 160,
                                          margin: const EdgeInsets.only(
                                              top: 20.0, bottom: 20),
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 10, 0),
                                          child: ElevatedButton(
                                            onPressed: () {},
                                            child: const Text(
                                              'Email Validated',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 17,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.green,
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0, vertical: 10),
                                              fixedSize: const Size(240, 80),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      0), //apply padding to some sides only
                                              child: Text(
                                                'No. Handphone.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                '082138409469',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'No. Telp.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
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
                              SizedBox(width: 20),
                              Column(
                                children: [
                                  Container(
                                    height: 420,
                                    width: 185,
                                    child: Column(
                                      children: [
                                        SizedBox(height: 10),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Alamat.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Simponi Max IV, \nRT.10/RW.8, Pegangsaan \nDua, Kec. Klp. Gading, Kota \nJkt Utara, Daerah Khusus \nIbukota Jakarta 14240, \nIndonesia',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Kecamatan.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Kecamatan Kelapa Gading',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Kelurahan.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Pegangsaan Dua',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Kota / Kabupaten.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Kota Jakarta Utara',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      8), //apply padding to some sides only
                                              child: Text(
                                                'Provinsi.',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 2),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 0,
                                                  right: 0,
                                                  top:
                                                      2), //apply padding to some sides only
                                              child: Text(
                                                'Daerah Khusus Ibukota \nJakarta',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
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
                            ],
                          ),
                          SizedBox(height: 20),
                          Container(
                            height: 2,
                            width: 370,
                            color: Colors.grey[200],
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 10),
                                fixedSize: const Size(240, 80),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
