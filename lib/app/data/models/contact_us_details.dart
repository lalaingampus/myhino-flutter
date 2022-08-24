// To parse this JSON data, do
//
//     final contactUsDetail = contactUsDetailFromJson(jsonString);

import 'dart:convert';

List<ContactUsDetail> contactUsDetailFromJson(String str) =>
    List<ContactUsDetail>.from(
        json.decode(str).map((x) => ContactUsDetail.fromJson(x)));

String contactUsDetailToJson(List<ContactUsDetail> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ContactUsDetail {
  ContactUsDetail({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory ContactUsDetail.fromJson(Map<String, dynamic> json) =>
      ContactUsDetail(
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
    required this.title,
    required this.content,
    required this.createdBy,
    required this.updatedBy,
  });

  String title;
  String content;
  String createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        title: json["title"],
        content: json["content"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "content": content,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}
