part of swagger.api;

class EntityDto {
  
  int? id = null;
  
  EntityDto();

  @override
  String toString() {
    return 'EntityDto[id=$id, ]';
  }

  EntityDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id
     };
  }

  static List<EntityDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EntityDto.fromJson(value)).toList();
  }

  static Map<String, EntityDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityDto.fromJson(value));
    }
    return map;
  }
}

