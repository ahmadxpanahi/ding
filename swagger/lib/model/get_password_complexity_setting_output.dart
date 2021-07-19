part of swagger.api;

class GetPasswordComplexitySettingOutput {
  
  PasswordComplexitySetting? setting = null;
  
  GetPasswordComplexitySettingOutput();

  @override
  String toString() {
    return 'GetPasswordComplexitySettingOutput[setting=$setting, ]';
  }

  GetPasswordComplexitySettingOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    setting =
      
      
      new PasswordComplexitySetting.fromJson(json['setting'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'setting': setting
     };
  }

  static List<GetPasswordComplexitySettingOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetPasswordComplexitySettingOutput>() : json.map((value) => new GetPasswordComplexitySettingOutput.fromJson(value)).toList();
  }

  static Map<String, GetPasswordComplexitySettingOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetPasswordComplexitySettingOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetPasswordComplexitySettingOutput.fromJson(value));
    }
    return map;
  }
}

