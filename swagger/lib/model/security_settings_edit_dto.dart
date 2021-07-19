part of swagger.api;

class SecuritySettingsEditDto {
  
  bool allowOneConcurrentLoginPerUser = null;
  

  bool useDefaultPasswordComplexitySettings = null;
  

  PasswordComplexitySetting passwordComplexity = null;
  

  PasswordComplexitySetting defaultPasswordComplexity = null;
  

  UserLockOutSettingsEditDto userLockOut = null;
  

  TwoFactorLoginSettingsEditDto twoFactorLogin = null;
  
  SecuritySettingsEditDto();

  @override
  String toString() {
    return 'SecuritySettingsEditDto[allowOneConcurrentLoginPerUser=$allowOneConcurrentLoginPerUser, useDefaultPasswordComplexitySettings=$useDefaultPasswordComplexitySettings, passwordComplexity=$passwordComplexity, defaultPasswordComplexity=$defaultPasswordComplexity, userLockOut=$userLockOut, twoFactorLogin=$twoFactorLogin, ]';
  }

  SecuritySettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    allowOneConcurrentLoginPerUser =
        json['allowOneConcurrentLoginPerUser']
    ;
    useDefaultPasswordComplexitySettings =
        json['useDefaultPasswordComplexitySettings']
    ;
    passwordComplexity =
      
      
      new PasswordComplexitySetting.fromJson(json['passwordComplexity'])
;
    defaultPasswordComplexity =
      
      
      new PasswordComplexitySetting.fromJson(json['defaultPasswordComplexity'])
;
    userLockOut =
      
      
      new UserLockOutSettingsEditDto.fromJson(json['userLockOut'])
;
    twoFactorLogin =
      
      
      new TwoFactorLoginSettingsEditDto.fromJson(json['twoFactorLogin'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'allowOneConcurrentLoginPerUser': allowOneConcurrentLoginPerUser,
      'useDefaultPasswordComplexitySettings': useDefaultPasswordComplexitySettings,
      'passwordComplexity': passwordComplexity,
      'defaultPasswordComplexity': defaultPasswordComplexity,
      'userLockOut': userLockOut,
      'twoFactorLogin': twoFactorLogin
     };
  }

  static List<SecuritySettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SecuritySettingsEditDto>() : json.map((value) => new SecuritySettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, SecuritySettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SecuritySettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SecuritySettingsEditDto.fromJson(value));
    }
    return map;
  }
}

