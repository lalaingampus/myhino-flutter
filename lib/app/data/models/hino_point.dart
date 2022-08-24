// To parse this JSON data, do
//
//     final hinoPoint = hinoPointFromJson(jsonString);

import 'dart:convert';

List<HinoPoint> hinoPointFromJson(String str) =>
    List<HinoPoint>.from(json.decode(str).map((x) => HinoPoint.fromJson(x)));

String hinoPointToJson(List<HinoPoint> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HinoPoint {
  HinoPoint({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory HinoPoint.fromJson(Map<String, dynamic> json) => HinoPoint(
        type: json["type"],
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class Attributes {
  Attributes({
    required this.userNamesId,
    required this.userNamesName,
    required this.point,
    required this.phoneNumberDetail,
    required this.alamatEmailDetail,
    this.phoneNumber,
    this.alamatEmail,
    this.namaLengkap,
    required this.createdBy,
    required this.updatedBy,
  });

  String userNamesId;
  String userNamesName;
  int point;
  String phoneNumberDetail;
  String alamatEmailDetail;
  dynamic phoneNumber;
  dynamic alamatEmail;
  dynamic namaLengkap;
  String createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        userNamesId: json["user-names-id"],
        userNamesName: json["user-names-name"],
        point: json["point"],
        phoneNumberDetail: json["phone-number-detail"],
        alamatEmailDetail: json["alamat-email-detail"],
        phoneNumber: json["phone-number"],
        alamatEmail: json["alamat-email"],
        namaLengkap: json["nama-lengkap"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "user-names-id": userNamesId,
        "user-names-name": userNamesName,
        "point": point,
        "phone-number-detail": phoneNumberDetail,
        "alamat-email-detail": alamatEmailDetail,
        "phone-number": phoneNumber,
        "alamat-email": alamatEmail,
        "nama-lengkap": namaLengkap,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}
