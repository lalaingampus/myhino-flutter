
@JsonSerializable()
class VehicleManagement {
  String? type;
  String? id;
  Class? attributes;
  Class? relationships;

  VehicleManagement({this.type, this.id, this.attributes, this.relationships});

  VehicleManagement.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    attributes =
        json['attributes'] != null ? Class?.fromJson(json['attributes']) : null;
    relationships = json['relationships'] != null
        ? Class?.fromJson(json['relationships'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    if (attributes != null) {
      data['attributes'] = attributes.toJson();
    }
    if (relationships != null) {
      data['relationships'] = relationships.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class Attributes {
  String? inputOption;
  String? plateOrCabinNo;
  String? modelsId;
  String? modelsName;
  dynamic variantName;
  dynamic vehicleColorsId;
  String? vehicleColorsName;
  String? vehicleName;
  dynamic chassisNumber;
  dynamic machineNumber;
  dynamic productionYear;
  dynamic variantsNameCustom;
  String? userManagementsId;
  dynamic otherColor;
  dynamic vehicleColorsNameCustom;
  dynamic vehicleModelName;
  dynamic nomorHandphone;
  dynamic namaLengkap;
  String? catrgoryChildTitle;
  String? seriesName;
  int? seriesId;
  String? imageModel;
  String? createdBy;
  String? updatedBy;

  Attributes(
      {this.inputOption,
      this.plateOrCabinNo,
      this.modelsId,
      this.modelsName,
      this.variantName,
      this.vehicleColorsId,
      this.vehicleColorsName,
      this.vehicleName,
      this.chassisNumber,
      this.machineNumber,
      this.productionYear,
      this.variantsNameCustom,
      this.userManagementsId,
      this.otherColor,
      this.vehicleColorsNameCustom,
      this.vehicleModelName,
      this.nomorHandphone,
      this.namaLengkap,
      this.catrgoryChildTitle,
      this.seriesName,
      this.seriesId,
      this.imageModel,
      this.createdBy,
      this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    inputOption = json['input-option'];
    plateOrCabinNo = json['plate-or-cabin-no'];
    modelsId = json['models-id'];
    modelsName = json['models-name'];
    variantName = json['variant-name'];
    vehicleColorsId = json['vehicle-colors-id'];
    vehicleColorsName = json['vehicle-colors-name'];
    vehicleName = json['vehicle-name'];
    chassisNumber = json['chassis-number'];
    machineNumber = json['machine-number'];
    productionYear = json['production-year'];
    variantsNameCustom = json['variants-name-custom'];
    userManagementsId = json['user-managements-id'];
    otherColor = json['other-color'];
    vehicleColorsNameCustom = json['vehicle-colors-name-custom'];
    vehicleModelName = json['vehicle-model-name'];
    nomorHandphone = json['nomor-handphone'];
    namaLengkap = json['nama-lengkap'];
    catrgoryChildTitle = json['catrgory-child-title'];
    seriesName = json['series-name'];
    seriesId = json['series-id'];
    imageModel = json['image-model'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['input-option'] = inputOption;
    data['plate-or-cabin-no'] = plateOrCabinNo;
    data['models-id'] = modelsId;
    data['models-name'] = modelsName;
    data['variant-name'] = variantName;
    data['vehicle-colors-id'] = vehicleColorsId;
    data['vehicle-colors-name'] = vehicleColorsName;
    data['vehicle-name'] = vehicleName;
    data['chassis-number'] = chassisNumber;
    data['machine-number'] = machineNumber;
    data['production-year'] = productionYear;
    data['variants-name-custom'] = variantsNameCustom;
    data['user-managements-id'] = userManagementsId;
    data['other-color'] = otherColor;
    data['vehicle-colors-name-custom'] = vehicleColorsNameCustom;
    data['vehicle-model-name'] = vehicleModelName;
    data['nomor-handphone'] = nomorHandphone;
    data['nama-lengkap'] = namaLengkap;
    data['catrgory-child-title'] = catrgoryChildTitle;
    data['series-name'] = seriesName;
    data['series-id'] = seriesId;
    data['image-model'] = imageModel;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}

@JsonSerializable()
class Relationships {
  Class? model;

  Relationships({this.model});

  Relationships.fromJson(Map<String, dynamic> json) {
    model = json['model'] != null ? Class?.fromJson(json['model']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (model != null) {
      data['model'] = model.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class Model {
  Class? data;

  Model({this.data});

  Model.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Class?.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['data'] = data.toJson();
    return data;
  }
}

@JsonSerializable()
class Data {
  String? type;
  String? id;

  Data({this.type, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}
