part of swagger.api;

class CreateOrganizationUnitInput {
  
  int parentId = null;
  

  String displayName = null;
  
  CreateOrganizationUnitInput();

  @override
  String toString() {
    return 'CreateOrganizationUnitInput[parentId=$parentId, displayName=$displayName, ]';
  }

  CreateOrganizationUnitInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parentId =
        json['parentId']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'parentId': parentId,
      'displayName': displayName
     };
  }

  static List<CreateOrganizationUnitInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrganizationUnitInput>() : json.map((value) => new CreateOrganizationUnitInput.fromJson(value)).toList();
  }

  static Map<String, CreateOrganizationUnitInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrganizationUnitInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrganizationUnitInput.fromJson(value));
    }
    return map;
  }
}

