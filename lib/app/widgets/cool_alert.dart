import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget coolAlert(
    {required context,
    required String mainText,
    required String titleText,
    required CoolAlertType alertType,
    required String textButton,
    required int duration,
    required Color colorButton}) {
  return _buildButton(
    onTap: () {
      CoolAlert.show(
        context: context,
        type: alertType,
        title: titleText,
        text: mainText,
        autoCloseDuration: Duration(seconds: duration),
      );
    },
    text: textButton,
    color: colorButton,
  );
}

Widget confirmAlert(
    {required context,
    required String mainText,
    required String confirmBtnText,
    required String cancelBtnText,
    required String textButton}) {
  return _buildButton(
    onTap: () {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.confirm,
        text: mainText,
        confirmBtnText: confirmBtnText,
        cancelBtnText: cancelBtnText,
        confirmBtnColor: Colors.green,
      );
    },
    text: textButton,
    color: Colors.lightGreen,
  );
}

Widget _buildButton({VoidCallback? onTap, required String text, Color? color}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: MaterialButton(
      color: color,
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      onPressed: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
