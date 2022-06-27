import 'package:get/get.dart';

import '../models/booking_status_model.dart';

class BookingStatusProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return BookingStatus.fromJson(map);
      if (map is List)
        return map.map((item) => BookingStatus.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<BookingStatus?> getBookingStatus(int id) async {
    final response = await get('bookingstatus/$id');
    return response.body;
  }

  Future<Response<BookingStatus>> postBookingStatus(
          BookingStatus bookingstatus) async =>
      await post('bookingstatus', bookingstatus);
  Future<Response> deleteBookingStatus(int id) async =>
      await delete('bookingstatus/$id');
}
