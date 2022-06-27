class CoreUser {
  String? type;
  String? id;
  Class? attributes;
  Class? relationships;

  CoreUser({this.type, this.id, this.attributes, this.relationships});

  CoreUser.fromJson(Map<String, dynamic> json) {
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
  String? userId;
  String? name;
  dynamic passwordExpiry;
  dynamic rememberToken;
  String? employeeNo;
  String? roleManagementId;
  dynamic isOnboardingScreen;
  String? password;

  Attributes(
      {this.userId,
      this.name,
      this.passwordExpiry,
      this.rememberToken,
      this.employeeNo,
      this.roleManagementId,
      this.isOnboardingScreen,
      this.password});

  Attributes.fromJson(Map<String, dynamic> json) {
    userId = json['user-id'];
    name = json['name'];
    passwordExpiry = json['password-expiry'];
    rememberToken = json['remember-token'];
    employeeNo = json['employee-no'];
    roleManagementId = json['role-management-id'];
    isOnboardingScreen = json['is-onboarding-screen'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['user-id'] = userId;
    data['name'] = name;
    data['password-expiry'] = passwordExpiry;
    data['remember-token'] = rememberToken;
    data['employee-no'] = employeeNo;
    data['role-management-id'] = roleManagementId;
    data['is-onboarding-screen'] = isOnboardingScreen;
    data['password'] = password;
    return data;
  }
}

class Relationships {
  Class? coreTenant;
  Class? coreLocale;
  Class? coreUserGroup;
  Class? userManagement;

  Relationships(
      {this.coreTenant,
      this.coreLocale,
      this.coreUserGroup,
      this.userManagement});

  Relationships.fromJson(Map<String, dynamic> json) {
    coreTenant = json['core-tenant'] != null
        ? Class?.fromJson(json['core-tenant'])
        : null;
    coreLocale = json['core-locale'] != null
        ? Class?.fromJson(json['core-locale'])
        : null;
    coreUserGroup = json['core-user-group'] != null
        ? Class?.fromJson(json['core-user-group'])
        : null;
    userManagement = json['user-management'] != null
        ? Class?.fromJson(json['user-management'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (coreTenant != null) {
      data['core-tenant'] = coreTenant.toJson();
    }
    if (coreLocale != null) {
      data['core-locale'] = coreLocale.toJson();
    }
    if (coreUserGroup != null) {
      data['core-user-group'] = coreUserGroup.toJson();
    }
    if (userManagement != null) {
      data['user-management'] = userManagement.toJson();
    }
    return data;
  }
}

class CoreTenant {
  Class? data;

  CoreTenant({this.data});

  CoreTenant.fromJson(Map<String, dynamic> json) {
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

class UserManagement {
  List<Data>? data;

  UserManagement({this.data});

  UserManagement.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (data != null) {
      data['data'] = data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
