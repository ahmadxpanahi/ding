part of swagger.api;

class FacebookExternalLoginProviderSettings {
  
  String appId = null;
  

  String appSecret = null;
  
  FacebookExternalLoginProviderSettings();

  @override
  String toString() {
    return 'FacebookExternalLoginProviderSettings[appId=$appId, appSecret=$appSecret, ]';
  }

  FacebookExternalLoginProviderSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    appId =
        json['appId']
    ;
    appSecret =
        json['appSecret']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'appId': appId,
      'appSecret': appSecret
     };
  }

  static List<FacebookExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<FacebookExternalLoginProviderSettings>() : json.map((value) => new FacebookExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, FacebookExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FacebookExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FacebookExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

