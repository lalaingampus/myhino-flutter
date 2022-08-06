import 'package:flutter/material.dart';


class HinoBusPage extends StatefulWidget {
  @override
  _HinoBusPageState createState() => _HinoBusPageState();
}

class _HinoBusPageState extends State<HinoBusPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("HINO Bus"),
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