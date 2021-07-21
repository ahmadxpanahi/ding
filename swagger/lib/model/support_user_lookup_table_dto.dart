part of swagger.api;

class SupportUserLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  SupportUserLookupTableDto();

  @override
  String toString() {
    return 'SupportUserLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  SupportUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName
     };
  }

  static List<SupportUserLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new SupportUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, SupportUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupportUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupportUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

