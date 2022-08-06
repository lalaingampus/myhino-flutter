import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BeritaPromosiView extends GetView {
  @override
  Widget build(BuildContext context) {
    List news = [];

    Future<void> loadCountryData() async {
      try {
        // we can access builtin asset bundle with rootBundle
        final data =
            await rootBundle.loadString("json/mobile/news-management.json");
        news = json.decode(data);
      } catch (e) {
        Get.snackbar("Ops Something Wrong!!", e.toString());
      }
    }

    return Container(
      child: Column(
        children: [
          Container(
            height: 230,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Berita & Promosi",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 180,
                  child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    separatorBuilder: (context, _) => SizedBox(width: 12),
                    itemBuilder: (context, index) =>
                        // Start::Berita Card
                        Container(
                      width: 140,
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                              aspectRatio: 3.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/mobile/images/avatar.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Sub Title",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Title",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    // End:: Berita Card
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
