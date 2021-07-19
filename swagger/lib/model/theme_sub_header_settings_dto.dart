part of swagger.api;

class ThemeSubHeaderSettingsDto {
  
  bool? fixedSubHeader = null;
  

  String? subheaderStyle = null;
  

  int? subheaderSize = null;
  

  String? titleStlye = null;
  

  String? containerStyle = null;
  
  ThemeSubHeaderSettingsDto();

  @override
  String toString() {
    return 'ThemeSubHeaderSettingsDto[fixedSubHeader=$fixedSubHeader, subheaderStyle=$subheaderStyle, subheaderSize=$subheaderSize, titleStlye=$titleStlye, containerStyle=$containerStyle, ]';
  }

  ThemeSubHeaderSettingsDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    fixedSubHeader =
        json['fixedSubHeader']
    ;
    subheaderStyle =
        json['subheaderStyle']
    ;
    subheaderSize =
        json['subheaderSize']
    ;
    titleStlye =
        json['titleStlye']
    ;
    containerStyle =
        json['containerStyle']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fixedSubHeader': fixedSubHeader,
      'subheaderStyle': subheaderStyle,
      'subheaderSize': subheaderSize,
      'titleStlye': titleStlye,
      'containerStyle': containerStyle
     };
  }

  static List<ThemeSubHeaderSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeSubHeaderSettingsDto>() : json.map((value) => new ThemeSubHeaderSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeSubHeaderSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeSubHeaderSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeSubHeaderSettingsDto.fromJson(value));
    }
    return map;
  }
}

