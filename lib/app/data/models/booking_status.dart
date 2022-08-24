// To parse this JSON data, do
//
//     final bookingStatus = bookingStatusFromJson(jsonString);

import 'dart:convert';

List<BookingStatus> bookingStatusFromJson(String str) =>
    List<BookingStatus>.from(
        json.decode(str).map((x) => BookingStatus.fromJson(x)));

String bookingStatusToJson(List<BookingStatus> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BookingStatus {
  BookingStatus({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory BookingStatus.fromJson(Map<String, dynamic> json) => BookingStatus(
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
    required this.name,
    this.createdBy,
    this.updatedBy,
    required this.description,
  });

  String name;
  dynamic createdBy;
  dynamic updatedBy;
  String description;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        name: json["name"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "created-by": createdBy,
        "updated-by": updatedBy,
        "description": description,
      };
}
