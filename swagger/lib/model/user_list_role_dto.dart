part of swagger.api;

class UserListRoleDto {
  
  int? roleId = null;
  

  String? roleName = null;
  
  UserListRoleDto();

  @override
  String toString() {
    return 'UserListRoleDto[roleId=$roleId, roleName=$roleName, ]';
  }

  UserListRoleDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    roleId =
        json['roleId']
    ;
    roleName =
        json['roleName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'roleId': roleId,
      'roleName': roleName
     };
  }

  static List<UserListRoleDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<UserListRoleDto>() : json.map((value) => new UserListRoleDto.fromJson(value)).toList();
  }

  static Map<String, UserListRoleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserListRoleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserListRoleDto.fromJson(value));
    }
    return map;
  }
}

