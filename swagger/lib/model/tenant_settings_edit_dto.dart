part of swagger.api;

class TenantSettingsEditDto {
  
  GeneralSettingsEditDto? general = null;
  

  TenantUserManagementSettingsEditDto? userManagement = null;
  

  TenantEmailSettingsEditDto? email = null;
  

  LdapSettingsEditDto? ldap = null;
  

  SecuritySettingsEditDto? security = null;
  

  TenantBillingSettingsEditDto? billing = null;
  

  TenantFooterSettingsEditDto? footer = null;
  

  TenantFileProtocolSettingsEditDto? fileProtocol = null;
  

  TenantOtherSettingsEditDto? otherSettings = null;
  

  ExternalLoginProviderSettingsEditDto? externalLoginProviderSettings = null;
  
  TenantSettingsEditDto();

  @override
  String toString() {
    return 'TenantSettingsEditDto[general=$general, userManagement=$userManagement, email=$email, ldap=$ldap, security=$security, billing=$billing, footer=$footer, fileProtocol=$fileProtocol, otherSettings=$otherSettings, externalLoginProviderSettings=$externalLoginProviderSettings, ]';
  }

  TenantSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    general =
      
      
      new GeneralSettingsEditDto.fromJson(json['general'])
;
    userManagement =
      
      
      new TenantUserManagementSettingsEditDto.fromJson(json['userManagement'])
;
    email =
      
      
      new TenantEmailSettingsEditDto.fromJson(json['email'])
;
    ldap =
      
      
      new LdapSettingsEditDto.fromJson(json['ldap'])
;
    security =
      
      
      new SecuritySettingsEditDto.fromJson(json['security'])
;
    billing =
      
      
      new TenantBillingSettingsEditDto.fromJson(json['billing'])
;
    footer =
      
      
      new TenantFooterSettingsEditDto.fromJson(json['footer'])
;
    fileProtocol =
      
      
      new TenantFileProtocolSettingsEditDto.fromJson(json['fileProtocol'])
;
    otherSettings =
      
      
      new TenantOtherSettingsEditDto.fromJson(json['otherSettings'])
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
      'ldap': ldap,
      'security': security,
      'billing': billing,
      'footer': footer,
      'fileProtocol': fileProtocol,
      'otherSettings': otherSettings,
      'externalLoginProviderSettings': externalLoginProviderSettings
     };
  }

  static List<TenantSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new TenantSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

