part of swagger.api;

class GetStateForViewDto {
  
  StateDto? state = null;
  

  String? countryName = null;
  
  GetStateForViewDto();

  @override
  String toString() {
    return 'GetStateForViewDto[state=$state, countryName=$countryName, ]';
  }

  GetStateForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    state =
      
      
      new StateDto.fromJson(json['state'])
;
    countryName =
        json['countryName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'countryName': countryName
     };
  }

  static List<GetStateForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetStateForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetStateForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetStateForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetStateForViewDto.fromJson(value));
    }
    return map;
  }
}

