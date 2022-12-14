import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
        ),
      ),
      resizeToAvoidBottomInset: true,
      body: Container(
        child: Obx(() => Stepper(
          type: StepperType.horizontal,
          steps: buildStep(),
          elevation: 0,
          currentStep: controller.currentStep.value,
          onStepContinue: (){
            if(controller.currentStep.value == buildStep().length-1)
            {
              print("send data to server");
            } else {
              controller.currentStep.value++;
            }

          },
          onStepCancel: (){
            controller.currentStep.value==0 ? null : controller.currentStep.value--;
          },
          onStepTapped: (index) {
            controller.currentStep.value = index;
          },
          controlsBuilder: (BuildContext context, ControlsDetails controls) {
            return Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 55,
                    width: 78,
                    child: ElevatedButton.icon(

                      onPressed: controls.onStepCancel,
                      icon: Icon(Icons.navigate_before_rounded,
                          size: 40),
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .black, //elevated btton background color
                          shape: RoundedRectangleBorder(
                            //to set border radius to button
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0)
                      ), label: Text(""),
                    ),
                  ),
                  SizedBox(width: 16),
                  if (controller.currentStep.value == 2)
                    SizedBox(
                      height:55,
                      width: 175,
                      child: ElevatedButton(
                          child: Text("Submit", style: TextStyle(fontSize: 15)),
                          onPressed: controls.onStepContinue,
                          style: ElevatedButton.styleFrom(
                            primary: Colors
                                .red, //elevated btton background color
                            shape: RoundedRectangleBorder(
                              //to set border radius to button
                                borderRadius: BorderRadius.circular(20)),

                          )
                      ),
                    ),
                  SizedBox(width: 16),
                  SizedBox(
                    height: 55,
                    width: 78,

                    child: ElevatedButton.icon(
                      icon: Icon(Icons.navigate_next_rounded,
                          size: 40),
                      style: ElevatedButton.styleFrom(
                          primary: Colors
                              .black, //elevated btton background color
                          shape: RoundedRectangleBorder(
                            //to set border radius to button
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0)
                      ), label: Text(""),
                      onPressed: controls.onStepContinue,
                    ),
                  ),
                ],
              ),
            );
          },
        )),

      )
    );
  }

  List<Step> buildStep() {
    return [
      Step(
          title: Text('Kontak'),
          content: Container(
            child: Column(
              children: [
                Align(
                alignment: Alignment.topLeft,
                child: Container(
                child: Padding(
                padding: EdgeInsets.only(
                left: 0,
                bottom: 10,
                right: 20,
                top: 0), //apply padding to some sides only
                child: Text(
                "Silakan lengkapi \ndata diri anda",
                style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold),
                ),
                ),
                ),
                ),
                SizedBox(height: 20),
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
                'Nama Lengkap *',
                style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                ),
                ),
                ),
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                controller: nameController,
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
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelStyle: TextStyle(color: Colors.white)),
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
                'Alamat E-mail *',
                style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                ),
                ),
                ),
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: FaIcon(
                FontAwesomeIcons.envelope,
                color: Colors.grey,
                ),
                ),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelStyle: TextStyle(color: Colors.white)),
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
                'No. Handphone *',
                style: TextStyle(color: Colors.black, fontSize: 15),
                ),
                ),
                ),
                ),
                Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                prefixIcon: Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: FaIcon(
                FontAwesomeIcons.phone,
                color: Colors.grey,
                ),
                ),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey, width: 2.0),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelStyle: TextStyle(color: Colors.white)),
                ),
                ),
                SizedBox(height: 30)
              ],

            ),
          ),
          isActive: controller.currentStep.value >= 0,
          state: controller.currentStep.value>0?StepState.complete:StepState.indexed
      ),

      Step(
          title: Text('Address'),
          content: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 0,
                          bottom: 10,
                          right: 20,
                          top: 0), //apply padding to some sides only
                      child: Text(
                        "Lengkapi alamat Anda",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
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
                        'Nama Lengkap *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
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
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
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
                        'Alamat E-mail *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: FaIcon(
                            FontAwesomeIcons.envelope,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
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
                        'No. Handphone *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
          isActive: controller.currentStep.value >= 1,
          state: controller.currentStep.value > 1
              ? StepState.complete
              : StepState.indexed),

      Step(
          title: Text('Password'),
          content: Container(
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 0,
                          bottom: 10,
                          right: 20,
                          top: 0), //apply padding to some sides only
                      child: Text(
                        "Lengkapi password dan \nmasukan kode referal \nAnda",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                        'Nama Lengkap *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
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
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
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
                        'Alamat E-mail *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: FaIcon(
                            FontAwesomeIcons.envelope,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
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
                        'No. Handphone *',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        prefixIcon: Align(
                          widthFactor: 1.0,
                          heightFactor: 1.0,
                          child: FaIcon(
                            FontAwesomeIcons.phone,
                            color: Colors.grey,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.0),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        labelStyle: TextStyle(color: Colors.white)),
                  ),
                ),
                SizedBox(height: 30)
              ],
            ),
          ),
          isActive: controller.currentStep.value >= 2)
    ];
  }
  // SingleChildScrollView(
  // child: Container(
  // height: 900,
  // width: MediaQuery.of(context).size.width,
  // color: Colors.white,
  // child: Column(
  // mainAxisAlignment: MainAxisAlignment.start,
  // crossAxisAlignment: CrossAxisAlignment.center,
  // children: [
  // Container(
  // alignment: Alignment.center,
  // padding: const EdgeInsets.fromLTRB(35, 0, 0, 15),
  // child: Image.asset(
  // 'assets/mobile/images/trucks.png',
  // width: 450,
  // )),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // child: Padding(
  // padding: EdgeInsets.only(
  // left: 15,
  // bottom: 10,
  // right: 20,
  // top: 0), //apply padding to some sides only
  // child: Text(
  // "Silakan lengkapi \ndata diri anda",
  // style: TextStyle(
  // color: Colors.black,
  // fontSize: 30.0,
  // fontWeight: FontWeight.bold),
  // ),
  // ),
  // ),
  // ),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // child: Padding(
  // padding: EdgeInsets.only(
  // left: 15,
  // bottom: 0,
  // right: 0,
  // top: 10), //apply padding to some sides only
  // child: Text(
  // 'Nama Lengkap *',
  // style: TextStyle(color: Colors.black, fontSize: 15),
  // ),
  // ),
  // ),
  // ),
  // Container(
  // padding: const EdgeInsets.all(10),
  // child: TextField(
  // controller: nameController,
  // decoration: const InputDecoration(
  // prefixIcon: Align(
  // widthFactor: 1.0,
  // heightFactor: 1.0,
  // child: FaIcon(
  // FontAwesomeIcons.user,
  // color: Colors.grey,
  // ),
  // ),
  // focusedBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.red, width: 2.0),
  // ),
  // enabledBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.grey, width: 2.0),
  // borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  // labelStyle: TextStyle(color: Colors.white)),
  // ),
  // ),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // child: Padding(
  // padding: EdgeInsets.only(
  // left: 15,
  // bottom: 0,
  // right: 0,
  // top: 10), //apply padding to some sides only
  // child: Text(
  // 'Alamat E-mail *',
  // style: TextStyle(color: Colors.black, fontSize: 15),
  // ),
  // ),
  // ),
  // ),
  // Container(
  // padding: const EdgeInsets.all(10),
  // child: TextField(
  // controller: nameController,
  // decoration: const InputDecoration(
  // prefixIcon: Align(
  // widthFactor: 1.0,
  // heightFactor: 1.0,
  // child: FaIcon(
  // FontAwesomeIcons.envelope,
  // color: Colors.grey,
  // ),
  // ),
  // focusedBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.red, width: 2.0),
  // ),
  // enabledBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.grey, width: 2.0),
  // borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  // labelStyle: TextStyle(color: Colors.white)),
  // ),
  // ),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // child: Padding(
  // padding: EdgeInsets.only(
  // left: 15,
  // bottom: 0,
  // right: 0,
  // top: 10), //apply padding to some sides only
  // child: Text(
  // 'No. Handphone *',
  // style: TextStyle(color: Colors.black, fontSize: 15),
  // ),
  // ),
  // ),
  // ),
  // Container(
  // padding: const EdgeInsets.all(10),
  // child: TextField(
  // controller: nameController,
  // decoration: const InputDecoration(
  // prefixIcon: Align(
  // widthFactor: 1.0,
  // heightFactor: 1.0,
  // child: FaIcon(
  // FontAwesomeIcons.phone,
  // color: Colors.grey,
  // ),
  // ),
  // focusedBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.red, width: 2.0),
  // ),
  // enabledBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.grey, width: 2.0),
  // borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  // labelStyle: TextStyle(color: Colors.white)),
  // ),
  // ),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // padding: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
  // child: Row(
  // crossAxisAlignment: CrossAxisAlignment.start,
  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
  // children: [
  // Text(
  // "Password *",
  // style: TextStyle(color: Colors.black, fontSize: 15),
  // ),
  // ],
  // ),
  // ),
  // ),
  // Container(
  // padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
  // child: TextField(
  // style: TextStyle(color: Colors.white),
  // obscureText: !_passwordVisible,
  // controller: passwordController,
  // decoration: const InputDecoration(
  // prefixIcon: Align(
  // widthFactor: 1.0,
  // heightFactor: 1.0,
  // child: FaIcon(
  // FontAwesomeIcons.key,
  // color: Colors.grey,
  // ),
  // ),
  // suffixIcon: Icon(
  // Icons.visibility,
  // color: Colors.grey,
  // ),
  // focusedBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.red, width: 3),
  // ),
  // enabledBorder: OutlineInputBorder(
  // borderSide:
  // BorderSide(color: Colors.grey, width: 2.0),
  // borderRadius: BorderRadius.all(Radius.circular(20))),
  // labelStyle: TextStyle(color: Colors.white)),
  // ),
  // ),
  // Align(
  // alignment: Alignment.centerLeft,
  // child: Container(
  // child: Padding(
  // padding: EdgeInsets.only(
  // left: 15,
  // bottom: 0,
  // right: 0,
  // top: 10), //apply padding to some sides only
  // child: Text(
  // 'Referral Code',
  // style: TextStyle(color: Colors.black, fontSize: 15),
  // ),
  // ),
  // ),
  // ),
  // Container(
  // padding: const EdgeInsets.all(10),
  // child: TextField(
  // controller: nameController,
  // decoration: const InputDecoration(
  // prefixIcon: Align(
  // widthFactor: 1.0,
  // heightFactor: 1.0,
  // child: FaIcon(
  // FontAwesomeIcons.link,
  // color: Colors.grey,
  // ),
  // ),
  // focusedBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.red, width: 2.0),
  // ),
  // enabledBorder: OutlineInputBorder(
  // borderSide: BorderSide(color: Colors.grey, width: 2.0),
  // borderRadius: BorderRadius.all(Radius.circular(20)),
  // ),
  // labelText: '[optional] Kode Dealer',
  // labelStyle: TextStyle(color: Colors.grey)),
  // ),
  // ),
  // Container(
  // height: 50,
  // width: 410,
  // margin: const EdgeInsets.only(top: 20.0, bottom: 20),
  // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
  // child: ElevatedButton(
  // onPressed: () {
  // //Main Home
  // },
  // child: const Text(
  // 'Sign Up',
  // style: TextStyle(
  // color: Colors.white,
  // fontSize: 15,
  // ),
  // ),
  // style: ElevatedButton.styleFrom(
  // primary: Colors.grey[600],
  // padding:
  // EdgeInsets.symmetric(horizontal: 0, vertical: 10),
  // fixedSize: const Size(240, 80),
  // shape: RoundedRectangleBorder(
  // borderRadius: BorderRadius.circular(15))),
  // ),
  // ),
  // Row(
  // mainAxisAlignment: MainAxisAlignment.center,
  // children: <Widget>[
  // Text(
  // "sudah punya akun ? ",
  // style: TextStyle(
  // color: Colors.black,
  // fontWeight: FontWeight.bold,
  // fontSize: 14,
  // ),
  // ),
  // GestureDetector(
  // onTap: () {
  // // Login Page
  // Get.toNamed("login");
  // },
  // child: Text(
  // "Login",
  // style: TextStyle(
  // fontSize: 15,
  // color: Colors.red,
  // fontWeight: FontWeight.bold,
  // ),
  // ),
  // ),
  // ],
  // ),
  // ],
  // ),
  // ),
  // )
}
