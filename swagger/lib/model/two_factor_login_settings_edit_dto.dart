part of swagger.api;

class TwoFactorLoginSettingsEditDto {
  
  bool? isEnabledForApplication = null;
  

  bool? isEnabled = null;
  

  bool? isEmailProviderEnabled = null;
  

  bool? isSmsProviderEnabled = null;
  

  bool? isRememberBrowserEnabled = null;
  

  bool? isGoogleAuthenticatorEnabled = null;
  
  TwoFactorLoginSettingsEditDto();

  @override
  String toString() {
    return 'TwoFactorLoginSettingsEditDto[isEnabledForApplication=$isEnabledForApplication, isEnabled=$isEnabled, isEmailProviderEnabled=$isEmailProviderEnabled, isSmsProviderEnabled=$isSmsProviderEnabled, isRememberBrowserEnabled=$isRememberBrowserEnabled, isGoogleAuthenticatorEnabled=$isGoogleAuthenticatorEnabled, ]';
  }

  TwoFactorLoginSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    isEnabledForApplication =
        json['isEnabledForApplication']
    ;
    isEnabled =
        json['isEnabled']
    ;
    isEmailProviderEnabled =
        json['isEmailProviderEnabled']
    ;
    isSmsProviderEnabled =
        json['isSmsProviderEnabled']
    ;
    isRememberBrowserEnabled =
        json['isRememberBrowserEnabled']
    ;
    isGoogleAuthenticatorEnabled =
        json['isGoogleAuthenticatorEnabled']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isEnabledForApplication': isEnabledForApplication,
      'isEnabled': isEnabled,
      'isEmailProviderEnabled': isEmailProviderEnabled,
      'isSmsProviderEnabled': isSmsProviderEnabled,
      'isRememberBrowserEnabled': isRememberBrowserEnabled,
      'isGoogleAuthenticatorEnabled': isGoogleAuthenticatorEnabled
     };
  }

  static List<TwoFactorLoginSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new TwoFactorLoginSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TwoFactorLoginSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TwoFactorLoginSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TwoFactorLoginSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

