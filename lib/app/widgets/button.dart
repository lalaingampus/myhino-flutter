import 'package:flutter/material.dart';

Container Button(
    {required onTap,
    required double height,
    required double width,
    required String title}) {
  return Container(
    padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
    height: height,
    width: width,
    child: ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        fixedSize: const Size(240, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    ),
  );
}
