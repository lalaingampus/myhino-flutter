class UserManagementApproval {
  String? type;
  String? id;
  Class? attributes;

  UserManagementApproval({this.type, this.id, this.attributes});

  UserManagementApproval.fromJson(Map<String, dynamic> json) {
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

class Attributes {
  String? name;
  String? createdBy;
  String? updatedBy;

  Attributes({this.name, this.createdBy, this.updatedBy});

  Attributes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    createdBy = json['created-by'];
    updatedBy = json['updated-by'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['name'] = name;
    data['created-by'] = createdBy;
    data['updated-by'] = updatedBy;
    return data;
  }
}
