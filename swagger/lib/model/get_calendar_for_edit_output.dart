part of swagger.api;

class GetCalendarForEditOutput {
  
  CreateOrEditCalendarDto? calendar = null;
  
  GetCalendarForEditOutput();

  @override
  String toString() {
    return 'GetCalendarForEditOutput[calendar=$calendar, ]';
  }

  GetCalendarForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    calendar =
      
      
      new CreateOrEditCalendarDto.fromJson(json['calendar'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'calendar': calendar
     };
  }

  static List<GetCalendarForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetCalendarForEditOutput>() : json.map((value) => new GetCalendarForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetCalendarForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCalendarForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCalendarForEditOutput.fromJson(value));
    }
    return map;
  }
}

