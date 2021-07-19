part of swagger.api;

class HostSettingsEditDto {
  
  GeneralSettingsEditDto general = null;
  

  HostUserManagementSettingsEditDto userManagement = null;
  

  EmailSettingsEditDto email = null;
  

  TenantManagementSettingsEditDto tenantManagement = null;
  

  SecuritySettingsEditDto security = null;
  

  HostBillingSettingsEditDto billing = null;
  

  OtherSettingsEditDto otherSettings = null;
  

  ExternalLoginProviderSettingsEditDto externalLoginProviderSettings = null;
  
  HostSettingsEditDto();

  @override
  String toString() {
    return 'HostSettingsEditDto[general=$general, userManagement=$userManagement, email=$email, tenantManagement=$tenantManagement, security=$security, billing=$billing, otherSettings=$otherSettings, externalLoginProviderSettings=$externalLoginProviderSettings, ]';
  }

  HostSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    general =
      
      
      new GeneralSettingsEditDto.fromJson(json['general'])
;
    userManagement =
      
      
      new HostUserManagementSettingsEditDto.fromJson(json['userManagement'])
;
    email =
      
      
      new EmailSettingsEditDto.fromJson(json['email'])
;
    tenantManagement =
      
      
      new TenantManagementSettingsEditDto.fromJson(json['tenantManagement'])
;
    security =
      
      
      new SecuritySettingsEditDto.fromJson(json['security'])
;
    billing =
      
      
      new HostBillingSettingsEditDto.fromJson(json['billing'])
;
    otherSettings =
      
      
      new OtherSettingsEditDto.fromJson(json['otherSettings'])
;
    externalLoginProviderSettings =
      
      
      new ExternalLoginProviderSettingsEditDto.fromJson(json['externalLoginProviderSettings'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'general': general,
      'userManagement': userManagement,
      'email': email,
      'tenantManagement': tenantManagement,
      'security': security,
      'billing': billing,
      'otherSettings': otherSettings,
      'externalLoginProviderSettings': externalLoginProviderSettings
     };
  }

  static List<HostSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostSettingsEditDto>() : json.map((value) => new HostSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, HostSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HostSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HostSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

