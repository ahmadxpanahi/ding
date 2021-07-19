part of swagger.api;

class SwitchedAccountAuthenticateResultModel {
  
  String accessToken = null;
  

  String encryptedAccessToken = null;
  

  int expireInSeconds = null;
  
  SwitchedAccountAuthenticateResultModel();

  @override
  String toString() {
    return 'SwitchedAccountAuthenticateResultModel[accessToken=$accessToken, encryptedAccessToken=$encryptedAccessToken, expireInSeconds=$expireInSeconds, ]';
  }

  SwitchedAccountAuthenticateResultModel.fromJson(Map<String, dynamic> json) {
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

  static List<SwitchedAccountAuthenticateResultModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<SwitchedAccountAuthenticateResultModel>() : json.map((value) => new SwitchedAccountAuthenticateResultModel.fromJson(value)).toList();
  }

  static Map<String, SwitchedAccountAuthenticateResultModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SwitchedAccountAuthenticateResultModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SwitchedAccountAuthenticateResultModel.fromJson(value));
    }
    return map;
  }
}

