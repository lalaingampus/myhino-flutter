// To parse this JSON data, do
//
//     final hinoPointIncluded = hinoPointIncludedFromJson(jsonString);

import 'dart:convert';

List<HinoPointIncluded> hinoPointIncludedFromJson(String str) =>
    List<HinoPointIncluded>.from(
        json.decode(str).map((x) => HinoPointIncluded.fromJson(x)));

String hinoPointIncludedToJson(List<HinoPointIncluded> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HinoPointIncluded {
  HinoPointIncluded({
    this.type,
    this.id,
    this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory HinoPointIncluded.fromJson(Map<String, dynamic> json) =>
      HinoPointIncluded(
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
    this.email,
    this.nomorHandphone,
    this.namaLengkap,
    this.businessSegmentsId,
    this.businessSegmentsName,
    this.jabatanId,
    this.jabatanName,
    this.nomorTlp,
    this.tanggalLahir,
    this.alamat,
    this.long,
    this.lat,
    this.provinsi,
    this.kotaKabupaten,
    this.kecamatan,
    this.kelurahan,
    this.jumlahUnitDutro,
    this.jumlahUnitRanger,
    this.jumlahUnitProfia,
    this.jumlahUnitBus,
    this.profilePictures,
    this.profilePicturesId,
    this.profilePicturesOriginalFileName,
    this.profilePicturesUploadedFileName,
    this.lastLogin,
    this.loginCount,
    this.isNewUser,
    this.isAccountVerified,
    this.isEmailValid,
    this.employeeNo,
    this.coreUsersId,
    this.coreUsersName,
    this.createdBy,
    this.updatedBy,
    this.namaPerusahaan,
    this.password,
    this.confirmPassword,
    this.token,
    this.isHearts,
    this.referralCode,
    this.isSso,
  });

  String email;
  String nomorHandphone;
  String namaLengkap;
  String businessSegmentsId;
  String businessSegmentsName;
  String jabatanId;
  String jabatanName;
  String nomorTlp;
  DateTime tanggalLahir;
  String alamat;
  String long;
  String lat;
  String provinsi;
  String kotaKabupaten;
  String kecamatan;
  String kelurahan;
  int jumlahUnitDutro;
  int jumlahUnitRanger;
  int jumlahUnitProfia;
  int jumlahUnitBus;
  dynamic profilePictures;
  String profilePicturesId;
  String profilePicturesOriginalFileName;
  String profilePicturesUploadedFileName;
  DateTime lastLogin;
  int loginCount;
  bool isNewUser;
  bool isAccountVerified;
  bool isEmailValid;
  dynamic employeeNo;
  String coreUsersId;
  String coreUsersName;
  dynamic createdBy;
  String updatedBy;
  String namaPerusahaan;
  String password;
  String confirmPassword;
  String token;
  bool isHearts;
  String referralCode;
  bool isSso;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        email: json["email"],
        nomorHandphone: json["nomor-handphone"],
        namaLengkap: json["nama-lengkap"],
        businessSegmentsId: json["business-segments-id"],
        businessSegmentsName: json["business-segments-name"],
        jabatanId: json["jabatan-id"],
        jabatanName: json["jabatan-name"],
        nomorTlp: json["nomor-tlp"],
        tanggalLahir: DateTime.parse(json["tanggal-lahir"]),
        alamat: json["alamat"],
        long: json["long"],
        lat: json["lat"],
        provinsi: json["provinsi"],
        kotaKabupaten: json["kota-kabupaten"],
        kecamatan: json["kecamatan"],
        kelurahan: json["kelurahan"],
        jumlahUnitDutro: json["jumlah-unit-dutro"],
        jumlahUnitRanger: json["jumlah-unit-ranger"],
        jumlahUnitProfia: json["jumlah-unit-profia"],
        jumlahUnitBus: json["jumlah-unit-bus"],
        profilePictures: json["profile-pictures"],
        profilePicturesId: json["profile-pictures-id"],
        profilePicturesOriginalFileName:
            json["profile-pictures-original-file-name"],
        profilePicturesUploadedFileName:
            json["profile-pictures-uploaded-file-name"],
        lastLogin: DateTime.parse(json["last-login"]),
        loginCount: json["login-count"],
        isNewUser: json["is-new-user"],
        isAccountVerified: json["is-account-verified"],
        isEmailValid: json["is-email-valid"],
        employeeNo: json["employee-no"],
        coreUsersId: json["core-users-id"],
        coreUsersName: json["core-users-name"],
        createdBy: json["created-by"],
        updatedBy: json["updated-by"],
        namaPerusahaan: json["nama-perusahaan"],
        password: json["password"],
        confirmPassword: json["confirm-password"],
        token: json["token"],
        isHearts: json["is-hearts"],
        referralCode: json["referral-code"],
        isSso: json["is-sso"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "nomor-handphone": nomorHandphone,
        "nama-lengkap": namaLengkap,
        "business-segments-id": businessSegmentsId,
        "business-segments-name": businessSegmentsName,
        "jabatan-id": jabatanId,
        "jabatan-name": jabatanName,
        "nomor-tlp": nomorTlp,
        "tanggal-lahir":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}",
        "alamat": alamat,
        "long": long,
        "lat": lat,
        "provinsi": provinsi,
        "kota-kabupaten": kotaKabupaten,
        "kecamatan": kecamatan,
        "kelurahan": kelurahan,
        "jumlah-unit-dutro": jumlahUnitDutro,
        "jumlah-unit-ranger": jumlahUnitRanger,
        "jumlah-unit-profia": jumlahUnitProfia,
        "jumlah-unit-bus": jumlahUnitBus,
        "profile-pictures": profilePictures,
        "profile-pictures-id": profilePicturesId,
        "profile-pictures-original-file-name": profilePicturesOriginalFileName,
        "profile-pictures-uploaded-file-name": profilePicturesUploadedFileName,
        "last-login": lastLogin.toIso8601String(),
        "login-count": loginCount,
        "is-new-user": isNewUser,
        "is-account-verified": isAccountVerified,
        "is-email-valid": isEmailValid,
        "employee-no": employeeNo,
        "core-users-id": coreUsersId,
        "core-users-name": coreUsersName,
        "created-by": createdBy,
        "updated-by": updatedBy,
        "nama-perusahaan": namaPerusahaan,
        "password": password,
        "confirm-password": confirmPassword,
        "token": token,
        "is-hearts": isHearts,
        "referral-code": referralCode,
        "is-sso": isSso,
      };
}
