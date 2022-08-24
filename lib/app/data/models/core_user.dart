// To parse this JSON data, do
//
//     final coreUser = coreUserFromJson(jsonString);

import 'dart:convert';

CoreUser coreUserFromJson(String str) => CoreUser.fromJson(json.decode(str));

String coreUserToJson(CoreUser data) => json.encode(data.toJson());

class CoreUser {
  CoreUser({
    required this.type,
    required this.id,
    required this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory CoreUser.fromJson(Map<String, dynamic> json) => CoreUser(
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
    required this.userId,
    required this.name,
    this.passwordExpiry,
    this.rememberToken,
    required this.employeeNo,
    required this.roleManagementId,
    this.isOnboardingScreen,
    required this.password,
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
