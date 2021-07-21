part of swagger.api;

class StateCountryLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  StateCountryLookupTableDto();

  @override
  String toString() {
    return 'StateCountryLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  StateCountryLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<StateCountryLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new StateCountryLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, StateCountryLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StateCountryLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StateCountryLookupTableDto.fromJson(value));
    }
    return map;
  }
}

