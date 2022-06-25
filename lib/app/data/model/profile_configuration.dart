// To parse this JSON data, do
//
//     final profileConfiguration = profileConfigurationFromJson(jsonString);

import 'dart:convert';

List<ProfileConfiguration> profileConfigurationFromJson(String str) =>
    List<ProfileConfiguration>.from(
        json.decode(str).map((x) => ProfileConfiguration.fromJson(x)));

String profileConfigurationToJson(List<ProfileConfiguration> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProfileConfiguration {
  ProfileConfiguration({
    this.type,
    this.id,
    this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory ProfileConfiguration.fromJson(Map<String, dynamic> json) =>
      ProfileConfiguration(
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
    this.aboutUsImagesId,
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
    this.updatedBy,
  });

  String aboutUsImagesId;
  String aboutUsImagesOriginalFileName;
  AboutUsAttachment aboutUsAttachment;
  String aboutUsContent;
  String facebook;
  String twitter;
  String instagram;
  String youtube;
  bool imageExist;
  String telematicImagesId;
  String telematicImagesOriginalFileName;
  String telematicUrl;
  String telematicContent;
  dynamic createdBy;
  String updatedBy;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        aboutUsImagesId: json["about-us-images-id"],
        aboutUsImagesOriginalFileName:
            json["about-us-images-original-file-name"],
        aboutUsAttachment:
            AboutUsAttachment.fromJson(json["about-us-attachment"]),
        aboutUsContent: json["about-us-content"],
        facebook: json["facebook"],
        twitter: json["twitter"],
        instagram: json["instagram"],
        youtube: json["youtube"],
        imageExist: json["image-exist"],
        telematicImagesId: json["telematic-images-id"],
        telematicImagesOriginalFileName:
            json["telematic-images-original-file-name"],
        telematicUrl: json["telematic-url"],
        telematicContent: json["telematic-content"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
      );

  Map<String, dynamic> toJson() => {
        "about-us-images-id": aboutUsImagesId,
        "about-us-images-original-file-name": aboutUsImagesOriginalFileName,
        "about-us-attachment": aboutUsAttachment.toJson(),
        "about-us-content": aboutUsContent,
        "facebook": facebook,
        "twitter": twitter,
        "instagram": instagram,
        "youtube": youtube,
        "image-exist": imageExist,
        "telematic-images-id": telematicImagesId,
        "telematic-images-original-file-name": telematicImagesOriginalFileName,
        "telematic-url": telematicUrl,
        "telematic-content": telematicContent,
        "created-by": createdBy,
        "updated-by": updatedBy,
      };
}

class AboutUsAttachment {
  AboutUsAttachment({
    this.id,
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
    this.fileContent,
  });

  int id;
  String uploadedFilename;
  String originalFilename;
  String fileExtension;
  int fileSize;
  int createdBy;
  int updatedBy;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  dynamic entityId;
  dynamic documentType;
  String fileContent;

  factory AboutUsAttachment.fromJson(Map<String, dynamic> json) =>
      AboutUsAttachment(
        id: json["id"],
        uploadedFilename: json["uploaded_filename"],
        originalFilename: json["original_filename"],
        fileExtension: json["file_extension"],
        fileSize: json["file_size"],
        createdBy: json["created_by"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        entityId: json["entity_id"],
        documentType: json["document_type"],
        fileContent: json["file_content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "uploaded_filename": uploadedFilename,
        "original_filename": originalFilename,
        "file_extension": fileExtension,
        "file_size": fileSize,
        "created_by": createdBy,
        "updated_by": updatedBy,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "deleted_at": deletedAt,
        "entity_id": entityId,
        "document_type": documentType,
        "file_content": fileContent,
      };
}
