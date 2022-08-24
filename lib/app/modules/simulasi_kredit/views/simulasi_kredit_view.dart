import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import '../controllers/simulasi_kredit_controller.dart';
import 'package:myhino/app/widgets/search_dropdown.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimulasiKreditView extends GetView<SimulasiKreditController> {
  final simulai_kredit_controller = Get.find<SimulasiKreditController>();

  String changeModel(value) {
    Get.snackbar("vehicle model", value.toString());
    return value.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simulasi Kredit"),
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
        child: Form(
          key: simulai_kredit_controller.key,
          child: Column(
            children: <Widget>[
              Text(
                "model*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              // Add TextFormFields and ElevatedButton here.
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: SearchDropDown(
                    items: ["Brazil", "France", "Tunisia", "Canada"],
                    defaultSelect: "Tunisia"),
              ),

              Text(
                "Variant*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.variant,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Text(
                "Harga Unit*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.hargaUnit,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Text(
                "Harga Karoseri*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.hargaKaroseri,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Jumlah Unit*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.jumlahUnit,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Text(
                "DP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.dp,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Text(
                "Insurance Type",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                child: SearchDropDown(
                    items: ["All Risk", "Tlo"], defaultSelect: "All Risk"),
              ),

              Text(
                "Biaya Asuransi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.dp,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Biaya Provisi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.dp,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),

              Text(
                "Tenor(Bulan)*",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Text(
                "Bunga",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.dp,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text(
                "Metode Angsuran",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: simulai_kredit_controller.dp,
                  decoration: const InputDecoration(
                    prefixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: FaIcon(
                        FontAwesomeIcons.user,
                        color: Colors.grey,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 410,
                margin: const EdgeInsets.only(top: 20.0, bottom: 20),
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Hitung',
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
                        borderRadius: BorderRadius.circular(15),
                      )),
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
