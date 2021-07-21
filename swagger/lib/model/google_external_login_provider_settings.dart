part of swagger.api;

class GoogleExternalLoginProviderSettings {
  
  String? clientId = null;
  

  String? clientSecret = null;
  

  String? userInfoEndpoint = null;
  
  GoogleExternalLoginProviderSettings();

  @override
  String toString() {
    return 'GoogleExternalLoginProviderSettings[clientId=$clientId, clientSecret=$clientSecret, userInfoEndpoint=$userInfoEndpoint, ]';
  }

  GoogleExternalLoginProviderSettings.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    clientId =
        json['clientId']
    ;
    clientSecret =
        json['clientSecret']
    ;
    userInfoEndpoint =
        json['userInfoEndpoint']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'userInfoEndpoint': userInfoEndpoint
     };
  }

  static List<GoogleExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GoogleExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, GoogleExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GoogleExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GoogleExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

