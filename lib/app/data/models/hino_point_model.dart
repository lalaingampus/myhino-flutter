class HinoPoint {
  String? type;
  String? id;
  Class? attributes;
  Class? relationships;

  HinoPoint({this.type, this.id, this.attributes, this.relationships});

  HinoPoint.fromJson(Map<String, dynamic> json) {
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

class Attributes {
  String? userNamesId;
  String? userNamesName;
  int? point;
  String? phoneNumberDetail;
  String? alamatEmailDetail;
  dynamic phoneNumber;
  dynamic alamatEmail;
  dynamic namaLengkap;
  String? createdBy;
  String? updatedBy;

  Attributes(
      {this.userNamesId,
      this.userNamesName,
      this.point,
      this.phoneNumberDetail,
      this.alamatEmailDetail,
      this.phoneNumber,
      this.alamatEmail,
      this.namaLengkap,
      this.createdBy,
      this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    userNamesId = json['user-names-id'];
    userNamesName = json['user-names-name'];
    point = json['point'];
    phoneNumberDetail = json['phone-number-detail'];
    alamatEmailDetail = json['alamat-email-detail'];
    phoneNumber = json['phone-number'];
    alamatEmail = json['alamat-email'];
    namaLengkap = json['nama-lengkap'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user-names-id'] = userNamesId;
    data['user-names-name'] = userNamesName;
    data['point'] = point;
    data['phone-number-detail'] = phoneNumberDetail;
    data['alamat-email-detail'] = alamatEmailDetail;
    data['phone-number'] = phoneNumber;
    data['alamat-email'] = alamatEmail;
    data['nama-lengkap'] = namaLengkap;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}

class Relationships {
  Class? coreUser;

  Relationships({this.coreUser});

  Relationships.fromJson(Map<String, dynamic> json) {
    coreUser =
        json['core-user'] != null ? Class?.fromJson(json['core-user']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coreUser != null) {
      data['core-user'] = coreUser.toJson();
    }
    return data;
  }
}

class CoreUser {
  Class? data;

  CoreUser({this.data});

  CoreUser.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Class?.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (data != null) {
      data['data'] = data.toJson();
    }
    return data;
  }
}

class Data {
  String? type;
  String? id;

  Data({this.type, this.id});

  Data.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type;
    data['id'] = id;
    return data;
  }
}
