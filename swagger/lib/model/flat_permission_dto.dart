part of swagger.api;

class FlatPermissionDto {
  
  String? parentName = null;
  

  String? name = null;
  

  String? displayName = null;
  

  String? description = null;
  

  bool? isGrantedByDefault = null;
  
  FlatPermissionDto();

  @override
  String toString() {
    return 'FlatPermissionDto[parentName=$parentName, name=$name, displayName=$displayName, description=$description, isGrantedByDefault=$isGrantedByDefault, ]';
  }

  FlatPermissionDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
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
      'parentName': parentName,
      'name': name,
      'displayName': displayName,
      'description': description,
      'isGrantedByDefault': isGrantedByDefault
     };
  }

  static List<FlatPermissionDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<FlatPermissionDto>() : json.map((value) => new FlatPermissionDto.fromJson(value)).toList();
  }

  static Map<String, FlatPermissionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FlatPermissionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FlatPermissionDto.fromJson(value));
    }
    return map;
  }
}

