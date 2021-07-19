part of swagger.api;

class EntityDtoOfGuid {
  
  String id = null;
  
  EntityDtoOfGuid();

  @override
  String toString() {
    return 'EntityDtoOfGuid[id=$id, ]';
  }

  EntityDtoOfGuid.fromJson(Map<String, dynamic> json) {
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

  static List<EntityDtoOfGuid> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntityDtoOfGuid>() : json.map((value) => new EntityDtoOfGuid.fromJson(value)).toList();
  }

  static Map<String, EntityDtoOfGuid> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityDtoOfGuid>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityDtoOfGuid.fromJson(value));
    }
    return map;
  }
}

