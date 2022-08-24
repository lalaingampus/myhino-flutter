import 'package:flutter/material.dart';
import 'package:myhino/app/widgets/paginations.dart';
import 'package:get/get.dart';

class AktivitasView extends GetView {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 760,
        width: 390,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              child: Image.asset(
                                "assets/mobile/images/fasilitas_banner.png",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 210,
                        width: 200,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Tiga minggu yang lalu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "14 July 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Hino Salurkan CSR Kendaraan working station ke Ditreskimsus Polda Metro Jaya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
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
            Container(height: 1, width: 350, color: Colors.red),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              child: Image.asset(
                                "assets/mobile/images/fasilitas_banner.png",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 210,
                        width: 200,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Tiga minggu yang lalu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "14 July 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Hino Salurkan CSR Kendaraan working station ke Ditreskimsus Polda Metro Jaya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
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
            Container(height: 1, width: 350, color: Colors.red),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              child: Image.asset(
                                "assets/mobile/images/fasilitas_banner.png",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 210,
                        width: 200,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Tiga minggu yang lalu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "14 July 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Hino Salurkan CSR Kendaraan working station ke Ditreskimsus Polda Metro Jaya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
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
            Container(height: 1, width: 350, color: Colors.red),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              child: Image.asset(
                                "assets/mobile/images/fasilitas_banner.png",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 210,
                        width: 200,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Tiga minggu yang lalu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "14 July 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Hino Salurkan CSR Kendaraan working station ke Ditreskimsus Polda Metro Jaya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
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
            Container(height: 1, width: 350, color: Colors.red),
            Container(
              padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
              height: 130,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 100,
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Column(
                          children: [
                            Container(
                              height: 100,
                              width: 250,
                              child: Image.asset(
                                "assets/mobile/images/fasilitas_banner.png",
                                height: 150,
                                width: 150,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        height: 210,
                        width: 200,
                        child: Column(
                          children: [
                            SizedBox(height: 15),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Tiga minggu yang lalu",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "14 July 2022",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 7),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Hino Salurkan CSR Kendaraan working station ke Ditreskimsus Polda Metro Jaya",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      height: 1.2),
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
            Container(height: 1, width: 350, color: Colors.red),
            PaggingButton(currentPage: 1, totalPage: 20)
          ],
        ),
      ),
    );
  }
}
