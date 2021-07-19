part of swagger.api;

class RefreshTokenResult {
  
  String? accessToken = null;
  

  String? encryptedAccessToken = null;
  

  int? expireInSeconds = null;
  
  RefreshTokenResult();

  @override
  String toString() {
    return 'RefreshTokenResult[accessToken=$accessToken, encryptedAccessToken=$encryptedAccessToken, expireInSeconds=$expireInSeconds, ]';
  }

  RefreshTokenResult.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    accessToken =
        json['accessToken']
    ;
    encryptedAccessToken =
        json['encryptedAccessToken']
    ;
    expireInSeconds =
        json['expireInSeconds']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds
     };
  }

  static List<RefreshTokenResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<RefreshTokenResult>() : json.map((value) => new RefreshTokenResult.fromJson(value)).toList();
  }

  static Map<String, RefreshTokenResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RefreshTokenResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RefreshTokenResult.fromJson(value));
    }
    return map;
  }
}

