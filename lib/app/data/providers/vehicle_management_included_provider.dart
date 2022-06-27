import 'package:get/get.dart';

import '../models/vehicle_management_included_model.dart';

class VehicleManagementIncludedProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>)
        return VehicleManagementIncluded.fromJson(map);
      if (map is List)
        return map
            .map((item) => VehicleManagementIncluded.fromJson(item))
            .toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<VehicleManagementIncluded?> getVehicleManagementIncluded(
      int id) async {
    final response = await get('VehicleManagementIncluded/$id');
    return response.body;
  }

  Future<Response<VehicleManagementIncluded>> postVehicleManagementIncluded(
          VehicleManagementIncluded VehicleManagementIncluded) async =>
      await post('VehicleManagementIncluded', VehicleManagementIncluded);
  Future<Response> deleteVehicleManagementIncluded(int id) async =>
      await delete('VehicleManagementIncluded/$id');
}
