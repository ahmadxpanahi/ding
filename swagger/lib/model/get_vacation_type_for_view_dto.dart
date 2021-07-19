part of swagger.api;

class GetVacationTypeForViewDto {
  
  VacationTypeDto? vacationType = null;
  
  GetVacationTypeForViewDto();

  @override
  String toString() {
    return 'GetVacationTypeForViewDto[vacationType=$vacationType, ]';
  }

  GetVacationTypeForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    vacationType =
      
      
      new VacationTypeDto.fromJson(json['vacationType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'vacationType': vacationType
     };
  }

  static List<GetVacationTypeForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetVacationTypeForViewDto>() : json.map((value) => new GetVacationTypeForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetVacationTypeForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetVacationTypeForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetVacationTypeForViewDto.fromJson(value));
    }
    return map;
  }
}

