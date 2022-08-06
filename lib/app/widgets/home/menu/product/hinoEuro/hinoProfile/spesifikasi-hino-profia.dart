import 'package:flutter/material.dart';
import 'package:shadow_mobile/mobile/components/home/components/menu/pages/produk/component/page/hinoEuro/hinoProfia/component/body.dart';


class SpesifikasiHinoProfiaPage extends StatefulWidget {
  @override
  _SpesifikasiHinoProfiaPageState createState() => _SpesifikasiHinoProfiaPageState();
}

class _SpesifikasiHinoProfiaPageState extends State<SpesifikasiHinoProfiaPage> {

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("ZS4141 - Euro4"),
      leading: IconButton(
        onPressed: () {

        },
        icon: Icon(Icons.arrow_back_rounded, color:Colors.white, size: 25),
      ),
      backgroundColor: Colors.red,


    ),

  );
}