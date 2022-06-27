import 'package:get/get.dart';

import '../models/contact_us_details_model.dart';

class ContactUsDetailsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ContactUsDetails.fromJson(map);
      if (map is List)
        return map.map((item) => ContactUsDetails.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ContactUsDetails?> getContactUsDetails(int id) async {
    final response = await get('contactusdetails/$id');
    return response.body;
  }

  Future<Response<ContactUsDetails>> postContactUsDetails(
          ContactUsDetails contactusdetails) async =>
      await post('contactusdetails', contactusdetails);
  Future<Response> deleteContactUsDetails(int id) async =>
      await delete('contactusdetails/$id');
}
