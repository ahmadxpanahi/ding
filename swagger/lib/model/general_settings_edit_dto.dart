part of swagger.api;

class GeneralSettingsEditDto {
  
  String? timezone = null;
  

  String? timezoneForComparison = null;
  
  GeneralSettingsEditDto();

  @override
  String toString() {
    return 'GeneralSettingsEditDto[timezone=$timezone, timezoneForComparison=$timezoneForComparison, ]';
  }

  GeneralSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    timezone =
        json['timezone']
    ;
    timezoneForComparison =
        json['timezoneForComparison']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'timezone': timezone,
      'timezoneForComparison': timezoneForComparison
     };
  }

  static List<GeneralSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GeneralSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, GeneralSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GeneralSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GeneralSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

