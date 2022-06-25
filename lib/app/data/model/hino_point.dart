import 'dart:convert';

List<HinoPoint> hinoPointFromJson(String str) =>
    List<HinoPoint>.from(json.decode(str).map((x) => HinoPoint.fromJson(x)));

String hinoPointToJson(List<HinoPoint> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HinoPoint {
  HinoPoint({
    this.type,
    this.id,
    this.attributes,
    this.relationships,
  });

  String type;
  String id;
  Attributes attributes;
  Relationships relationships;

  factory HinoPoint.fromJson(Map<String, dynamic> json) => HinoPoint(
        type: json["type"],
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
        relationships: Relationships.fromJson(json["relationships"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
        "relationships": relationships.toJson(),
      };
}

class Attributes {
  Attributes({
    this.userNamesId,
    this.userNamesName,
    this.point,
    this.phoneNumberDetail,
    this.alamatEmailDetail,
    this.phoneNumber,
    this.alamatEmail,
    this.namaLengkap,
    this.createdBy,
    this.updatedBy,
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

class Relationships {
  Relationships({
    this.coreUser,
  });

  CoreUser coreUser;

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        coreUser: CoreUser.fromJson(json["core-user"]),
      );

  Map<String, dynamic> toJson() => {
        "core-user": coreUser.toJson(),
      };
}

class CoreUser {
  CoreUser({
    this.data,
  });

  Data data;

  factory CoreUser.fromJson(Map<String, dynamic> json) => CoreUser(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.type,
    this.id,
  });

  String type;
  String id;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        type: json["type"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
      };
}
