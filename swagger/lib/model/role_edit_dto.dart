part of swagger.api;

class RoleEditDto {
  
  int? id = null;
  

  String? displayName = null;
  

  bool? isDefault = null;
  
  RoleEditDto();

  @override
  String toString() {
    return 'RoleEditDto[id=$id, displayName=$displayName, isDefault=$isDefault, ]';
  }

  RoleEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
    isDefault =
        json['isDefault']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'isDefault': isDefault
     };
  }

  static List<RoleEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleEditDto>() : json.map((value) => new RoleEditDto.fromJson(value)).toList();
  }

  static Map<String, RoleEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleEditDto.fromJson(value));
    }
    return map;
  }
}

