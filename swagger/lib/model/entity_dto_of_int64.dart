part of swagger.api;

class EntityDtoOfInt64 {
  
  int? id = null;
  
  EntityDtoOfInt64();

  @override
  String toString() {
    return 'EntityDtoOfInt64[id=$id, ]';
  }

  EntityDtoOfInt64.fromJson(Map<String, dynamic>? json) {
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

  static List<EntityDtoOfInt64> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntityDtoOfInt64>() : json.map((value) => new EntityDtoOfInt64.fromJson(value)).toList();
  }

  static Map<String, EntityDtoOfInt64> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityDtoOfInt64>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityDtoOfInt64.fromJson(value));
    }
    return map;
  }
}

