part of swagger.api;

class CacheDto {
  
  String? name = null;
  
  CacheDto();

  @override
  String toString() {
    return 'CacheDto[name=$name, ]';
  }

  CacheDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<CacheDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new CacheDto.fromJson(value)).toList();
  }

  static Map<String, CacheDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CacheDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CacheDto.fromJson(value));
    }
    return map;
  }
}

