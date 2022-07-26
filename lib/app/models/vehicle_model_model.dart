import 'package:json_serializable/json_serializable.dart';

@JsonSerializable()
class VehicleModel {
  String? type;
  String? id;
  Class? attributes;

  VehicleModel({this.type, this.id, this.attributes});

  VehicleModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
    attributes =
        json['attributes'] != null ? Class?.fromJson(json['attributes']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    if (attributes != null) {
      data['attributes'] = attributes.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class Attributes {
  String? name;
  dynamic description;
  dynamic seriesId;
  dynamic seriesName;
  dynamic imageModel;
  dynamic createdBy;
  dynamic updatedBy;

  Attributes(
      {this.name,
      this.description,
      this.seriesId,
      this.seriesName,
      this.imageModel,
      this.createdBy,
      this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    description = json['description'];
    seriesId = json['series-id'];
    seriesName = json['series-name'];
    imageModel = json['image-model'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['description'] = description;
    data['series-id'] = seriesId;
    data['series-name'] = seriesName;
    data['image-model'] = imageModel;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}
