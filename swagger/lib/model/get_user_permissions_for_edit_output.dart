part of swagger.api;

class GetUserPermissionsForEditOutput {
  
  List<FlatPermissionDto> permissions = [];
  

  List<String> grantedPermissionNames = [];
  
  GetUserPermissionsForEditOutput();

  @override
  String toString() {
    return 'GetUserPermissionsForEditOutput[permissions=$permissions, grantedPermissionNames=$grantedPermissionNames, ]';
  }

  GetUserPermissionsForEditOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    permissions =
      FlatPermissionDto.listFromJson(json['permissions'])
;
    grantedPermissionNames =
        (json['grantedPermissionNames'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'permissions': permissions,
      'grantedPermissionNames': grantedPermissionNames
     };
  }

  static List<GetUserPermissionsForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserPermissionsForEditOutput>() : json.map((value) => new GetUserPermissionsForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetUserPermissionsForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserPermissionsForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserPermissionsForEditOutput.fromJson(value));
    }
    return map;
  }
}

