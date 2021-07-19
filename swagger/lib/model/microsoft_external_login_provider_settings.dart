part of swagger.api;

class MicrosoftExternalLoginProviderSettings {
  
  String clientId = null;
  

  String clientSecret = null;
  
  MicrosoftExternalLoginProviderSettings();

  @override
  String toString() {
    return 'MicrosoftExternalLoginProviderSettings[clientId=$clientId, clientSecret=$clientSecret, ]';
  }

  MicrosoftExternalLoginProviderSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientId =
        json['clientId']
    ;
    clientSecret =
        json['clientSecret']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'clientSecret': clientSecret
     };
  }

  static List<MicrosoftExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<MicrosoftExternalLoginProviderSettings>() : json.map((value) => new MicrosoftExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, MicrosoftExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MicrosoftExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MicrosoftExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

