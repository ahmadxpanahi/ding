part of swagger.api;

class ExternalAuthenticateResultModel {
  
  String accessToken = null;
  

  String encryptedAccessToken = null;
  

  int expireInSeconds = null;
  

  bool waitingForActivation = null;
  

  String returnUrl = null;
  

  String refreshToken = null;
  

  int refreshTokenExpireInSeconds = null;
  
  ExternalAuthenticateResultModel();

  @override
  String toString() {
    return 'ExternalAuthenticateResultModel[accessToken=$accessToken, encryptedAccessToken=$encryptedAccessToken, expireInSeconds=$expireInSeconds, waitingForActivation=$waitingForActivation, returnUrl=$returnUrl, refreshToken=$refreshToken, refreshTokenExpireInSeconds=$refreshTokenExpireInSeconds, ]';
  }

  ExternalAuthenticateResultModel.fromJson(Map<String, dynamic> json) {
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
    waitingForActivation =
        json['waitingForActivation']
    ;
    returnUrl =
        json['returnUrl']
    ;
    refreshToken =
        json['refreshToken']
    ;
    refreshTokenExpireInSeconds =
        json['refreshTokenExpireInSeconds']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'waitingForActivation': waitingForActivation,
      'returnUrl': returnUrl,
      'refreshToken': refreshToken,
      'refreshTokenExpireInSeconds': refreshTokenExpireInSeconds
     };
  }

  static List<ExternalAuthenticateResultModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExternalAuthenticateResultModel>() : json.map((value) => new ExternalAuthenticateResultModel.fromJson(value)).toList();
  }

  static Map<String, ExternalAuthenticateResultModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExternalAuthenticateResultModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExternalAuthenticateResultModel.fromJson(value));
    }
    return map;
  }
}

