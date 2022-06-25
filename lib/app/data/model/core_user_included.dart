import 'dart:convert';

List<CoreUserIncluded> coreUserIncludedFromJson(String str) =>
    List<CoreUserIncluded>.from(
        json.decode(str).map((x) => CoreUserIncluded.fromJson(x)));

String coreUserIncludedToJson(List<CoreUserIncluded> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CoreUserIncluded {
  CoreUserIncluded({
    this.type,
    this.id,
    this.attributes,
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
    this.description,
    this.name,
    this.isSuperUser,
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

  String description;
  String name;
  bool isSuperUser;
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
        description: json["description"] ?? null,
        name: json["name"] ?? null,
        isSuperUser: json["is-super-user"] ?? null,
        email: json["email"] ?? null,
        nomorHandphone: json["nomor-handphone"] ?? null,
        namaLengkap: json["nama-lengkap"] ?? null,
        businessSegmentsId: json["business-segments-id"] ?? null,
        businessSegmentsName: json["business-segments-name"] ?? null,
        jabatanId: json["jabatan-id"] ?? null,
        jabatanName: json["jabatan-name"] ?? null,
        nomorTlp: json["nomor-tlp"] ?? null,
        tanggalLahir: DateTime.parse(json["tanggal-lahir"]) ?? null,
        alamat: json["alamat"] ?? null,
        long: json["long"] ?? null,
        lat: json["lat"] ?? null,
        provinsi: json["provinsi"] ?? null,
        kotaKabupaten: json["kota-kabupaten"] ?? null,
        kecamatan: json["kecamatan"] ?? null,
        kelurahan: json["kelurahan"] ?? null,
        jumlahUnitDutro: json["jumlah-unit-dutro"] ?? null,
        jumlahUnitRanger: json["jumlah-unit-ranger"] ?? null,
        jumlahUnitProfia: json["jumlah-unit-profia"] ?? null,
        jumlahUnitBus: json["jumlah-unit-bus"] ?? null,
        profilePictures: json["profile-pictures"],
        profilePicturesId: json["profile-pictures-id"] ?? null,
        profilePicturesOriginalFileName:
            json["profile-pictures-original-file-name"] ?? null,
        profilePicturesUploadedFileName:
            json["profile-pictures-uploaded-file-name"] ?? null,
        lastLogin: DateTime.parse(json["last-login"]) ?? null,
        loginCount: json["login-count"] ?? null,
        isNewUser: json["is-new-user"] ?? null,
        isAccountVerified: json["is-account-verified"] ?? null,
        isEmailValid: json["is-email-valid"] ?? null,
        employeeNo: json["employee-no"],
        coreUsersId: json["core-users-id"] ?? null,
        coreUsersName: json["core-users-name"] ?? null,
        createdBy: json["created-by"],
        updatedBy: json["updated-by"] ?? null,
        namaPerusahaan: json["nama-perusahaan"] ?? null,
        password: json["password"] ?? null,
        confirmPassword: json["confirm-password"] ?? null,
        token: json["token"] ?? null,
        isHearts: json["is-hearts"] ?? null,
        referralCode: json["referral-code"] ?? null,
        isSso: json["is-sso"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "description": description ?? null,
        "name": name ?? null,
        "is-super-user": isSuperUser ?? null,
        "email": email ?? null,
        "nomor-handphone": nomorHandphone ?? null,
        "nama-lengkap": namaLengkap ?? null,
        "business-segments-id": businessSegmentsId ?? null,
        "business-segments-name": businessSegmentsName ?? null,
        "jabatan-id": jabatanId ?? null,
        "jabatan-name": jabatanName ?? null,
        "nomor-tlp": nomorTlp ?? null,
        "tanggal-lahir":
            "${tanggalLahir.year.toString().padLeft(4, '0')}-${tanggalLahir.month.toString().padLeft(2, '0')}-${tanggalLahir.day.toString().padLeft(2, '0')}" ??
                null,
        "alamat": alamat ?? null,
        "long": long ?? null,
        "lat": lat ?? null,
        "provinsi": provinsi ?? null,
        "kota-kabupaten": kotaKabupaten ?? null,
        "kecamatan": kecamatan ?? null,
        "kelurahan": kelurahan ?? null,
        "jumlah-unit-dutro": jumlahUnitDutro ?? null,
        "jumlah-unit-ranger": jumlahUnitRanger ?? null,
        "jumlah-unit-profia": jumlahUnitProfia ?? null,
        "jumlah-unit-bus": jumlahUnitBus ?? null,
        "profile-pictures": profilePictures,
        "profile-pictures-id": profilePicturesId ?? null,
        "profile-pictures-original-file-name":
            profilePicturesOriginalFileName ?? null,
        "profile-pictures-uploaded-file-name":
            profilePicturesUploadedFileName ?? null,
        "last-login": lastLogin.toIso8601String() ?? null,
        "login-count": loginCount ?? null,
        "is-new-user": isNewUser ?? null,
        "is-account-verified": isAccountVerified ?? null,
        "is-email-valid": isEmailValid ?? null,
        "employee-no": employeeNo,
        "core-users-id": coreUsersId ?? null,
        "core-users-name": coreUsersName ?? null,
        "created-by": createdBy,
        "updated-by": updatedBy ?? null,
        "nama-perusahaan": namaPerusahaan ?? null,
        "password": password ?? null,
        "confirm-password": confirmPassword ?? null,
        "token": token ?? null,
        "is-hearts": isHearts ?? null,
        "referral-code": referralCode ?? null,
        "is-sso": isSso ?? null,
      };
}
