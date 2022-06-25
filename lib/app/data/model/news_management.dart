// To parse this JSON data, do
//
//     final newsManagement = newsManagementFromJson(jsonString);

import 'dart:convert';

List<NewsManagement> newsManagementFromJson(String str) =>
    List<NewsManagement>.from(
        json.decode(str).map((x) => NewsManagement.fromJson(x)));

String newsManagementToJson(List<NewsManagement> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsManagement {
  NewsManagement({
    this.type,
    this.id,
    this.attributes,
    this.relationships,
  });

  String type;
  String id;
  Attributes attributes;
  Relationships relationships;

  factory NewsManagement.fromJson(Map<String, dynamic> json) => NewsManagement(
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
    this.tittle,
    this.startTime,
    this.endTime,
    this.statusesId,
    this.statusesName,
    this.message,
    this.messageNews,
    this.imagesId,
    this.imageExist,
    this.imagesUploadedFileName,
    this.fileAttachmentsId,
    this.fileAttachmentsUploadedFileName,
    this.videoUrl,
    this.createdBy,
    this.updatedBy,
    this.sourceSystemNo,
    this.kindNews,
    this.isExternal,
    this.createdByName,
    this.urlFacebook,
    this.urlTwitter,
    this.urlWa,
    this.urlLinkedin,
    this.url,
  });

  String tittle;
  DateTime startTime;
  DateTime endTime;
  int statusesId;
  String statusesName;
  String message;
  String messageNews;
  int imagesId;
  bool imageExist;
  String imagesUploadedFileName;
  dynamic fileAttachmentsId;
  String fileAttachmentsUploadedFileName;
  dynamic videoUrl;
  String createdBy;
  String updatedBy;
  String sourceSystemNo;
  dynamic kindNews;
  bool isExternal;
  dynamic createdByName;
  String urlFacebook;
  String urlTwitter;
  String urlWa;
  String urlLinkedin;
  String url;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        tittle: json["tittle"],
        startTime: DateTime.parse(json["start-time"]),
        endTime: DateTime.parse(json["end-time"]),
        statusesId: json["statuses-id"],
        statusesName: json["statuses-name"],
        message: json["message"],
        messageNews: json["message-news"],
        imagesId: json["images-id"],
        imageExist: json["image-exist"],
        imagesUploadedFileName: json["images-uploaded-file-name"],
        fileAttachmentsId: json["file-attachments-id"],
        fileAttachmentsUploadedFileName:
            json["file-attachments-uploaded-file-name"],
        videoUrl: json["video-url"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
        sourceSystemNo: json["source-system-no"],
        kindNews: json["kind-news"],
        isExternal: json["is-external"],
        createdByName: json["created-by-name"],
        urlFacebook: json["url-facebook"],
        urlTwitter: json["url-twitter"],
        urlWa: json["url-wa"],
        urlLinkedin: json["url-linkedin"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "tittle": tittle,
        "start-time": startTime.toIso8601String(),
        "end-time": endTime.toIso8601String(),
        "statuses-id": statusesId,
        "statuses-name": statusesName,
        "message": message,
        "message-news": messageNews,
        "images-id": imagesId,
        "image-exist": imageExist,
        "images-uploaded-file-name": imagesUploadedFileName,
        "file-attachments-id": fileAttachmentsId,
        "file-attachments-uploaded-file-name": fileAttachmentsUploadedFileName,
        "video-url": videoUrl,
        "created-by": createdBy,
        "updated-by": updatedBy,
        "source-system-no": sourceSystemNo,
        "kind-news": kindNews,
        "is-external": isExternal,
        "created-by-name": createdByName,
        "url-facebook": urlFacebook,
        "url-twitter": urlTwitter,
        "url-wa": urlWa,
        "url-linkedin": urlLinkedin,
        "url": url,
      };
}

class Relationships {
  Relationships({
    this.status,
    this.image,
    this.fileAttachment,
  });

  FileAttachment status;
  FileAttachment image;
  FileAttachment fileAttachment;

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        status: FileAttachment.fromJson(json["status"]),
        image: FileAttachment.fromJson(json["image"]),
        fileAttachment: FileAttachment.fromJson(json["file-attachment"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status.toJson(),
        "image": image.toJson(),
        "file-attachment": fileAttachment.toJson(),
      };
}

class FileAttachment {
  FileAttachment({
    this.data,
  });

  dynamic data;

  factory FileAttachment.fromJson(Map<String, dynamic> json) => FileAttachment(
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}
