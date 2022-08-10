import 'package:flutter/material.dart';

Container ResetFilter({required onTap}) {
  return Container(
    height: 40,
    width: 100,
    padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
    child: ElevatedButton(
      onPressed: onTap,
      child: const Text(
        'Filter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 13,
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        elevation: 0,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        fixedSize: const Size(240, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    ),
  );
}
