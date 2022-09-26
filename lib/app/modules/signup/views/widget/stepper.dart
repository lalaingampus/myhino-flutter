
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class StepperView extends StatefulWidget {
  @override
  State<StepperView> createState() => _StepperViewState();
}

class _StepperViewState extends State<StepperView> {
  int currentStep = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stepper(
        type: StepperType.horizontal,
        steps: getSteps(),
        currentStep: currentStep,
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if (isLastStep) {
            print('Completed');
          } else {
            setState(() => currentStep += 1);
            }
          },
        onStepTapped: (step) => setState(() => currentStep = step),
        onStepCancel: currentStep == 0 ? null : () => setState(() => currentStep -= 1),
      ),
    );
  }

  List<Step> getSteps() => [
    Step(
      state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >=0,
      title: Text('Account'),
      content: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(
                    left: 15,
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
        ],
      )
    ),
    Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >=1,
      title: Text('Address'),
        content: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 15,
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
          ],
        )
    ),
    Step(
        state: currentStep > 0 ? StepState.complete : StepState.indexed,
      isActive: currentStep >=2,
      title: Text('Complete'),
        content: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: 15,
                      bottom: 10,
                      right: 20,
                      top: 0), //apply padding to some sides only
                  child: Text(
                    "Lengkapi password dan \n masukan kode referal \n Anda",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        )
    ),
  ];
}
