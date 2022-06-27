import 'package:get/get.dart';

import '../models/hino_point_included_model.dart';

class HinoPointIncludedProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return HinoPointIncluded.fromJson(map);
      if (map is List)
        return map.map((item) => HinoPointIncluded.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<HinoPointIncluded?> getHinoPointIncluded(int id) async {
    final response = await get('hinopointincluded/$id');
    return response.body;
  }

  Future<Response<HinoPointIncluded>> postHinoPointIncluded(
          HinoPointIncluded hinopointincluded) async =>
      await post('hinopointincluded', hinopointincluded);
  Future<Response> deleteHinoPointIncluded(int id) async =>
      await delete('hinopointincluded/$id');
}
