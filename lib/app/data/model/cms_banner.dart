import 'dart:convert';

List<CmsBanner> cmsBannerFromJson(String str) =>
    List<CmsBanner>.from(json.decode(str).map((x) => CmsBanner.fromJson(x)));

String cmsBannerToJson(List<CmsBanner> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CmsBanner {
  CmsBanner({
    this.type,
    this.id,
    this.attributes,
    this.relationships,
  });

  String type;
  String id;
  Attributes attributes;
  Relationships relationships;

  factory CmsBanner.fromJson(Map<String, dynamic> json) => CmsBanner(
        type: json["type"],
        id: json["id"],
        attributes: Attributes.fromJson(json["attributes"]),
        relationships: Relationships.fromJson(json["relationships"]),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "attributes": attributes.toJson(),
        "relationships": relationships.toJson(),
      };
}

class Attributes {
  Attributes({
    this.sourceSystemNo,
    this.image,
    this.imageMobile,
    this.link,
    this.cmsStatusIdsId,
    this.cmsStatusIdsLookupCode,
    this.sort,
    this.createdBy,
    this.updatedBy,
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

class Relationships {
  Relationships({
    this.cmsStatus,
  });

  CmsStatus cmsStatus;

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        cmsStatus: CmsStatus.fromJson(json["cms-status"]),
      );

  Map<String, dynamic> toJson() => {
        "cms-status": cmsStatus.toJson(),
      };
}

class CmsStatus {
  CmsStatus({
    this.data,
  });

  dynamic data;

  factory CmsStatus.fromJson(Map<String, dynamic> json) => CmsStatus(
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}
