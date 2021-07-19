part of swagger.api;

class ExternalLoginSettingsDto {
  
  List<String> enabledSocialLoginSettings = [];
  
  ExternalLoginSettingsDto();

  @override
  String toString() {
    return 'ExternalLoginSettingsDto[enabledSocialLoginSettings=$enabledSocialLoginSettings, ]';
  }

  ExternalLoginSettingsDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    enabledSocialLoginSettings =
        (json['enabledSocialLoginSettings'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'enabledSocialLoginSettings': enabledSocialLoginSettings
     };
  }

  static List<ExternalLoginSettingsDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExternalLoginSettingsDto>() : json.map((value) => new ExternalLoginSettingsDto.fromJson(value)).toList();
  }

  static Map<String, ExternalLoginSettingsDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExternalLoginSettingsDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExternalLoginSettingsDto.fromJson(value));
    }
    return map;
  }
}

