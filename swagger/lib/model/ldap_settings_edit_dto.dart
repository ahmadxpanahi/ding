part of swagger.api;

class LdapSettingsEditDto {
  
  bool? isModuleEnabled = null;
  

  bool? isEnabled = null;
  

  String? domain = null;
  

  String? userName = null;
  

  String? password = null;
  
  LdapSettingsEditDto();

  @override
  String toString() {
    return 'LdapSettingsEditDto[isModuleEnabled=$isModuleEnabled, isEnabled=$isEnabled, domain=$domain, userName=$userName, password=$password, ]';
  }

  LdapSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    isModuleEnabled =
        json['isModuleEnabled']
    ;
    isEnabled =
        json['isEnabled']
    ;
    domain =
        json['domain']
    ;
    userName =
        json['userName']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isModuleEnabled': isModuleEnabled,
      'isEnabled': isEnabled,
      'domain': domain,
      'userName': userName,
      'password': password
     };
  }

  static List<LdapSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<LdapSettingsEditDto>() : json.map((value) => new LdapSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, LdapSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LdapSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LdapSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

