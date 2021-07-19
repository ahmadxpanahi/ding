part of swagger.api;

class CreateOrUpdateRoleInput {
  
  RoleEditDto role = null;
  

  List<String> grantedPermissionNames = [];
  
  CreateOrUpdateRoleInput();

  @override
  String toString() {
    return 'CreateOrUpdateRoleInput[role=$role, grantedPermissionNames=$grantedPermissionNames, ]';
  }

  CreateOrUpdateRoleInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    role =
      
      
      new RoleEditDto.fromJson(json['role'])
;
    grantedPermissionNames =
        (json['grantedPermissionNames'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'grantedPermissionNames': grantedPermissionNames
     };
  }

  static List<CreateOrUpdateRoleInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrUpdateRoleInput>() : json.map((value) => new CreateOrUpdateRoleInput.fromJson(value)).toList();
  }

  static Map<String, CreateOrUpdateRoleInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrUpdateRoleInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrUpdateRoleInput.fromJson(value));
    }
    return map;
  }
}

