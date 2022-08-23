// To parse this JSON data, do
//
//     final newsManagement = newsManagementFromJson(jsonString);

import 'dart:convert';

// List<NewsManagement> newsManagementFromJson(String str) =>
//     List<NewsManagement>.from(
//         json.decode(str).map((x) => NewsManagement.fromJson(x)));

String newsManagementToJson(List<NewsManagement> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class NewsManagement {
  NewsManagement({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory NewsManagement.fromJson(Map<String, dynamic> json) => NewsManagement(
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
    required this.tittle,
    required this.startTime,
    required this.endTime,
    required this.statusesId,
    required this.statusesName,
    required this.message,
    required this.messageNews,
    required this.imagesId,
    required this.imageExist,
    required this.imagesUploadedFileName,
    this.fileAttachmentsId,
    required this.fileAttachmentsUploadedFileName,
    required this.videoUrl,
    required this.createdBy,
    required this.updatedBy,
    required this.sourceSystemNo,
    this.kindNews,
    required this.isExternal,
    required this.createdByName,
    required this.urlFacebook,
    required this.urlTwitter,
    required this.urlWa,
    required this.urlLinkedin,
    required this.url,
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
