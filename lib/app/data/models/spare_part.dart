// To parse this JSON data, do
//
//     final sparePart = sparePartFromJson(jsonString);

import 'dart:convert';

List<SparePart> sparePartFromJson(String str) =>
    List<SparePart>.from(json.decode(str).map((x) => SparePart.fromJson(x)));

String sparePartToJson(List<SparePart> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SparePart {
  SparePart({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory SparePart.fromJson(Map<String, dynamic> json) => SparePart(
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
    required this.itemCode,
    required this.itemName,
    required this.itemClassesId,
    required this.itemClassesName,
    required this.bgHex,
    required this.fontHex,
    this.movingCodesId,
    required this.movingCodesName,
    required this.priceAmount,
    this.coreAttachmentsId,
    required this.coreAttachmentsOriginalFilename,
    this.createdBy,
    this.updatedBy,
    this.imagesId,
    required this.imageExist,
  });

  String itemCode;
  String itemName;
  String itemClassesId;
  String itemClassesName;
  String bgHex;
  String fontHex;
  dynamic movingCodesId;
  String movingCodesName;
  String priceAmount;
  dynamic coreAttachmentsId;
  String coreAttachmentsOriginalFilename;
  dynamic createdBy;
  dynamic updatedBy;
  dynamic imagesId;
  bool imageExist;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        itemCode: json["item-code"],
        itemName: json["item-name"],
        itemClassesId: json["item-classes-id"],
        itemClassesName: json["item-classes-name"],
        bgHex: json["bg-hex"],
        fontHex: json["font-hex"],
        movingCodesId: json["moving-codes-id"],
        movingCodesName: json["moving-codes-name"],
        priceAmount: json["price-amount"],
        coreAttachmentsId: json["core-attachments-id"],
        coreAttachmentsOriginalFilename:
            json["core-attachments-original-filename"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
        imagesId: json["images-id"],
        imageExist: json["image-exist"],
      );

  Map<String, dynamic> toJson() => {
        "item-code": itemCode,
        "item-name": itemName,
        "item-classes-id": itemClassesId,
        "item-classes-name": itemClassesName,
        "bg-hex": bgHex,
        "font-hex": fontHex,
        "moving-codes-id": movingCodesId,
        "moving-codes-name": movingCodesName,
        "price-amount": priceAmount,
        "core-attachments-id": coreAttachmentsId,
        "core-attachments-original-filename": coreAttachmentsOriginalFilename,
        "created-by": createdBy,
        "updated-by": updatedBy,
        "images-id": imagesId,
        "image-exist": imageExist,
      };
}
