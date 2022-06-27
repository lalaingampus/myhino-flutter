import 'package:get/get.dart';

import '../models/profile_configuration_model.dart';

class ProfileConfigurationProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return ProfileConfiguration.fromJson(map);
      if (map is List)
        return map.map((item) => ProfileConfiguration.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ProfileConfiguration?> getProfileConfiguration(int id) async {
    final response = await get('profileconfiguration/$id');
    return response.body;
  }

  Future<Response<ProfileConfiguration>> postProfileConfiguration(
          ProfileConfiguration profileconfiguration) async =>
      await post('profileconfiguration', profileconfiguration);
  Future<Response> deleteProfileConfiguration(int id) async =>
      await delete('profileconfiguration/$id');
}
