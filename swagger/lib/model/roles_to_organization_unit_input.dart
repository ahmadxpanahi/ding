part of swagger.api;

class RolesToOrganizationUnitInput {
  
  List<int> roleIds = [];
  

  int? organizationUnitId = null;
   // range from 1 to //
  RolesToOrganizationUnitInput();

  @override
  String toString() {
    return 'RolesToOrganizationUnitInput[roleIds=$roleIds, organizationUnitId=$organizationUnitId, ]';
  }

  RolesToOrganizationUnitInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    roleIds =
        (json['roleIds'] as List).map((item) => item as int).toList()
    ;
    organizationUnitId =
        json['organizationUnitId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'roleIds': roleIds,
      'organizationUnitId': organizationUnitId
     };
  }

  static List<RolesToOrganizationUnitInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<RolesToOrganizationUnitInput>() : json.map((value) => new RolesToOrganizationUnitInput.fromJson(value)).toList();
  }

  static Map<String, RolesToOrganizationUnitInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RolesToOrganizationUnitInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RolesToOrganizationUnitInput.fromJson(value));
    }
    return map;
  }
}

