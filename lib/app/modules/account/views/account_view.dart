import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import '../controllers/account_controller.dart';

class AccountView extends GetView<AccountController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Start::Header
              Container(
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
                                image: AssetImage(
                                    "assets/mobile/images/avatar.png"),
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
              ),
              //End::Header
              SizedBox(height: 10),
              //Start::Personal
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      height: 565,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    margin:
                                                        const EdgeInsets.only(
                                                            top: 20.0,
                                                            bottom: 20),
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 0, 10, 0),
                                                    child: ElevatedButton(
                                                      onPressed: () {},
                                                      child: const Text(
                                                        'Email Validated',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17,
                                                        ),
                                                      ),
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        primary: Colors.green,
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 0,
                                                                vertical: 10),
                                                        fixedSize:
                                                            const Size(240, 80),
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(13),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 0),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 16,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(height: 2),
                                                  Align(
                                                    alignment:
                                                        Alignment.centerLeft,
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
                                      margin: const EdgeInsets.only(
                                          top: 4.0, bottom: 20),
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 0, 10, 0),
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
                                            borderRadius:
                                                BorderRadius.circular(20),
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
              ),
              //End::Personal
              SizedBox(height: 10),
              //Start::Vehicle
              Container(
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
                                  image: AssetImage(
                                      'assets/mobile/images/logo-dutro.png'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                                  image: AssetImage(
                                      'assets/mobile/images/logo-ranger.png'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                                  image: AssetImage(
                                      'assets/mobile/images/logo-profia.png'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                                  image: AssetImage(
                                      'assets/mobile/images/logo-bus.png'),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
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
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                          fixedSize: const Size(240, 80),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
              //End::Vehicle
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
