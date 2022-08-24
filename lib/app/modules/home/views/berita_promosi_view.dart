import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/berita_promosi_controller.dart';

class BeritaPromosiView extends GetView<BeritaPromosiController> {
  final bc = Get.find<BeritaPromosiController>();

  // String getNewsImage(bc_news, index){
  //   final imageExist = ${bc_news[index].attributes.imageExist};
  //   if(imageExist ){
  //     return 'assets/mobile/images/${bc_news[index].attributes.imagesUploadedFileName}';
  //   }else{
  //     return 'assets/mobile/images/avatar.png';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
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
                Text("banyaknya item ${bc.news.length}"),
                SizedBox(height: 10),
                Container(
                  height: 180,
                  child: ListView.separated(
                    padding: EdgeInsets.all(10),
                    scrollDirection: Axis.horizontal,
                    itemCount: bc.news.length,
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
                                    'assets/mobile/images/${bc.news[index].attributes.imagesUploadedFileName}',
                                    fit: BoxFit.cover),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${bc.news[index].attributes.messageNews}",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 10),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "${bc.news[index].attributes.tittle}",
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
