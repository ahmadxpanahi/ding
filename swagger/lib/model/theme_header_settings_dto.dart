part of swagger.api;

class ThemeHeaderSettingsDto {
  
  bool desktopFixedHeader = null;
  

  bool mobileFixedHeader = null;
  

  String headerSkin = null;
  

  String minimizeDesktopHeaderType = null;
  
  ThemeHeaderSettingsDto();

  @override
  String toString() {
    return 'ThemeHeaderSettingsDto[desktopFixedHeader=$desktopFixedHeader, mobileFixedHeader=$mobileFixedHeader, headerSkin=$headerSkin, minimizeDesktopHeaderType=$minimizeDesktopHeaderType, ]';
  }

  ThemeHeaderSettingsDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    desktopFixedHeader =
        json['desktopFixedHeader']
    ;
    mobileFixedHeader =
        json['mobileFixedHeader']
    ;
    headerSkin =
        json['headerSkin']
    ;
    minimizeDesktopHeaderType =
        json['minimizeDesktopHeaderType']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'desktopFixedHeader': desktopFixedHeader,
      'mobileFixedHeader': mobileFixedHeader,
      'headerSkin': headerSkin,
      'minimizeDesktopHeaderType': minimizeDesktopHeaderType
     };
  }

  static List<ThemeHeaderSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ThemeHeaderSettingsDto>() : json.map((value) => new ThemeHeaderSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ThemeHeaderSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ThemeHeaderSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ThemeHeaderSettingsDto.fromJson(value));
    }
    return map;
  }
}

