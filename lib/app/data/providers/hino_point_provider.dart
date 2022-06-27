import 'package:get/get.dart';

import '../models/hino_point_model.dart';

class HinoPointProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return HinoPoint.fromJson(map);
      if (map is List)
        return map.map((item) => HinoPoint.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<HinoPoint?> getHinoPoint(int id) async {
    final response = await get('hinopoint/$id');
    return response.body;
  }

  Future<Response<HinoPoint>> postHinoPoint(HinoPoint hinopoint) async =>
      await post('hinopoint', hinopoint);
  Future<Response> deleteHinoPoint(int id) async =>
      await delete('hinopoint/$id');
}
