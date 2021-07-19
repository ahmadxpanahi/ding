part of swagger.api;

class GetReportsManagerForViewDto {
  
  ReportsManagerDto? reportsTenant = null;
  

  String? countryName = null;
  

  String? stateName = null;
  

  String? cityName = null;
  
  GetReportsManagerForViewDto();

  @override
  String toString() {
    return 'GetReportsManagerForViewDto[reportsTenant=$reportsTenant, countryName=$countryName, stateName=$stateName, cityName=$cityName, ]';
  }

  GetReportsManagerForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    reportsTenant =
      
      
      new ReportsManagerDto.fromJson(json['reportsTenant'])
;
    countryName =
        json['countryName']
    ;
    stateName =
        json['stateName']
    ;
    cityName =
        json['cityName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'reportsTenant': reportsTenant,
      'countryName': countryName,
      'stateName': stateName,
      'cityName': cityName
     };
  }

  static List<GetReportsManagerForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetReportsManagerForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetReportsManagerForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetReportsManagerForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetReportsManagerForViewDto.fromJson(value));
    }
    return map;
  }
}

