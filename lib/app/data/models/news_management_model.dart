
@JsonSerializable()
class NewsManagement {
  String? type;
  String? id;
  Class? attributes;
  Class? relationships;

  NewsManagement({this.type, this.id, this.attributes, this.relationships});

  NewsManagement.fromJson(Map<String, dynamic> json) {
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
  String? tittle;
  String? startTime;
  String? endTime;
  int? statusesId;
  String? statusesName;
  String? message;
  String? messageNews;
  int? imagesId;
  bool? imageExist;
  String? imagesUploadedFileName;
  dynamic fileAttachmentsId;
  String? fileAttachmentsUploadedFileName;
  dynamic videoUrl;
  String? createdBy;
  String? updatedBy;
  String? sourceSystemNo;
  dynamic kindNews;
  bool? isExternal;
  dynamic createdByName;
  String? urlFacebook;
  String? urlTwitter;
  String? urlWa;
  String? urlLinkedin;
  String? url;

  Attributes(
      {this.tittle,
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
      this.url});

  Attributes.fromJson(Map<String, dynamic> json) {
    tittle = json['tittle'];
    startTime = json['start-time'];
    endTime = json['end-time'];
    statusesId = json['statuses-id'];
    statusesName = json['statuses-name'];
    message = json['message'];
    messageNews = json['message-news'];
    imagesId = json['images-id'];
    imageExist = json['image-exist'];
    imagesUploadedFileName = json['images-uploaded-file-name'];
    fileAttachmentsId = json['file-attachments-id'];
    fileAttachmentsUploadedFileName =
        json['file-attachments-uploaded-file-name'];
    videoUrl = json['video-url'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
    sourceSystemNo = json['source-system-no'];
    kindNews = json['kind-news'];
    isExternal = json['is-external'];
    createdByName = json['created-by-name'];
    urlFacebook = json['url-facebook'];
    urlTwitter = json['url-twitter'];
    urlWa = json['url-wa'];
    urlLinkedin = json['url-linkedin'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['tittle'] = tittle;
    data['start-time'] = startTime;
    data['end-time'] = endTime;
    data['statuses-id'] = statusesId;
    data['statuses-name'] = statusesName;
    data['message'] = message;
    data['message-news'] = messageNews;
    data['images-id'] = imagesId;
    data['image-exist'] = imageExist;
    data['images-uploaded-file-name'] = imagesUploadedFileName;
    data['file-attachments-id'] = fileAttachmentsId;
    data['file-attachments-uploaded-file-name'] =
        fileAttachmentsUploadedFileName;
    data['video-url'] = videoUrl;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    data['source-system-no'] = sourceSystemNo;
    data['kind-news'] = kindNews;
    data['is-external'] = isExternal;
    data['created-by-name'] = createdByName;
    data['url-facebook'] = urlFacebook;
    data['url-twitter'] = urlTwitter;
    data['url-wa'] = urlWa;
    data['url-linkedin'] = urlLinkedin;
    data['url'] = url;
    return data;
  }
}

@JsonSerializable()
class Relationships {
  Class? status;
  Class? image;
  Class? fileAttachment;

  Relationships({this.status, this.image, this.fileAttachment});

  Relationships.fromJson(Map<String, dynamic> json) {
    status = json['status'] != null ? Class?.fromJson(json['status']) : null;
    image = json['image'] != null ? Class?.fromJson(json['image']) : null;
    fileAttachment = json['file-attachment'] != null
        ? Class?.fromJson(json['file-attachment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status.toJson();
    }
    if (image != null) {
      data['image'] = image.toJson();
    }
    if (fileAttachment != null) {
      data['file-attachment'] = fileAttachment.toJson();
    }
    return data;
  }
}

class Status {
  dynamic data;

  Status({this.data});

  Status.fromJson(Map<String, dynamic> json) {
    data = json['data'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['data'] = data;
    return data;
  }
}
