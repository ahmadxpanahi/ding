part of swagger.api;

class ThemeLayoutSettingsDto {
  
  String? layoutType = null;
  
  ThemeLayoutSettingsDto();

  @override
  String toString() {
    return 'ThemeLayoutSettingsDto[layoutType=$layoutType, ]';
  }

  ThemeLayoutSettingsDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    layoutType =
        json['layoutType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'layoutType': layoutType
     };
  }

  static List<ThemeLayoutSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeLayoutSettingsDto>() : json.map((value) => new ThemeLayoutSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeLayoutSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeLayoutSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeLayoutSettingsDto.fromJson(value));
    }
    return map;
  }
}

