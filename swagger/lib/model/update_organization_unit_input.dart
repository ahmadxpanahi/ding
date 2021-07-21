part of swagger.api;

class UpdateOrganizationUnitInput {
  
  int? id = null;
   // range from 1 to //

  String? displayName = null;
  
  UpdateOrganizationUnitInput();

  @override
  String toString() {
    return 'UpdateOrganizationUnitInput[id=$id, displayName=$displayName, ]';
  }

  UpdateOrganizationUnitInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName
     };
  }

  static List<UpdateOrganizationUnitInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UpdateOrganizationUnitInput.fromJson(value)).toList();
  }

  static Map<String, UpdateOrganizationUnitInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateOrganizationUnitInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateOrganizationUnitInput.fromJson(value));
    }
    return map;
  }
}

