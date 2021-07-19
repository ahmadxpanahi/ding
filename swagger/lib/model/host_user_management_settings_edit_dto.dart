part of swagger.api;

class HostUserManagementSettingsEditDto {
  
  bool isEmailConfirmationRequiredForLogin = null;
  

  bool smsVerificationEnabled = null;
  

  bool isCookieConsentEnabled = null;
  

  bool isQuickThemeSelectEnabled = null;
  

  bool useCaptchaOnLogin = null;
  

  bool allowUsingGravatarProfilePicture = null;
  

  SessionTimeOutSettingsEditDto sessionTimeOutSettings = null;
  
  HostUserManagementSettingsEditDto();

  @override
  String toString() {
    return 'HostUserManagementSettingsEditDto[isEmailConfirmationRequiredForLogin=$isEmailConfirmationRequiredForLogin, smsVerificationEnabled=$smsVerificationEnabled, isCookieConsentEnabled=$isCookieConsentEnabled, isQuickThemeSelectEnabled=$isQuickThemeSelectEnabled, useCaptchaOnLogin=$useCaptchaOnLogin, allowUsingGravatarProfilePicture=$allowUsingGravatarProfilePicture, sessionTimeOutSettings=$sessionTimeOutSettings, ]';
  }

  HostUserManagementSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isEmailConfirmationRequiredForLogin =
        json['isEmailConfirmationRequiredForLogin']
    ;
    smsVerificationEnabled =
        json['smsVerificationEnabled']
    ;
    isCookieConsentEnabled =
        json['isCookieConsentEnabled']
    ;
    isQuickThemeSelectEnabled =
        json['isQuickThemeSelectEnabled']
    ;
    useCaptchaOnLogin =
        json['useCaptchaOnLogin']
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
      'isEmailConfirmationRequiredForLogin': isEmailConfirmationRequiredForLogin,
      'smsVerificationEnabled': smsVerificationEnabled,
      'isCookieConsentEnabled': isCookieConsentEnabled,
      'isQuickThemeSelectEnabled': isQuickThemeSelectEnabled,
      'useCaptchaOnLogin': useCaptchaOnLogin,
      'allowUsingGravatarProfilePicture': allowUsingGravatarProfilePicture,
      'sessionTimeOutSettings': sessionTimeOutSettings
     };
  }

  static List<HostUserManagementSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostUserManagementSettingsEditDto>() : json.map((value) => new HostUserManagementSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, HostUserManagementSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HostUserManagementSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HostUserManagementSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

