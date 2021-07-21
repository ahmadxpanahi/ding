part of swagger.api;

class CategoryRoleListDto {
  
  String? displayName = null;
  

  String? name = null;
  

  DateTime? addedTime = null;
  

  int? id = null;
  
  CategoryRoleListDto();

  @override
  String toString() {
    return 'CategoryRoleListDto[displayName=$displayName, name=$name, addedTime=$addedTime, id=$id, ]';
  }

  CategoryRoleListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    name =
        json['name']
    ;
    addedTime = json['addedTime'] == null ? null : DateTime.parse(json['addedTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'name': name,
      'addedTime': addedTime == null ? '' : addedTime!.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<CategoryRoleListDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new CategoryRoleListDto.fromJson(value)).toList();
  }

  static Map<String, CategoryRoleListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CategoryRoleListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CategoryRoleListDto.fromJson(value));
    }
    return map;
  }
}

