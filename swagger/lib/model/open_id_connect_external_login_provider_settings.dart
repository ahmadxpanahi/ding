part of swagger.api;

class OpenIdConnectExternalLoginProviderSettings {
  
  String clientId = null;
  

  String clientSecret = null;
  

  String authority = null;
  

  String loginUrl = null;
  

  bool validateIssuer = null;
  
  OpenIdConnectExternalLoginProviderSettings();

  @override
  String toString() {
    return 'OpenIdConnectExternalLoginProviderSettings[clientId=$clientId, clientSecret=$clientSecret, authority=$authority, loginUrl=$loginUrl, validateIssuer=$validateIssuer, ]';
  }

  OpenIdConnectExternalLoginProviderSettings.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clientId =
        json['clientId']
    ;
    clientSecret =
        json['clientSecret']
    ;
    authority =
        json['authority']
    ;
    loginUrl =
        json['loginUrl']
    ;
    validateIssuer =
        json['validateIssuer']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'clientSecret': clientSecret,
      'authority': authority,
      'loginUrl': loginUrl,
      'validateIssuer': validateIssuer
     };
  }

  static List<OpenIdConnectExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? new List<OpenIdConnectExternalLoginProviderSettings>() : json.map((value) => new OpenIdConnectExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, OpenIdConnectExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OpenIdConnectExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OpenIdConnectExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

