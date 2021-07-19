part of swagger.api;

class UiCustomizationSettingsDto {
  
  ThemeSettingsDto? baseSettings = null;
  

  bool? isLeftMenuUsed = null;
  

  bool? isTopMenuUsed = null;
  

  bool? isTabMenuUsed = null;
  

  bool? allowMenuScroll = null;
  
  UiCustomizationSettingsDto();

  @override
  String toString() {
    return 'UiCustomizationSettingsDto[baseSettings=$baseSettings, isLeftMenuUsed=$isLeftMenuUsed, isTopMenuUsed=$isTopMenuUsed, isTabMenuUsed=$isTabMenuUsed, allowMenuScroll=$allowMenuScroll, ]';
  }

  UiCustomizationSettingsDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    baseSettings =
      
      
      new ThemeSettingsDto.fromJson(json['baseSettings'])
;
    isLeftMenuUsed =
        json['isLeftMenuUsed']
    ;
    isTopMenuUsed =
        json['isTopMenuUsed']
    ;
    isTabMenuUsed =
        json['isTabMenuUsed']
    ;
    allowMenuScroll =
        json['allowMenuScroll']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'baseSettings': baseSettings,
      'isLeftMenuUsed': isLeftMenuUsed,
      'isTopMenuUsed': isTopMenuUsed,
      'isTabMenuUsed': isTabMenuUsed,
      'allowMenuScroll': allowMenuScroll
     };
  }

  static List<UiCustomizationSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UiCustomizationSettingsDto.fromJson(value)).toList();
  }

  static Map<String, UiCustomizationSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UiCustomizationSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UiCustomizationSettingsDto.fromJson(value));
    }
    return map;
  }
}

