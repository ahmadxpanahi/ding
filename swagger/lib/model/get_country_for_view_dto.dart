part of swagger.api;

class GetCountryForViewDto {
  
  CountryDto? country = null;
  
  GetCountryForViewDto();

  @override
  String toString() {
    return 'GetCountryForViewDto[country=$country, ]';
  }

  GetCountryForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    country =
      
      
      new CountryDto.fromJson(json['country'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country
     };
  }

  static List<GetCountryForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetCountryForViewDto>() : json.map((value) => new GetCountryForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetCountryForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCountryForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCountryForViewDto.fromJson(value));
    }
    return map;
  }
}

