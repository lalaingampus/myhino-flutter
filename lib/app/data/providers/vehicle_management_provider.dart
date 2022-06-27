import 'package:get/get.dart';

import '../models/vehicle_management_model.dart';

class VehicleManagementProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VehicleManagement.fromJson(map);
      if (map is List)
        return map.map((item) => VehicleManagement.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<VehicleManagement?> getVehicleManagement(int id) async {
    final response = await get('vehiclemanagement/$id');
    return response.body;
  }

  Future<Response<VehicleManagement>> postVehicleManagement(
          VehicleManagement vehiclemanagement) async =>
      await post('vehiclemanagement', vehiclemanagement);
  Future<Response> deleteVehicleManagement(int id) async =>
      await delete('vehiclemanagement/$id');
}
