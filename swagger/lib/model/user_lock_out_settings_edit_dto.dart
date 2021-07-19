part of swagger.api;

class UserLockOutSettingsEditDto {
  
  bool? isEnabled = null;
  

  int? maxFailedAccessAttemptsBeforeLockout = null;
  

  int? defaultAccountLockoutSeconds = null;
  
  UserLockOutSettingsEditDto();

  @override
  String toString() {
    return 'UserLockOutSettingsEditDto[isEnabled=$isEnabled, maxFailedAccessAttemptsBeforeLockout=$maxFailedAccessAttemptsBeforeLockout, defaultAccountLockoutSeconds=$defaultAccountLockoutSeconds, ]';
  }

  UserLockOutSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    isEnabled =
        json['isEnabled']
    ;
    maxFailedAccessAttemptsBeforeLockout =
        json['maxFailedAccessAttemptsBeforeLockout']
    ;
    defaultAccountLockoutSeconds =
        json['defaultAccountLockoutSeconds']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isEnabled': isEnabled,
      'maxFailedAccessAttemptsBeforeLockout': maxFailedAccessAttemptsBeforeLockout,
      'defaultAccountLockoutSeconds': defaultAccountLockoutSeconds
     };
  }

  static List<UserLockOutSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserLockOutSettingsEditDto>() : json.map((value) => new UserLockOutSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, UserLockOutSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserLockOutSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserLockOutSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

