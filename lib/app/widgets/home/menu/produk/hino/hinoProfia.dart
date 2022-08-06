import 'package:flutter/material.dart';


class HinoProfiaPage extends StatefulWidget {
  @override
  _HinoProfiaPageState createState() => _HinoProfiaPageState();
}

class _HinoProfiaPageState extends State<HinoProfiaPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("HINO700 Profia"),
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