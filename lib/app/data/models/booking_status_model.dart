
@JsonSerializable()
class BookingStatus {
  String? type;
  String? id;
  Class? attributes;

  BookingStatus({this.type, this.id, this.attributes});

  BookingStatus.fromJson(Map<String, dynamic> json) {
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
  dynamic createdBy;
  dynamic updatedBy;
  String? description;

  Attributes({this.name, this.createdBy, this.updatedBy, this.description});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    data['description'] = description;
    return data;
  }
}
