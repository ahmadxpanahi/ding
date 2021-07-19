part of swagger.api;

class FlatPermissionWithLevelDto {
  
  int? level = null;
  

  String? parentName = null;
  

  String? name = null;
  

  String? displayName = null;
  

  String? description = null;
  

  bool? isGrantedByDefault = null;
  
  FlatPermissionWithLevelDto();

  @override
  String toString() {
    return 'FlatPermissionWithLevelDto[level=$level, parentName=$parentName, name=$name, displayName=$displayName, description=$description, isGrantedByDefault=$isGrantedByDefault, ]';
  }

  FlatPermissionWithLevelDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    level =
        json['level']
    ;
    parentName =
        json['parentName']
    ;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    description =
        json['description']
    ;
    isGrantedByDefault =
        json['isGrantedByDefault']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'level': level,
      'parentName': parentName,
      'name': name,
      'displayName': displayName,
      'description': description,
      'isGrantedByDefault': isGrantedByDefault
     };
  }

  static List<FlatPermissionWithLevelDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<FlatPermissionWithLevelDto>() : json.map((value) => new FlatPermissionWithLevelDto.fromJson(value)).toList();
  }

  static Map<String, FlatPermissionWithLevelDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FlatPermissionWithLevelDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FlatPermissionWithLevelDto.fromJson(value));
    }
    return map;
  }
}

