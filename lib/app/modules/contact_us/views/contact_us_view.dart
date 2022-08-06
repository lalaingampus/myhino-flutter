import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import '../controllers/contact_us_controller.dart';

class ContactUsView extends GetView<ContactUsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[100],
          height: 1700,
          child: Column(
            children: [
              Container(
                height: 230,
                width: 411,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        AssetImage('assets/mobile/images/header-contact.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
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
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/mobile/images/ic-phone-call.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        '0-800-100-4466',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      fixedSize: const Size(240, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
              ),
              SizedBox(height: 0),
              Container(
                height: 50,
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
                        height: 25.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                'assets/mobile/images/ic-whatsapp.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'WhatsApp',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      fixedSize: const Size(240, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
                ),
              ),
              SizedBox(height: 0),
              Container(
                height: 50,
                width: 410,
                margin: const EdgeInsets.only(top: 0.0, bottom: 20),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Container(
                        height: 20.0,
                        width: 25.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/mobile/images/ic-activity-email.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        'E-mail',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                      fixedSize: const Size(240, 80),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      )),
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
                        top: 5), //apply padding to some sides only
                    child: Text(
                      'HINO MOTORS SALES INDONESIA',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 950,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    color: Colors.white,
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
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Head Office',
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
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Wisma Indomobil II. Jl Letjen MT.Haryono \nKav.9 Jakarta 13330 DKI Jakarta - Indonesia \nPhone: +6221 856 4570, +6221 856 4480 \nFax: +6221 851 5731, +6221 851 7550,',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Service and Sparepart Centaer',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl Raya Gatot Subroto \nKm 8,5 Tanggerang 15111, Banten Indonesia \nPhone: +6221 591 8080, +6221 591 8844 \nFax: +6221 591 7979, +6221 591 7887',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Balikpapan Branch',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl. Pulau Balang \nKarang Joang Balikpapan Utara - Kalimantan \nPhone: +62 542 7066403',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Medan Branch',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl. Medan - Lubuk Pakam \nkm24, Tanjung Morowa - Sumatra Utara \nPhone: +62 61 8890495',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Part Depo Surabaya',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl. Raya Kletek No. 9 \nTaman Sidoarjo Surabaya, Jawa Timur \nPhone : +62 31 7872225 \nFax : +62 31 7872226',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Port Depo Makassar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl. Ir. Sutami, No. 35 Kota Makassar, Sulawesi\nPhone : 08001004466',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          height: 2,
                          width: 350,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Port Depo Banjarmasin',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 15,
                                  bottom: 0,
                                  right: 0,
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Kawasan Industri LIK-Liang Anggang \nJl. Banjar Gawi Raya No. 6E Banjarbaru \nBanjarmasin - Kalimantan Selatan',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        bottom: 0,
                        right: 0,
                        top: 5), //apply padding to some sides only
                    child: Text(
                      'HINO MOTORS MANUFACTURING INDONESIA',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                height: 190,
                width: 400,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Container(
                    color: Colors.white,
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
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Kawasan Industri Kota Bukit Indah',
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
                                  top: 8), //apply padding to some sides only
                              child: Text(
                                'Jl. Damar Blok D1 No. 1 Purwakarta 41181 \nJawa Barat - Indonesia \nPhone : +62264 351 911 \nFax : +62264 351 755, +62264 350 488',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 18,
                                  height: 1.2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
