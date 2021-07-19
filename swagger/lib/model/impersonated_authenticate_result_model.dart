part of swagger.api;

class ImpersonatedAuthenticateResultModel {
  
  String accessToken = null;
  

  String encryptedAccessToken = null;
  

  int expireInSeconds = null;
  
  ImpersonatedAuthenticateResultModel();

  @override
  String toString() {
    return 'ImpersonatedAuthenticateResultModel[accessToken=$accessToken, encryptedAccessToken=$encryptedAccessToken, expireInSeconds=$expireInSeconds, ]';
  }

  ImpersonatedAuthenticateResultModel.fromJson(Map<String, dynamic> json) {
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

  static List<ImpersonatedAuthenticateResultModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ImpersonatedAuthenticateResultModel>() : json.map((value) => new ImpersonatedAuthenticateResultModel.fromJson(value)).toList();
  }

  static Map<String, ImpersonatedAuthenticateResultModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImpersonatedAuthenticateResultModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImpersonatedAuthenticateResultModel.fromJson(value));
    }
    return map;
  }
}

