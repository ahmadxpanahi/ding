part of swagger.api;

class GetCalendarForViewDto {
  
  CalendarDto? calendar = null;
  
  GetCalendarForViewDto();

  @override
  String toString() {
    return 'GetCalendarForViewDto[calendar=$calendar, ]';
  }

  GetCalendarForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    calendar =
      
      
      new CalendarDto.fromJson(json['calendar'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'calendar': calendar
     };
  }

  static List<GetCalendarForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetCalendarForViewDto>() : json.map((value) => new GetCalendarForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetCalendarForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCalendarForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCalendarForViewDto.fromJson(value));
    }
    return map;
  }
}

