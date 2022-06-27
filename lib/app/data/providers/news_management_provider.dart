import 'package:get/get.dart';

import '../models/news_management_model.dart';

class NewsManagementProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return NewsManagement.fromJson(map);
      if (map is List)
        return map.map((item) => NewsManagement.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<NewsManagement?> getNewsManagement(int id) async {
    final response = await get('newsmanagement/$id');
    return response.body;
  }

  Future<Response<NewsManagement>> postNewsManagement(
          NewsManagement newsmanagement) async =>
      await post('newsmanagement', newsmanagement);
  Future<Response> deleteNewsManagement(int id) async =>
      await delete('newsmanagement/$id');
}
