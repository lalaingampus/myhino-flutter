import 'package:get/get.dart';

import '../models/core_user_included_model.dart';

class CoreUserIncludedProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return CoreUserIncluded.fromJson(map);
      if (map is List)
        return map.map((item) => CoreUserIncluded.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<CoreUserIncluded?> getCoreUserIncluded(int id) async {
    final response = await get('coreuserincluded/$id');
    return response.body;
  }

  Future<Response<CoreUserIncluded>> postCoreUserIncluded(
          CoreUserIncluded coreuserincluded) async =>
      await post('coreuserincluded', coreuserincluded);
  Future<Response> deleteCoreUserIncluded(int id) async =>
      await delete('coreuserincluded/$id');
}
