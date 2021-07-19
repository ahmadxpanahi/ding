part of swagger.api;

class CityStateLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  CityStateLookupTableDto();

  @override
  String toString() {
    return 'CityStateLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  CityStateLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<CityStateLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new CityStateLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, CityStateLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CityStateLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CityStateLookupTableDto.fromJson(value));
    }
    return map;
  }
}

