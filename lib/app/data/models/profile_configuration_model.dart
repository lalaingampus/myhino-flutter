class ProfileConfiguration {
  String? type;
  String? id;
  Class? attributes;

  ProfileConfiguration({this.type, this.id, this.attributes});

  ProfileConfiguration.fromJson(Map<String, dynamic> json) {
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
  String? aboutUsImagesId;
  String? aboutUsImagesOriginalFileName;
  Class? aboutUsAttachment;
  String? aboutUsContent;
  String? facebook;
  String? twitter;
  String? instagram;
  String? youtube;
  bool? imageExist;
  String? telematicImagesId;
  String? telematicImagesOriginalFileName;
  String? telematicUrl;
  String? telematicContent;
  dynamic createdBy;
  String? updatedBy;

  Attributes(
      {this.aboutUsImagesId,
      this.aboutUsImagesOriginalFileName,
      this.aboutUsAttachment,
      this.aboutUsContent,
      this.facebook,
      this.twitter,
      this.instagram,
      this.youtube,
      this.imageExist,
      this.telematicImagesId,
      this.telematicImagesOriginalFileName,
      this.telematicUrl,
      this.telematicContent,
      this.createdBy,
      this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    aboutUsImagesId = json['about-us-images-id'];
    aboutUsImagesOriginalFileName = json['about-us-images-original-file-name'];
    aboutUsAttachment = json['about-us-attachment'] != null
        ? Class?.fromJson(json['about-us-attachment'])
        : null;
    aboutUsContent = json['about-us-content'];
    facebook = json['facebook'];
    twitter = json['twitter'];
    instagram = json['instagram'];
    youtube = json['youtube'];
    imageExist = json['image-exist'];
    telematicImagesId = json['telematic-images-id'];
    telematicImagesOriginalFileName =
        json['telematic-images-original-file-name'];
    telematicUrl = json['telematic-url'];
    telematicContent = json['telematic-content'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['about-us-images-id'] = aboutUsImagesId;
    data['about-us-images-original-file-name'] = aboutUsImagesOriginalFileName;
    if (aboutUsAttachment != null) {
      data['about-us-attachment'] = aboutUsAttachment.toJson();
    }
    data['about-us-content'] = aboutUsContent;
    data['facebook'] = facebook;
    data['twitter'] = twitter;
    data['instagram'] = instagram;
    data['youtube'] = youtube;
    data['image-exist'] = imageExist;
    data['telematic-images-id'] = telematicImagesId;
    data['telematic-images-original-file-name'] =
        telematicImagesOriginalFileName;
    data['telematic-url'] = telematicUrl;
    data['telematic-content'] = telematicContent;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}

class AboutUsAttachment {
  int? id;
  String? uploadedFilename;
  String? originalFilename;
  String? fileExtension;
  int? fileSize;
  int? createdBy;
  int? updatedBy;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  dynamic entityId;
  dynamic documentType;
  String? fileContent;

  AboutUsAttachment(
      {this.id,
      this.uploadedFilename,
      this.originalFilename,
      this.fileExtension,
      this.fileSize,
      this.createdBy,
      this.updatedBy,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.entityId,
      this.documentType,
      this.fileContent});

  AboutUsAttachment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    uploadedFilename = json['uploaded_filename'];
    originalFilename = json['original_filename'];
    fileExtension = json['file_extension'];
    fileSize = json['file_size'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    entityId = json['entity_id'];
    documentType = json['document_type'];
    fileContent = json['file_content'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['uploaded_filename'] = uploadedFilename;
    data['original_filename'] = originalFilename;
    data['file_extension'] = fileExtension;
    data['file_size'] = fileSize;
    data['created_by'] = createdBy;
    data['updated_by'] = updatedBy;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['deleted_at'] = deletedAt;
    data['entity_id'] = entityId;
    data['document_type'] = documentType;
    data['file_content'] = fileContent;
    return data;
  }
}
