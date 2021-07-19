part of swagger.api;

class InstallDto {
  
  String? connectionString = null;
  

  String? adminPassword = null;
  

  String? webSiteUrl = null;
  

  String? serverUrl = null;
  

  String? defaultLanguage = null;
  

  EmailSettingsEditDto? smtpSettings = null;
  

  HostBillingSettingsEditDto? billInfo = null;
  
  InstallDto();

  @override
  String toString() {
    return 'InstallDto[connectionString=$connectionString, adminPassword=$adminPassword, webSiteUrl=$webSiteUrl, serverUrl=$serverUrl, defaultLanguage=$defaultLanguage, smtpSettings=$smtpSettings, billInfo=$billInfo, ]';
  }

  InstallDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    connectionString =
        json['connectionString']
    ;
    adminPassword =
        json['adminPassword']
    ;
    webSiteUrl =
        json['webSiteUrl']
    ;
    serverUrl =
        json['serverUrl']
    ;
    defaultLanguage =
        json['defaultLanguage']
    ;
    smtpSettings =
      
      
      new EmailSettingsEditDto.fromJson(json['smtpSettings'])
;
    billInfo =
      
      
      new HostBillingSettingsEditDto.fromJson(json['billInfo'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'connectionString': connectionString,
      'adminPassword': adminPassword,
      'webSiteUrl': webSiteUrl,
      'serverUrl': serverUrl,
      'defaultLanguage': defaultLanguage,
      'smtpSettings': smtpSettings,
      'billInfo': billInfo
     };
  }

  static List<InstallDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<InstallDto>() : json.map((value) => new InstallDto.fromJson(value)).toList();
  }

  static Map<String, InstallDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InstallDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InstallDto.fromJson(value));
    }
    return map;
  }
}

