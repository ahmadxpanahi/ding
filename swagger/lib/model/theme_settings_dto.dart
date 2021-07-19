part of swagger.api;

class ThemeSettingsDto {
  
  String? theme = null;
  

  ThemeLayoutSettingsDto? layout = null;
  

  ThemeHeaderSettingsDto? header = null;
  

  ThemeSubHeaderSettingsDto? subHeader = null;
  

  ThemeMenuSettingsDto? menu = null;
  

  ThemeFooterSettingsDto? footer = null;
  
  ThemeSettingsDto();

  @override
  String toString() {
    return 'ThemeSettingsDto[theme=$theme, layout=$layout, header=$header, subHeader=$subHeader, menu=$menu, footer=$footer, ]';
  }

  ThemeSettingsDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    theme =
        json['theme']
    ;
    layout =
      
      
      new ThemeLayoutSettingsDto.fromJson(json['layout'])
;
    header =
      
      
      new ThemeHeaderSettingsDto.fromJson(json['header'])
;
    subHeader =
      
      
      new ThemeSubHeaderSettingsDto.fromJson(json['subHeader'])
;
    menu =
      
      
      new ThemeMenuSettingsDto.fromJson(json['menu'])
;
    footer =
      
      
      new ThemeFooterSettingsDto.fromJson(json['footer'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'theme': theme,
      'layout': layout,
      'header': header,
      'subHeader': subHeader,
      'menu': menu,
      'footer': footer
     };
  }

  static List<ThemeSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeSettingsDto>() : json.map((value) => new ThemeSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeSettingsDto.fromJson(value));
    }
    return map;
  }
}

