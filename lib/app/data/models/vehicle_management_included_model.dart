class VehicleManagementIncluded {
  String? type;
  String? id;
  Class? attributes;

  VehicleManagementIncluded({this.type, this.id, this.attributes});

  VehicleManagementIncluded.fromJson(Map<String, dynamic> json) {
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

class Attributes {
  String? name;
  String? description;
  int? seriesId;
  String? seriesName;
  String? imageModel;
  dynamic createdBy;
  String? updatedBy;

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
