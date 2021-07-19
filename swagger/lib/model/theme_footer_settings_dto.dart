part of swagger.api;

class ThemeFooterSettingsDto {
  
  bool fixedFooter = null;
  
  ThemeFooterSettingsDto();

  @override
  String toString() {
    return 'ThemeFooterSettingsDto[fixedFooter=$fixedFooter, ]';
  }

  ThemeFooterSettingsDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fixedFooter =
        json['fixedFooter']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fixedFooter': fixedFooter
     };
  }

  static List<ThemeFooterSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeFooterSettingsDto>() : json.map((value) => new ThemeFooterSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeFooterSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeFooterSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeFooterSettingsDto.fromJson(value));
    }
    return map;
  }
}

