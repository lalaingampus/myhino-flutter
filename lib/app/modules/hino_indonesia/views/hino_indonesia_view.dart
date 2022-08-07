import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

import '../controllers/hino_indonesia_controller.dart';

class HinoIndonesiaView extends GetView<HinoIndonesiaController> {
  final Uri _facebook = Uri.parse('https://www.facebook.com/Hinototalsupport/');
  final Uri _twitter = Uri.parse('https://www.twitter.com/hinoid');
  final Uri _instagram = Uri.parse('https://www.instagram.com/hinoid');
  final Uri _youtube = Uri.parse(
      'https://www.youtube.com/channel/UCaAUoOw0yHozIzd6nCI3vBA?sub_confirmation=1');

  Future<void> _launchUrl(_url) async {
    if (!await launchUrl(_url)) {
      Get.snackbar("Opps Something Wrong", 'Could not launch $_url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        leading: IconButton(
          onPressed: () {
            Get.toNamed('booking-service');
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
        actions: [
          IconButton(
            icon: Icon(Icons.history),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      ),
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: ListView(
          children: <Widget>[
            Container(
              child: Text.rich(
                TextSpan(
                  text: 'PT. Hino Motors Sales Indonesia',
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'PT. Hino Motors Sales Indonesia (HMSI) adalah anak perusahaan dari Hino Motors, Ltd. (Jepang). HMSI mendistribusikan kendaraan komersial merek Hino melalui Dealer resmi di seluruh wilayah Republik Indonesia untuk memberikan kenyamanan bagi semua pelanggan dalam mendapatkan akses mudah ke Kendaraan Hino di wilayah mereka.'),
                    TextSpan(
                        text:
                            'Catatan penjualan kami menunjukkan bahwa pelanggan lebih mempercayai Hino dibandingkan dengan merek lain dan kepercayaan mereka telah menempatkan kami sebagai pemimpin pasar. Kehandalan dan daya tahan masing-masing produk telah benar-benar membuktikan Hino sebagai tolok ukur bagaimana truk dan bus seharusnya dalam benak pelanggan kami (produk yang paling sesuai).'),
                    TextSpan(
                        text:
                            'Kami bertujuan untuk melayani pelanggan melalui kombinasi produk yang paling sesuai dan dukungan total untuk memaksimalkan waktu operasional pelanggan dan meminimalkan waktu henti. yo man !!!! ?'),
                  ],
                ),
              ),
            ),
            Row(
              IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.gamepad),
                onPressed: _launchUrl(_facebook),
              ),
              Text("facebook"),
            ),
            Row(
              IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.gamepad),
                onPressed: _launchUrl(_facebook),
              ),
              Text("Twitter"),
            ),
            Row(
              IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.gamepad),
                onPressed: _launchUrl(_facebook),
              ),
              Text("Instagram"),
            ),
            Row(
              IconButton(
                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                icon: FaIcon(FontAwesomeIcons.gamepad),
                onPressed: _launchUrl(_facebook),
              ),
              Text("Youtube"),
            ),
          ],
        ),
      ),
    );
  }
}
