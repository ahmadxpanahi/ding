part of swagger.api;

class EmailSettingsEditDto {
  
  String? defaultFromAddress = null;
  

  String? defaultFromDisplayName = null;
  

  String? smtpHost = null;
  

  int? smtpPort = null;
  

  String? smtpUserName = null;
  

  String? smtpPassword = null;
  

  String? smtpDomain = null;
  

  bool? smtpEnableSsl = null;
  

  bool? smtpUseDefaultCredentials = null;
  
  EmailSettingsEditDto();

  @override
  String toString() {
    return 'EmailSettingsEditDto[defaultFromAddress=$defaultFromAddress, defaultFromDisplayName=$defaultFromDisplayName, smtpHost=$smtpHost, smtpPort=$smtpPort, smtpUserName=$smtpUserName, smtpPassword=$smtpPassword, smtpDomain=$smtpDomain, smtpEnableSsl=$smtpEnableSsl, smtpUseDefaultCredentials=$smtpUseDefaultCredentials, ]';
  }

  EmailSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
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

  static List<EmailSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmailSettingsEditDto>() : json.map((value) => new EmailSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, EmailSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmailSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmailSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

