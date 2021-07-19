part of swagger.api;

class CityCountryLookupTableDto {
  
  int id = null;
  

  String displayName = null;
  
  CityCountryLookupTableDto();

  @override
  String toString() {
    return 'CityCountryLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  CityCountryLookupTableDto.fromJson(Map<String, dynamic> json) {
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

  static List<CityCountryLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CityCountryLookupTableDto>() : json.map((value) => new CityCountryLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, CityCountryLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CityCountryLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CityCountryLookupTableDto.fromJson(value));
    }
    return map;
  }
}

