part of swagger.api;

class ThemeMenuSettingsDto {
  
  String position = null;
  

  String asideSkin = null;
  

  bool fixedAside = null;
  

  bool allowAsideMinimizing = null;
  

  bool defaultMinimizedAside = null;
  

  String submenuToggle = null;
  

  bool searchActive = null;
  

  bool enableSecondary = null;
  

  bool hoverableAside = null;
  
  ThemeMenuSettingsDto();

  @override
  String toString() {
    return 'ThemeMenuSettingsDto[position=$position, asideSkin=$asideSkin, fixedAside=$fixedAside, allowAsideMinimizing=$allowAsideMinimizing, defaultMinimizedAside=$defaultMinimizedAside, submenuToggle=$submenuToggle, searchActive=$searchActive, enableSecondary=$enableSecondary, hoverableAside=$hoverableAside, ]';
  }

  ThemeMenuSettingsDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    position =
        json['position']
    ;
    asideSkin =
        json['asideSkin']
    ;
    fixedAside =
        json['fixedAside']
    ;
    allowAsideMinimizing =
        json['allowAsideMinimizing']
    ;
    defaultMinimizedAside =
        json['defaultMinimizedAside']
    ;
    submenuToggle =
        json['submenuToggle']
    ;
    searchActive =
        json['searchActive']
    ;
    enableSecondary =
        json['enableSecondary']
    ;
    hoverableAside =
        json['hoverableAside']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'position': position,
      'asideSkin': asideSkin,
      'fixedAside': fixedAside,
      'allowAsideMinimizing': allowAsideMinimizing,
      'defaultMinimizedAside': defaultMinimizedAside,
      'submenuToggle': submenuToggle,
      'searchActive': searchActive,
      'enableSecondary': enableSecondary,
      'hoverableAside': hoverableAside
     };
  }

  static List<ThemeMenuSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeMenuSettingsDto>() : json.map((value) => new ThemeMenuSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeMenuSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeMenuSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeMenuSettingsDto.fromJson(value));
    }
    return map;
  }
}

