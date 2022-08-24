import 'dart:developer';
import 'package:get/get.dart';
import 'package:myhino/app/data/models/news_management_model.dart';
import 'package:myhino/app/helpers/dio_client.dart';

class BeritaPromosiController extends GetxController {
  //TODO: Implement BeritaPromosiController

  // ignore: prefer_typing_uninitialized_variables
  List<NewsManagement> news_raw = [];
  late var news = [].obs;

  Future<List<NewsManagement>> loadCountryData() async {
    List<NewsManagement> news = await DioClient().getNews();
    return news;
  }

  @override
  void onInit() async {
    super.onInit();
    news_raw = await loadCountryData();

    news = news_raw.obs;
    // print("ini title ${news[0].attributes.tittle}");
    inspect(news);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
