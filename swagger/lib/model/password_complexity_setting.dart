part of swagger.api;

class PasswordComplexitySetting {
  
  bool requireDigit = null;
  

  bool requireLowercase = null;
  

  bool requireNonAlphanumeric = null;
  

  bool requireUppercase = null;
  

  int requiredLength = null;
  
  PasswordComplexitySetting();

  @override
  String toString() {
    return 'PasswordComplexitySetting[requireDigit=$requireDigit, requireLowercase=$requireLowercase, requireNonAlphanumeric=$requireNonAlphanumeric, requireUppercase=$requireUppercase, requiredLength=$requiredLength, ]';
  }

  PasswordComplexitySetting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    requireDigit =
        json['requireDigit']
    ;
    requireLowercase =
        json['requireLowercase']
    ;
    requireNonAlphanumeric =
        json['requireNonAlphanumeric']
    ;
    requireUppercase =
        json['requireUppercase']
    ;
    requiredLength =
        json['requiredLength']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'requireDigit': requireDigit,
      'requireLowercase': requireLowercase,
      'requireNonAlphanumeric': requireNonAlphanumeric,
      'requireUppercase': requireUppercase,
      'requiredLength': requiredLength
     };
  }

  static List<PasswordComplexitySetting> listFromJson(List<dynamic> json) {
    return json == null ? new List<PasswordComplexitySetting>() : json.map((value) => new PasswordComplexitySetting.fromJson(value)).toList();
  }

  static Map<String, PasswordComplexitySetting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PasswordComplexitySetting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PasswordComplexitySetting.fromJson(value));
    }
    return map;
  }
}

