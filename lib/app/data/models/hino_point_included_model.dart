
@JsonSerializable()
class HinoPointIncluded {
  String? type;
  String? id;
  Class? attributes;

  HinoPointIncluded({this.type, this.id, this.attributes});

  HinoPointIncluded.fromJson(Map<String, dynamic> json) {
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

@JsonSerializable()
class Attributes {
  String? email;
  String? nomorHandphone;
  String? namaLengkap;
  String? businessSegmentsId;
  String? businessSegmentsName;
  String? jabatanId;
  String? jabatanName;
  String? nomorTlp;
  String? tanggalLahir;
  String? alamat;
  String? long;
  String? lat;
  String? provinsi;
  String? kotaKabupaten;
  String? kecamatan;
  String? kelurahan;
  int? jumlahUnitDutro;
  int? jumlahUnitRanger;
  int? jumlahUnitProfia;
  int? jumlahUnitBus;
  dynamic profilePictures;
  String? profilePicturesId;
  String? profilePicturesOriginalFileName;
  String? profilePicturesUploadedFileName;
  String? lastLogin;
  int? loginCount;
  bool? isNewUser;
  bool? isAccountVerified;
  bool? isEmailValid;
  dynamic employeeNo;
  String? coreUsersId;
  String? coreUsersName;
  dynamic createdBy;
  String? updatedBy;
  String? namaPerusahaan;
  String? password;
  String? confirmPassword;
  String? token;
  bool? isHearts;
  String? referralCode;
  bool? isSso;

  Attributes(
      {this.email,
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
      this.isSso});

  Attributes.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    nomorHandphone = json['nomor-handphone'];
    namaLengkap = json['nama-lengkap'];
    businessSegmentsId = json['business-segments-id'];
    businessSegmentsName = json['business-segments-name'];
    jabatanId = json['jabatan-id'];
    jabatanName = json['jabatan-name'];
    nomorTlp = json['nomor-tlp'];
    tanggalLahir = json['tanggal-lahir'];
    alamat = json['alamat'];
    long = json['long'];
    lat = json['lat'];
    provinsi = json['provinsi'];
    kotaKabupaten = json['kota-kabupaten'];
    kecamatan = json['kecamatan'];
    kelurahan = json['kelurahan'];
    jumlahUnitDutro = json['jumlah-unit-dutro'];
    jumlahUnitRanger = json['jumlah-unit-ranger'];
    jumlahUnitProfia = json['jumlah-unit-profia'];
    jumlahUnitBus = json['jumlah-unit-bus'];
    profilePictures = json['profile-pictures'];
    profilePicturesId = json['profile-pictures-id'];
    profilePicturesOriginalFileName =
        json['profile-pictures-original-file-name'];
    profilePicturesUploadedFileName =
        json['profile-pictures-uploaded-file-name'];
    lastLogin = json['last-login'];
    loginCount = json['login-count'];
    isNewUser = json['is-new-user'];
    isAccountVerified = json['is-account-verified'];
    isEmailValid = json['is-email-valid'];
    employeeNo = json['employee-no'];
    coreUsersId = json['core-users-id'];
    coreUsersName = json['core-users-name'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
    namaPerusahaan = json['nama-perusahaan'];
    password = json['password'];
    confirmPassword = json['confirm-password'];
    token = json['token'];
    isHearts = json['is-hearts'];
    referralCode = json['referral-code'];
    isSso = json['is-sso'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['nomor-handphone'] = nomorHandphone;
    data['nama-lengkap'] = namaLengkap;
    data['business-segments-id'] = businessSegmentsId;
    data['business-segments-name'] = businessSegmentsName;
    data['jabatan-id'] = jabatanId;
    data['jabatan-name'] = jabatanName;
    data['nomor-tlp'] = nomorTlp;
    data['tanggal-lahir'] = tanggalLahir;
    data['alamat'] = alamat;
    data['long'] = long;
    data['lat'] = lat;
    data['provinsi'] = provinsi;
    data['kota-kabupaten'] = kotaKabupaten;
    data['kecamatan'] = kecamatan;
    data['kelurahan'] = kelurahan;
    data['jumlah-unit-dutro'] = jumlahUnitDutro;
    data['jumlah-unit-ranger'] = jumlahUnitRanger;
    data['jumlah-unit-profia'] = jumlahUnitProfia;
    data['jumlah-unit-bus'] = jumlahUnitBus;
    data['profile-pictures'] = profilePictures;
    data['profile-pictures-id'] = profilePicturesId;
    data['profile-pictures-original-file-name'] =
        profilePicturesOriginalFileName;
    data['profile-pictures-uploaded-file-name'] =
        profilePicturesUploadedFileName;
    data['last-login'] = lastLogin;
    data['login-count'] = loginCount;
    data['is-new-user'] = isNewUser;
    data['is-account-verified'] = isAccountVerified;
    data['is-email-valid'] = isEmailValid;
    data['employee-no'] = employeeNo;
    data['core-users-id'] = coreUsersId;
    data['core-users-name'] = coreUsersName;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    data['nama-perusahaan'] = namaPerusahaan;
    data['password'] = password;
    data['confirm-password'] = confirmPassword;
    data['token'] = token;
    data['is-hearts'] = isHearts;
    data['referral-code'] = referralCode;
    data['is-sso'] = isSso;
    return data;
  }
}
