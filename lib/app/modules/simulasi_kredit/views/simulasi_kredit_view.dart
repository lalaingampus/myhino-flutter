import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import '../controllers/simulasi_kredit_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';

class SimulasiKreditView extends GetView<SimulasiKreditController> {
  final simulai_kredit_controller = Get.find<SimulasiKreditController>();
  List<Map<String, String>> days = [
    {'value': 'mon', 'title': 'Brazil'},
    {'value': 'tue', 'title': 'Tuesday'},
    {'value': 'wed', 'title': 'Wednesday'},
    {'value': 'thu', 'title': 'Thursday'},
    {'value': 'fri', 'title': 'Friday'},
    {'value': 'sat', 'title': 'Saturday'},
    {'value': 'sun', 'title': 'Sunday'},
  ];

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
              DropdownSearch(
                items: ["Brazil", "France", "Tunisia", "Canada"],
                onChanged: simulai_kredit_controller.changeModel,
                selectedItem: "Tunisia",
                validator: (String? item) {
                  if (item == null)
                    return "Required field";
                  else
                    return null;
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
