import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/telematics_controller.dart';

class TelematicsView extends GetView<TelematicsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Telematics"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('booking-service');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Container(
          height: 910,
          width: 412,
          color: Colors.grey[300],
          child: Column(
            children: [
              Container(
                height: 290,
                width: 412,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/mobile/images/telematics.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.fromLTRB(13, 0, 13, 0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "HINO Telematics",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "HINO Connect pengembangan dari hino yang merupakan sistem komunikasi tanpa kabel ber-teknologi tinggi untuk membantu kinerja operasional bisnis pelanggan yang lebih menguntungkan dan mudah dioperasikan",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                  height: 60,
                  width: 400,
                  margin: const EdgeInsets.only(top: 10.0, bottom: 20),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      openDialog(context);
                    },
                    child: const Text(
                      'Hino Connect',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.black,
                        padding:
                            EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                        fixedSize: const Size(240, 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(String urlImage, int index) => Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        color: Colors.grey,
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
        ),
      );

  Future openDialog(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('HINO TELEMATICS'),
          content: TextField(
            decoration: InputDecoration(hintText: 'Enter Your Name'),
          ),
          actions: [
            TextButton(onPressed: () {}, child: Text('Submit')),
          ],
        ),
      );
}
