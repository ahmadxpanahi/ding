part of swagger.api;

class AppSettingsJsonDto {
  
  String? webSiteUrl = null;
  

  String? serverSiteUrl = null;
  

  List<NameValue> languages = [];
  
  AppSettingsJsonDto();

  @override
  String toString() {
    return 'AppSettingsJsonDto[webSiteUrl=$webSiteUrl, serverSiteUrl=$serverSiteUrl, languages=$languages, ]';
  }

  AppSettingsJsonDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    webSiteUrl =
        json['webSiteUrl']
    ;
    serverSiteUrl =
        json['serverSiteUrl']
    ;
    languages =
      NameValue.listFromJson(json['languages'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'webSiteUrl': webSiteUrl,
      'serverSiteUrl': serverSiteUrl,
      'languages': languages
     };
  }

  static List<AppSettingsJsonDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<AppSettingsJsonDto>() : json.map((value) => new AppSettingsJsonDto.fromJson(value)).toList();
  }

  static Map<String, AppSettingsJsonDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AppSettingsJsonDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppSettingsJsonDto.fromJson(value));
    }
    return map;
  }
}

