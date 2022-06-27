import 'package:get/get.dart';

import '../models/user_management_model.dart';

class UserManagementProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return UserManagement.fromJson(map);
      if (map is List)
        return map.map((item) => UserManagement.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<UserManagement?> getUserManagement(int id) async {
    final response = await get('usermanagement/$id');
    return response.body;
  }

  Future<Response<UserManagement>> postUserManagement(
          UserManagement usermanagement) async =>
      await post('usermanagement', usermanagement);
  Future<Response> deleteUserManagement(int id) async =>
      await delete('usermanagement/$id');
}
