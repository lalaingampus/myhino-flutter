import 'package:json_serializable/json_serializable.dart';

@JsonSerializable()
class CoreUserIncluded {
  String? type;
  String? id;
  Class? attributes;

  CoreUserIncluded({this.type, this.id, this.attributes});

  CoreUserIncluded.fromJson(Map<String, dynamic> json) {
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
  String? description;

  Attributes({this.description});

  Attributes.fromJson(Map<String, dynamic> json) {
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['description'] = description;
    return data;
  }
}
