part of swagger.api;

class GetReportsTenantForViewDto {
  
  ReportsTenantDto? reportsTenant = null;
  

  String? countryName = null;
  

  String? stateName = null;
  

  String? cityName = null;
  
  GetReportsTenantForViewDto();

  @override
  String toString() {
    return 'GetReportsTenantForViewDto[reportsTenant=$reportsTenant, countryName=$countryName, stateName=$stateName, cityName=$cityName, ]';
  }

  GetReportsTenantForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    reportsTenant =
      
      
      new ReportsTenantDto.fromJson(json['reportsTenant'])
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

  static List<GetReportsTenantForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetReportsTenantForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetReportsTenantForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetReportsTenantForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetReportsTenantForViewDto.fromJson(value));
    }
    return map;
  }
}

