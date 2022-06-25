// To parse this JSON data, do
//
//     final userManagementApproveIncluded = userManagementApproveIncludedFromJson(jsonString);

import 'dart:convert';

List<UserManagementApproveIncluded> userManagementApproveIncludedFromJson(
        String str) =>
    List<UserManagementApproveIncluded>.from(
        json.decode(str).map((x) => UserManagementApproveIncluded.fromJson(x)));

String userManagementApproveIncludedToJson(
        List<UserManagementApproveIncluded> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class UserManagementApproveIncluded {
  UserManagementApproveIncluded({
    this.type,
    this.id,
    this.attributes,
  });

  String type;
  String id;
  Attributes attributes;

  factory UserManagementApproveIncluded.fromJson(Map<String, dynamic> json) =>
      UserManagementApproveIncluded(
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
    this.name,
    this.createdBy,
    this.updatedBy,
    this.userId,
    this.passwordExpiry,
    this.rememberToken,
    this.employeeNo,
    this.roleManagementId,
    this.isOnboardingScreen,
    this.password,
  });

  String name;
  String createdBy;
  String updatedBy;
  String userId;
  dynamic passwordExpiry;
  dynamic rememberToken;
  String employeeNo;
  String roleManagementId;
  dynamic isOnboardingScreen;
  String password;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
        name: json["name"],
        createdBy: json["created-by"] ?? null,
        updatedBy: json["updated-by"] ?? null,
        userId: json["user-id"] ?? null,
        passwordExpiry: json["password-expiry"],
        rememberToken: json["remember-token"],
        employeeNo: json["employee-no"] ?? null,
        roleManagementId: json["role-management-id"] ?? null,
        isOnboardingScreen: json["is-onboarding-screen"],
        password: json["password"] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "created-by": createdBy ?? null,
        "updated-by": updatedBy ?? null,
        "user-id": userId ?? null,
        "password-expiry": passwordExpiry,
        "remember-token": rememberToken,
        "employee-no": employeeNo ?? null,
        "role-management-id": roleManagementId ?? null,
        "is-onboarding-screen": isOnboardingScreen,
        "password": password ?? null,
      };
}
