
@JsonSerializable()
class CMSBanner {
  String? type;
  String? id;
  Class? attributes;
  Class? relationships;

  CMSBanner({this.type, this.id, this.attributes, this.relationships});

  CMSBanner.fromJson(Map<String, dynamic> json) {
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
  String? sourceSystemNo;
  String? image;
  dynamic imageMobile;
  String? link;
  int? cmsStatusIdsId;
  String? cmsStatusIdsLookupCode;
  int? sort;
  String? createdBy;
  String? updatedBy;

  Attributes(
      {this.sourceSystemNo,
      this.image,
      this.imageMobile,
      this.link,
      this.cmsStatusIdsId,
      this.cmsStatusIdsLookupCode,
      this.sort,
      this.createdBy,
      this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    sourceSystemNo = json['source-system-no'];
    image = json['image'];
    imageMobile = json['image-mobile'];
    link = json['link'];
    cmsStatusIdsId = json['cms-status-ids-id'];
    cmsStatusIdsLookupCode = json['cms-status-ids-lookup-code'];
    sort = json['sort'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['source-system-no'] = sourceSystemNo;
    data['image'] = image;
    data['image-mobile'] = imageMobile;
    data['link'] = link;
    data['cms-status-ids-id'] = cmsStatusIdsId;
    data['cms-status-ids-lookup-code'] = cmsStatusIdsLookupCode;
    data['sort'] = sort;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}

@JsonSerializable()
class Relationships {
  Class? cmsStatus;

  Relationships({this.cmsStatus});

  Relationships.fromJson(Map<String, dynamic> json) {
    cmsStatus =
        json['cms-status'] != null ? Class?.fromJson(json['cms-status']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (cmsStatus != null) {
      data['cms-status'] = cmsStatus.toJson();
    }
    return data;
  }
}

@JsonSerializable()
class CmsStatus {
  dynamic data;

  CmsStatus({this.data});

  CmsStatus.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['data'] = data;
    return data;
  }
}
