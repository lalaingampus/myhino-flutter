import 'package:json_serializable/json_serializable.dart';

@JsonSerializable()
class ContactUsDetails {
  String? type;
  String? id;
  Class? attributes;

  ContactUsDetails({this.type, this.id, this.attributes});

  ContactUsDetails.fromJson(Map<String, dynamic> json) {
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
  String? title;
  String? content;
  String? createdBy;
  String? updatedBy;

  Attributes({this.title, this.content, this.createdBy, this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    content = json['content'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['content'] = content;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}
