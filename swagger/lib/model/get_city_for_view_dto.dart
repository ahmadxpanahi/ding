part of swagger.api;

class GetCityForViewDto {
  
  CityDto? city = null;
  

  String? stateName = null;
  

  String? countryName = null;
  
  GetCityForViewDto();

  @override
  String toString() {
    return 'GetCityForViewDto[city=$city, stateName=$stateName, countryName=$countryName, ]';
  }

  GetCityForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    city =
      
      
      new CityDto.fromJson(json['city'])
;
    stateName =
        json['stateName']
    ;
    countryName =
        json['countryName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'stateName': stateName,
      'countryName': countryName
     };
  }

  static List<GetCityForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetCityForViewDto>() : json.map((value) => new GetCityForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetCityForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCityForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCityForViewDto.fromJson(value));
    }
    return map;
  }
}

