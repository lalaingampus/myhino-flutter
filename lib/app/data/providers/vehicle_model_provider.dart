import 'package:get/get.dart';

import '../models/vehicle_model_model.dart';

class VehicleModelProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return VehicleModel.fromJson(map);
      if (map is List)
        return map.map((item) => VehicleModel.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<VehicleModel?> getVehicleModel(int id) async {
    final response = await get('vehiclemodel/$id');
    return response.body;
  }

  Future<Response<VehicleModel>> postVehicleModel(
          VehicleModel vehiclemodel) async =>
      await post('vehiclemodel', vehiclemodel);
  Future<Response> deleteVehicleModel(int id) async =>
      await delete('vehiclemodel/$id');
}
