import 'package:flutter/material.dart';


class HinoDutroPage extends StatefulWidget {
  @override
  _HinoDutroPageState createState() => _HinoDutroPageState();
}

class _HinoDutroPageState extends State<HinoDutroPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("HINO300 Dutro"),
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