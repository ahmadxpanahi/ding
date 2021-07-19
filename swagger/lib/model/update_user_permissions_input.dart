part of swagger.api;

class UpdateUserPermissionsInput {
  
  int? id = null;
   // range from 1 to 2147483647//

  List<String> grantedPermissionNames = [];
  
  UpdateUserPermissionsInput();

  @override
  String toString() {
    return 'UpdateUserPermissionsInput[id=$id, grantedPermissionNames=$grantedPermissionNames, ]';
  }

  UpdateUserPermissionsInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    grantedPermissionNames =
        (json['grantedPermissionNames'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'grantedPermissionNames': grantedPermissionNames
     };
  }

  static List<UpdateUserPermissionsInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateUserPermissionsInput>() : json.map((value) => new UpdateUserPermissionsInput.fromJson(value)).toList();
  }

  static Map<String, UpdateUserPermissionsInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateUserPermissionsInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateUserPermissionsInput.fromJson(value));
    }
    return map;
  }
}

