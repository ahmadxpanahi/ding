part of swagger.api;

class JsonClaimMapDto {
  
  String? claim = null;
  

  String? key = null;
  
  JsonClaimMapDto();

  @override
  String toString() {
    return 'JsonClaimMapDto[claim=$claim, key=$key, ]';
  }

  JsonClaimMapDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    claim =
        json['claim']
    ;
    key =
        json['key']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'claim': claim,
      'key': key
     };
  }

  static List<JsonClaimMapDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new JsonClaimMapDto.fromJson(value)).toList();
  }

  static Map<String, JsonClaimMapDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JsonClaimMapDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new JsonClaimMapDto.fromJson(value));
    }
    return map;
  }
}

