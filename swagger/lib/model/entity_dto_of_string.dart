part of swagger.api;

class EntityDtoOfString {
  
  String? id = null;
  
  EntityDtoOfString();

  @override
  String toString() {
    return 'EntityDtoOfString[id=$id, ]';
  }

  EntityDtoOfString.fromJson(Map<String, dynamic>? json) {
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

  static List<EntityDtoOfString> listFromJson(List<dynamic> json) {
    return json == null ? new List<EntityDtoOfString>() : json.map((value) => new EntityDtoOfString.fromJson(value)).toList();
  }

  static Map<String, EntityDtoOfString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EntityDtoOfString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EntityDtoOfString.fromJson(value));
    }
    return map;
  }
}

