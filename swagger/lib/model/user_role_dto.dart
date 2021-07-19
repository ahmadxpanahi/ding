part of swagger.api;

class UserRoleDto {
  
  int roleId = null;
  

  String roleName = null;
  

  String roleDisplayName = null;
  

  bool isAssigned = null;
  

  bool inheritedFromOrganizationUnit = null;
  
  UserRoleDto();

  @override
  String toString() {
    return 'UserRoleDto[roleId=$roleId, roleName=$roleName, roleDisplayName=$roleDisplayName, isAssigned=$isAssigned, inheritedFromOrganizationUnit=$inheritedFromOrganizationUnit, ]';
  }

  UserRoleDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    roleId =
        json['roleId']
    ;
    roleName =
        json['roleName']
    ;
    roleDisplayName =
        json['roleDisplayName']
    ;
    isAssigned =
        json['isAssigned']
    ;
    inheritedFromOrganizationUnit =
        json['inheritedFromOrganizationUnit']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'roleId': roleId,
      'roleName': roleName,
      'roleDisplayName': roleDisplayName,
      'isAssigned': isAssigned,
      'inheritedFromOrganizationUnit': inheritedFromOrganizationUnit
     };
  }

  static List<UserRoleDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserRoleDto>() : json.map((value) => new UserRoleDto.fromJson(value)).toList();
  }

  static Map<String, UserRoleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserRoleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserRoleDto.fromJson(value));
    }
    return map;
  }
}

