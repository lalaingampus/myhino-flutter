import 'package:get/get.dart';

import '../models/cms_banner_model.dart';

class CMSBannerProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return CMSBanner.fromJson(map);
      if (map is List)
        return map.map((item) => CMSBanner.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<CMSBanner?> getCMSBanner(int id) async {
    final response = await get('cmsbanner/$id');
    return response.body;
  }

  Future<Response<CMSBanner>> postCMSBanner(CMSBanner cmsbanner) async =>
      await post('cmsbanner', cmsbanner);
  Future<Response> deleteCMSBanner(int id) async =>
      await delete('cmsbanner/$id');
}
