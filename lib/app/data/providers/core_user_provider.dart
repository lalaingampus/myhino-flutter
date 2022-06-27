import 'package:get/get.dart';

import '../models/core_user_model.dart';

class CoreUserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return CoreUser.fromJson(map);
      if (map is List)
        return map.map((item) => CoreUser.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<CoreUser?> getCoreUser(int id) async {
    final response = await get('coreuser/$id');
    return response.body;
  }

  Future<Response<CoreUser>> postCoreUser(CoreUser coreuser) async =>
      await post('coreuser', coreuser);
  Future<Response> deleteCoreUser(int id) async => await delete('coreuser/$id');
}
