import 'package:flutter/material.dart';


class HinoRangerPage extends StatefulWidget {
  @override
  _HinoRangerPageState createState() => _HinoRangerPageState();
}

class _HinoRangerPageState extends State<HinoRangerPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("HINO500 Ranger"),
      leading: IconButton(
        onPressed: () {

        },
        icon: Icon(Icons.arrow_back_rounded, color:Colors.white, size: 25),
      ),
      backgroundColor: Colors.red,
      actions: [
        IconButton(
          icon: Icon(Icons.history),
          onPressed: () {},
        ),
      ],

    ),


  );
}