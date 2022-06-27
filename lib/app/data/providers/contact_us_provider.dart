import 'package:get/get.dart';

import '../models/contact_us_model.dart';

class ContactUsProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return ContactUs.fromJson(map);
      if (map is List)
        return map.map((item) => ContactUs.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<ContactUs?> getContactUs(int id) async {
    final response = await get('contactus/$id');
    return response.body;
  }

  Future<Response<ContactUs>> postContactUs(ContactUs contactus) async =>
      await post('contactus', contactus);
  Future<Response> deleteContactUs(int id) async =>
      await delete('contactus/$id');
}
