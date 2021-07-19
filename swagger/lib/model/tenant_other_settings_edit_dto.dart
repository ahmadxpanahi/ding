part of swagger.api;

class TenantOtherSettingsEditDto {
  
  bool isQuickThemeSelectEnabled = null;
  
  TenantOtherSettingsEditDto();

  @override
  String toString() {
    return 'TenantOtherSettingsEditDto[isQuickThemeSelectEnabled=$isQuickThemeSelectEnabled, ]';
  }

  TenantOtherSettingsEditDto.fromJson(Map<String, dynamic> json) {
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

  static List<TenantOtherSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantOtherSettingsEditDto>() : json.map((value) => new TenantOtherSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantOtherSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantOtherSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantOtherSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

