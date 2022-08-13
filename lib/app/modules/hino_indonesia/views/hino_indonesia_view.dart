import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:myhino/app/widgets/bottom_navigation.dart';
import 'package:get/get.dart';

import '../controllers/hino_indonesia_controller.dart';

class HinoIndonesiaView extends GetView<HinoIndonesiaController> {
  final Uri _facebook = Uri.parse('https://www.facebook.com/Hinototalsupport/');
  final Uri _twitter = Uri.parse('https://www.twitter.com/hinoid');
  final Uri _instagram = Uri.parse('https://www.instagram.com/hinoid');
  final Uri _youtube = Uri.parse(
      'https://www.youtube.com/channel/UCaAUoOw0yHozIzd6nCI3vBA?sub_confirmation=1');

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url)) {
      Get.snackbar("Opps Something Wrong", 'Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About"),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_rounded, color: Colors.white, size: 25),
        ),
        backgroundColor: Colors.red,
      ),
      resizeToAvoidBottomInset: true,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Text(
              "PT. Hino Motors Sales Indonesia",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "PT. Hino Motors Sales Indonesia (HMSI) adalah anak perusahaan dari Hino Motors, Ltd. (Jepang). HMSI mendistribusikan kendaraan komersial merek Hino melalui Dealer resmi di seluruh wilayah Republik Indonesia untuk memberikan kenyamanan bagi semua pelanggan dalam mendapatkan akses mudah ke Kendaraan Hino di wilayah mereka.",
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "Catatan penjualan kami menunjukkan bahwa pelanggan lebih mempercayai Hino dibandingkan dengan merek lain dan kepercayaan mereka telah menempatkan kami sebagai pemimpin pasar. Kehandalan dan daya tahan masing-masing produk telah benar-benar membuktikan Hino sebagai tolok ukur bagaimana truk dan bus seharusnya dalam benak pelanggan kami (produk yang paling sesuai).",
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            child: Text(
              "Kami bertujuan untuk melayani pelanggan melalui kombinasi produk yang paling sesuai dan dukungan total untuk memaksimalkan waktu operasional pelanggan dan meminimalkan waktu henti. yo man !!!! ?",
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => _launchUrl(_facebook),
                  icon: FaIcon(FontAwesomeIcons.facebook, size: 24),
                  label: Text("Facebook"),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => _launchUrl(_twitter),
                  icon: FaIcon(FontAwesomeIcons.twitter, size: 24),
                  label: Text("Twitter"),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => _launchUrl(_instagram),
                  icon: FaIcon(FontAwesomeIcons.instagram, size: 24),
                  label: Text("Instagram"),
                ),
                TextButton.icon(
                  style: TextButton.styleFrom(
                    primary: Colors.black,
                  ),
                  onPressed: () => _launchUrl(_youtube),
                  icon: FaIcon(FontAwesomeIcons.youtube, size: 24),
                  label: Text("Youtube"),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
