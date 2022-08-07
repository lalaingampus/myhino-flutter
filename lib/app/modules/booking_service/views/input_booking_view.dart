import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import '../controllers/input_booking_controller.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputBookingView extends GetView {
  final input_booking_controller = Get.find<InputBookingController>();
  final dateFormat = DateFormat("yyyy-MM-dd");
  final timeFormat = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking Service"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('home');
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
      body: SingleChildScrollView(
        child: Container(
          height: 890,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        bottom: 0,
                        right: 0,
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Vehicle *',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: input_booking_controller.vehicle,
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
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        bottom: 0,
                        right: 0,
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Tanggal Booking *',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: DateTimeField(
                  format: dateFormat,
                  onShowPicker: (context, currentValue) {
                    return showDatePicker(
                      context: context,
                      firstDate: DateTime(1900),
                      initialDate: currentValue ?? DateTime.now(),
                      lastDate: DateTime(2100),
                    );
                  },
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
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Jam Booking *',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: DateTimeField(
                  format: timeFormat,
                  onShowPicker: (context, currentValue) async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.fromDateTime(
                        currentValue ?? DateTime.now(),
                      ),
                    );
                    return DateTimeField.convert(time);
                  },
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
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Jenis Booking *',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: DropdownSearch(
                  items: ["Brazil", "France", "Tunisia", "Canada"],
                  onChanged: input_booking_controller.changeModel,
                  selectedItem: "Tunisia",
                  validator: (String? item) {
                    if (item == null)
                      return "Required field";
                    else
                      return null;
                  },
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
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Alasan Booking',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  child: TextField(
                    controller: input_booking_controller.alasanBooking,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 30.0),
                      suffixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
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
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        bottom: 0,
                        right: 0,
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Attachment',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Text('file_picker'),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 15,
                        bottom: 0,
                        right: 0,
                        top: 10), //apply padding to some sides only
                    child: Text(
                      'Dealer',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: DropdownSearch(
                  items: ["Brazil", "France", "Tunisia", "Canada"],
                  onChanged: input_booking_controller.changeModel,
                  selectedItem: "Tunisia",
                  validator: (String? item) {
                    if (item == null)
                      return "Required field";
                    else
                      return null;
                  },
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
                    'Create',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                    fixedSize: const Size(240, 80),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
