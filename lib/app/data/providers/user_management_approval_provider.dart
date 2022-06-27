import 'package:get/get.dart';

import '../models/user_management_approval_model.dart';

class UserManagementApprovalProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return UserManagementApproval.fromJson(map);
      if (map is List)
        return map
            .map((item) => UserManagementApproval.fromJson(item))
            .toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<UserManagementApproval?> getUserManagementApproval(int id) async {
    final response = await get('usermanagementapproval/$id');
    return response.body;
  }

  Future<Response<UserManagementApproval>> postUserManagementApproval(
          UserManagementApproval usermanagementapproval) async =>
      await post('usermanagementapproval', usermanagementapproval);
  Future<Response> deleteUserManagementApproval(int id) async =>
      await delete('usermanagementapproval/$id');
}
