part of swagger.api;

class TenantUserManagementSettingsEditDto {
  
  bool allowSelfRegistration = null;
  

  bool isNewRegisteredUserActiveByDefault = null;
  

  bool isEmailConfirmationRequiredForLogin = null;
  

  bool useCaptchaOnRegistration = null;
  

  bool useCaptchaOnLogin = null;
  

  bool isCookieConsentEnabled = null;
  

  bool isQuickThemeSelectEnabled = null;
  

  bool allowUsingGravatarProfilePicture = null;
  

  SessionTimeOutSettingsEditDto sessionTimeOutSettings = null;
  
  TenantUserManagementSettingsEditDto();

  @override
  String toString() {
    return 'TenantUserManagementSettingsEditDto[allowSelfRegistration=$allowSelfRegistration, isNewRegisteredUserActiveByDefault=$isNewRegisteredUserActiveByDefault, isEmailConfirmationRequiredForLogin=$isEmailConfirmationRequiredForLogin, useCaptchaOnRegistration=$useCaptchaOnRegistration, useCaptchaOnLogin=$useCaptchaOnLogin, isCookieConsentEnabled=$isCookieConsentEnabled, isQuickThemeSelectEnabled=$isQuickThemeSelectEnabled, allowUsingGravatarProfilePicture=$allowUsingGravatarProfilePicture, sessionTimeOutSettings=$sessionTimeOutSettings, ]';
  }

  TenantUserManagementSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowSelfRegistration =
        json['allowSelfRegistration']
    ;
    isNewRegisteredUserActiveByDefault =
        json['isNewRegisteredUserActiveByDefault']
    ;
    isEmailConfirmationRequiredForLogin =
        json['isEmailConfirmationRequiredForLogin']
    ;
    useCaptchaOnRegistration =
        json['useCaptchaOnRegistration']
    ;
    useCaptchaOnLogin =
        json['useCaptchaOnLogin']
    ;
    isCookieConsentEnabled =
        json['isCookieConsentEnabled']
    ;
    isQuickThemeSelectEnabled =
        json['isQuickThemeSelectEnabled']
    ;
    allowUsingGravatarProfilePicture =
        json['allowUsingGravatarProfilePicture']
    ;
    sessionTimeOutSettings =
      
      
      new SessionTimeOutSettingsEditDto.fromJson(json['sessionTimeOutSettings'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'allowSelfRegistration': allowSelfRegistration,
      'isNewRegisteredUserActiveByDefault': isNewRegisteredUserActiveByDefault,
      'isEmailConfirmationRequiredForLogin': isEmailConfirmationRequiredForLogin,
      'useCaptchaOnRegistration': useCaptchaOnRegistration,
      'useCaptchaOnLogin': useCaptchaOnLogin,
      'isCookieConsentEnabled': isCookieConsentEnabled,
      'isQuickThemeSelectEnabled': isQuickThemeSelectEnabled,
      'allowUsingGravatarProfilePicture': allowUsingGravatarProfilePicture,
      'sessionTimeOutSettings': sessionTimeOutSettings
     };
  }

  static List<TenantUserManagementSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantUserManagementSettingsEditDto>() : json.map((value) => new TenantUserManagementSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantUserManagementSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantUserManagementSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantUserManagementSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

