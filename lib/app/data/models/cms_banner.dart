// To parse this JSON data, do
//
//     final cmsBanner = cmsBannerFromJson(jsonString);

import 'dart:convert';

List<CmsBanner> cmsBannerFromJson(String str) =>
    List<CmsBanner>.from(json.decode(str).map((x) => CmsBanner.fromJson(x)));

String cmsBannerToJson(List<CmsBanner> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CmsBanner {
  CmsBanner({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory CmsBanner.fromJson(Map<String, dynamic> json) => CmsBanner(
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
    required this.sourceSystemNo,
    required this.image,
    this.imageMobile,
    required this.link,
    required this.cmsStatusIdsId,
    required this.cmsStatusIdsLookupCode,
    required this.sort,
    required this.createdBy,
    required this.updatedBy,
  });

  String sourceSystemNo;
  String image;
  dynamic imageMobile;
  String link;
  int cmsStatusIdsId;
  String cmsStatusIdsLookupCode;
  int sort;
  String createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        sourceSystemNo: json["source-system-no"],
        image: json["image"],
        imageMobile: json["image-mobile"],
        link: json["link"],
        cmsStatusIdsId: json["cms-status-ids-id"],
        cmsStatusIdsLookupCode: json["cms-status-ids-lookup-code"],
        sort: json["sort"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "source-system-no": sourceSystemNo,
        "image": image,
        "image-mobile": imageMobile,
        "link": link,
        "cms-status-ids-id": cmsStatusIdsId,
        "cms-status-ids-lookup-code": cmsStatusIdsLookupCode,
        "sort": sort,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}
