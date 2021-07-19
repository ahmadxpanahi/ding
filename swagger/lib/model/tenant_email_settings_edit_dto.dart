part of swagger.api;

class TenantEmailSettingsEditDto {
  
  bool? useHostDefaultEmailSettings = null;
  

  String? defaultFromAddress = null;
  

  String? defaultFromDisplayName = null;
  

  String? smtpHost = null;
  

  int? smtpPort = null;
  

  String? smtpUserName = null;
  

  String? smtpPassword = null;
  

  String? smtpDomain = null;
  

  bool? smtpEnableSsl = null;
  

  bool? smtpUseDefaultCredentials = null;
  
  TenantEmailSettingsEditDto();

  @override
  String toString() {
    return 'TenantEmailSettingsEditDto[useHostDefaultEmailSettings=$useHostDefaultEmailSettings, defaultFromAddress=$defaultFromAddress, defaultFromDisplayName=$defaultFromDisplayName, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpUserName=$smtpUserName, smtpPassword=$smtpPassword, smtpDomain=$smtpDomain, smtpEnableSsl=$smtpEnableSsl, smtpUseDefaultCredentials=$smtpUseDefaultCredentials, ]';
  }

  TenantEmailSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    useHostDefaultEmailSettings =
        json['useHostDefaultEmailSettings']
    ;
    defaultFromAddress =
        json['defaultFromAddress']
    ;
    defaultFromDisplayName =
        json['defaultFromDisplayName']
    ;
    smtpHost =
        json['smtpHost']
    ;
    smtpPort =
        json['smtpPort']
    ;
    smtpUserName =
        json['smtpUserName']
    ;
    smtpPassword =
        json['smtpPassword']
    ;
    smtpDomain =
        json['smtpDomain']
    ;
    smtpEnableSsl =
        json['smtpEnableSsl']
    ;
    smtpUseDefaultCredentials =
        json['smtpUseDefaultCredentials']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'useHostDefaultEmailSettings': useHostDefaultEmailSettings,
      'defaultFromAddress': defaultFromAddress,
      'defaultFromDisplayName': defaultFromDisplayName,
      'smtpHost': smtpHost,
      'smtpPort': smtpPort,
      'smtpUserName': smtpUserName,
      'smtpPassword': smtpPassword,
      'smtpDomain': smtpDomain,
      'smtpEnableSsl': smtpEnableSsl,
      'smtpUseDefaultCredentials': smtpUseDefaultCredentials
     };
  }

  static List<TenantEmailSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantEmailSettingsEditDto>() : json.map((value) => new TenantEmailSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantEmailSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantEmailSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantEmailSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

