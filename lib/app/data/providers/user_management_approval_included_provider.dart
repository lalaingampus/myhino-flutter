import 'package:get/get.dart';

import '../models/user_management_approval_included_model.dart';

class UserManagementApprovalIncludedProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return UserManagementApprovalIncluded.fromJson(map);
      if (map is List)
        return map
            .map((item) => UserManagementApprovalIncluded.fromJson(item))
            .toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<UserManagementApprovalIncluded?> getUserManagementApprovalIncluded(
      int id) async {
    final response = await get('UserManagementApprovalIncluded/$id');
    return response.body;
  }

  Future<Response<UserManagementApprovalIncluded>>
      postUserManagementApprovalIncluded(
              UserManagementApprovalIncluded
                  UserManagementApprovalIncluded) async =>
          await post(
              'UserManagementApprovalIncluded', UserManagementApprovalIncluded);
  Future<Response> deleteUserManagementApprovalIncluded(int id) async =>
      await delete('UserManagementApprovalIncluded/$id');
}
