part of swagger.api;

class OtherSettingsEditDto {
  
  bool isQuickThemeSelectEnabled = null;
  
  OtherSettingsEditDto();

  @override
  String toString() {
    return 'OtherSettingsEditDto[isQuickThemeSelectEnabled=$isQuickThemeSelectEnabled, ]';
  }

  OtherSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isQuickThemeSelectEnabled =
        json['isQuickThemeSelectEnabled']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isQuickThemeSelectEnabled': isQuickThemeSelectEnabled
     };
  }

  static List<OtherSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<OtherSettingsEditDto>() : json.map((value) => new OtherSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, OtherSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OtherSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OtherSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

