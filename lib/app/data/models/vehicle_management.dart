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
    required this.type,
    required this.id,
    required this.attributes,
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
    required this.inputOption,
    required this.plateOrCabinNo,
    required this.modelsId,
    required this.modelsName,
    this.variantName,
    this.vehicleColorsId,
    required this.vehicleColorsName,
    required this.vehicleName,
    this.chassisNumber,
    this.machineNumber,
    this.productionYear,
    this.variantsNameCustom,
    required this.userManagementsId,
    this.otherColor,
    this.vehicleColorsNameCustom,
    this.vehicleModelName,
    this.nomorHandphone,
    this.namaLengkap,
    required this.catrgoryChildTitle,
    required this.seriesName,
    required this.seriesId,
    required this.imageModel,
    required this.createdBy,
    required this.updatedBy,
  });

  String inputOption;
  String plateOrCabinNo;
  String modelsId;
  String modelsName;
  dynamic variantName;
  dynamic vehicleColorsId;
  String vehicleColorsName;
  String vehicleName;
  dynamic chassisNumber;
  dynamic machineNumber;
  dynamic productionYear;
  dynamic variantsNameCustom;
  String userManagementsId;
  dynamic otherColor;
  dynamic vehicleColorsNameCustom;
  dynamic vehicleModelName;
  dynamic nomorHandphone;
  dynamic namaLengkap;
  String catrgoryChildTitle;
  String seriesName;
  int seriesId;
  String imageModel;
  String createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        inputOption: json["input-option"],
        plateOrCabinNo: json["plate-or-cabin-no"],
        modelsId: json["models-id"],
        modelsName: json["models-name"],
        variantName: json["variant-name"],
        vehicleColorsId: json["vehicle-colors-id"],
        vehicleColorsName: json["vehicle-colors-name"],
        vehicleName: json["vehicle-name"],
        chassisNumber: json["chassis-number"],
        machineNumber: json["machine-number"],
        productionYear: json["production-year"],
        variantsNameCustom: json["variants-name-custom"],
        userManagementsId: json["user-managements-id"],
        otherColor: json["other-color"],
        vehicleColorsNameCustom: json["vehicle-colors-name-custom"],
        vehicleModelName: json["vehicle-model-name"],
        nomorHandphone: json["nomor-handphone"],
        namaLengkap: json["nama-lengkap"],
        catrgoryChildTitle: json["catrgory-child-title"],
        seriesName: json["series-name"],
        seriesId: json["series-id"],
        imageModel: json["image-model"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "input-option": inputOption,
        "plate-or-cabin-no": plateOrCabinNo,
        "models-id": modelsId,
        "models-name": modelsName,
        "variant-name": variantName,
        "vehicle-colors-id": vehicleColorsId,
        "vehicle-colors-name": vehicleColorsName,
        "vehicle-name": vehicleName,
        "chassis-number": chassisNumber,
        "machine-number": machineNumber,
        "production-year": productionYear,
        "variants-name-custom": variantsNameCustom,
        "user-managements-id": userManagementsId,
        "other-color": otherColor,
        "vehicle-colors-name-custom": vehicleColorsNameCustom,
        "vehicle-model-name": vehicleModelName,
        "nomor-handphone": nomorHandphone,
        "nama-lengkap": namaLengkap,
        "catrgory-child-title": catrgoryChildTitle,
        "series-name": seriesName,
        "series-id": seriesId,
        "image-model": imageModel,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}
