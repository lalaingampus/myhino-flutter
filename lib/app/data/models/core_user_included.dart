// To parse this JSON data, do
//
//     final coreUserIncluded = coreUserIncludedFromJson(jsonString);

import 'dart:convert';

CoreUserIncluded coreUserIncludedFromJson(String str) =>
    CoreUserIncluded.fromJson(json.decode(str));

String coreUserIncludedToJson(CoreUserIncluded data) =>
    json.encode(data.toJson());

class CoreUserIncluded {
  CoreUserIncluded({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory CoreUserIncluded.fromJson(Map<String, dynamic> json) =>
      CoreUserIncluded(
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
    required this.email,
    required this.nomorHandphone,
    required this.namaLengkap,
    required this.businessSegmentsId,
    required this.businessSegmentsName,
    required this.jabatanId,
    required this.jabatanName,
    required this.nomorTlp,
    required this.tanggalLahir,
    required this.alamat,
    required this.long,
    required this.lat,
    required this.provinsi,
    required this.kotaKabupaten,
    required this.kecamatan,
    required this.kelurahan,
    required this.jumlahUnitDutro,
    required this.jumlahUnitRanger,
    required this.jumlahUnitProfia,
    required this.jumlahUnitBus,
    this.profilePictures,
    required this.profilePicturesId,
    required this.profilePicturesOriginalFileName,
    required this.profilePicturesUploadedFileName,
    required this.lastLogin,
    required this.loginCount,
    required this.isNewUser,
    required this.isAccountVerified,
    required this.isEmailValid,
    this.employeeNo,
    required this.coreUsersId,
    required this.coreUsersName,
    this.createdBy,
    required this.updatedBy,
    required this.namaPerusahaan,
    required this.password,
    required this.confirmPassword,
    required this.token,
    required this.isHearts,
    required this.referralCode,
    required this.isSso,
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
