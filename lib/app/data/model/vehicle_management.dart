// To parse this JSON data, do
//
//     final vehicleManagement = vehicleManagementFromJson(jsonString);

import 'dart:convert';

List<VehicleManagement> vehicleManagementFromJson(String str) =>
    List<VehicleManagement>.from(
        json.decode(str).map((x) => VehicleManagement.fromJson(x)));

String vehicleManagementToJson(List<VehicleManagement> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VehicleManagement {
  VehicleManagement({
    this.type,
    this.id,
    this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory VehicleManagement.fromJson(Map<String, dynamic> json) =>
      VehicleManagement(
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
    this.name,
    this.description,
    this.seriesId,
    this.seriesName,
    this.imageModel,
    this.createdBy,
    this.updatedBy,
  });

  String name;
  String description;
  int seriesId;
  String seriesName;
  String imageModel;
  dynamic createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        name: json["name"],
        description: json["description"],
        seriesId: json["series-id"],
        seriesName: json["series-name"],
        imageModel: json["image-model"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "series-id": seriesId,
        "series-name": seriesName,
        "image-model": imageModel,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}
