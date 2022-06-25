// To parse this JSON data, do
//
//     final coreUser = coreUserFromJson(jsonString);

import 'dart:convert';

CoreUser coreUserFromJson(String str) => CoreUser.fromJson(json.decode(str));

String coreUserToJson(CoreUser data) => json.encode(data.toJson());

class CoreUser {
  CoreUser({
    this.type,
    this.id,
    this.attributes,
    this.relationships,
  });

  String type;
  String id;
  Attributes attributes;
  Relationships relationships;

  factory CoreUser.fromJson(Map<String, dynamic> json) => CoreUser(
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
    this.userId,
    this.name,
    this.passwordExpiry,
    this.rememberToken,
    this.employeeNo,
    this.roleManagementId,
    this.isOnboardingScreen,
    this.password,
  });

  String userId;
  String name;
  dynamic passwordExpiry;
  dynamic rememberToken;
  String employeeNo;
  String roleManagementId;
  dynamic isOnboardingScreen;
  String password;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        userId: json["user-id"],
        name: json["name"],
        passwordExpiry: json["password-expiry"],
        rememberToken: json["remember-token"],
        employeeNo: json["employee-no"],
        roleManagementId: json["role-management-id"],
        isOnboardingScreen: json["is-onboarding-screen"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "user-id": userId,
        "name": name,
        "password-expiry": passwordExpiry,
        "remember-token": rememberToken,
        "employee-no": employeeNo,
        "role-management-id": roleManagementId,
        "is-onboarding-screen": isOnboardingScreen,
        "password": password,
      };
}

class Relationships {
  Relationships({
    this.coreTenant,
    this.coreLocale,
    this.coreUserGroup,
    this.userManagement,
  });

  Core coreTenant;
  Core coreLocale;
  Core coreUserGroup;
  UserManagement userManagement;

  factory Relationships.fromJson(Map<String, dynamic> json) => Relationships(
        coreTenant: Core.fromJson(json["core-tenant"]),
        coreLocale: Core.fromJson(json["core-locale"]),
        coreUserGroup: Core.fromJson(json["core-user-group"]),
        userManagement: UserManagement.fromJson(json["user-management"]),
      );

  Map<String, dynamic> toJson() => {
        "core-tenant": coreTenant.toJson(),
        "core-locale": coreLocale.toJson(),
        "core-user-group": coreUserGroup.toJson(),
        "user-management": userManagement.toJson(),
      };
}

class Core {
  Core({
    this.data,
  });

  Dat data;

  factory Core.fromJson(Map<String, dynamic> json) => Core(
        data: Dat.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Dat {
  Dat({
    this.type,
    this.id,
  });

  String type;
  String id;

  factory Dat.fromJson(Map<String, dynamic> json) => Dat(
        type: json["type"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
      };
}

class UserManagement {
  UserManagement({
    this.data,
  });

  List<Dat> data;

  factory UserManagement.fromJson(Map<String, dynamic> json) => UserManagement(
        data: List<Dat>.from(json["data"].map((x) => Dat.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}
