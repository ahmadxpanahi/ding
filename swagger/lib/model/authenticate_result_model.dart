part of swagger.api;

class AuthenticateResultModel {
  
  String? accessToken = null;
  

  String? encryptedAccessToken = null;
  

  int? expireInSeconds = null;
  

  bool? shouldResetPassword = null;
  

  String? passwordResetCode = null;
  

  int? userId = null;
  

  bool? requiresTwoFactorVerification = null;
  

  List<String> twoFactorAuthProviders = [];
  

  String? twoFactorRememberClientToken = null;
  

  String? returnUrl = null;
  

  String? refreshToken = null;
  

  int? refreshTokenExpireInSeconds = null;
  

  int? tenantId = null;
  
  AuthenticateResultModel();

  @override
  String toString() {
    return 'AuthenticateResultModel[accessToken=$accessToken, encryptedAccessToken=$encryptedAccessToken, expireInSeconds=$expireInSeconds, shouldResetPassword=$shouldResetPassword, passwordResetCode=$passwordResetCode, userId=$userId, requiresTwoFactorVerification=$requiresTwoFactorVerification, twoFactorAuthProviders=$twoFactorAuthProviders, twoFactorRememberClientToken=$twoFactorRememberClientToken, returnUrl=$returnUrl, refreshToken=$refreshToken, refreshTokenExpireInSeconds=$refreshTokenExpireInSeconds, tenantId=$tenantId, ]';
  }

  AuthenticateResultModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    print(json);
    accessToken =
        json['result']['accessToken']
    ;
    encryptedAccessToken =
    json['result']['encryptedAccessToken']
    ;
    expireInSeconds =
    json['result']['expireInSeconds']
    ;
    shouldResetPassword =
    json['result']['shouldResetPassword']
    ;
    passwordResetCode =
    json['result']['passwordResetCode']
    ;
    userId =
    json['result']['userId']
    ;
    requiresTwoFactorVerification =
    json['result']['requiresTwoFactorVerification']
    ;
    // twoFactorAuthProviders =
    //     (json['result']['twoFactorAuthProviders'] as List).map((item) => item as String).toList()
    // ;
    twoFactorRememberClientToken =
    json['result']['twoFactorRememberClientToken']
    ;
    returnUrl =
    json['result']['returnUrl']
    ;
    refreshToken =
    json['result']['refreshToken']
    ;
    refreshTokenExpireInSeconds =
    json['result']['refreshTokenExpireInSeconds']
    ;
    tenantId =
    json['result']['tenantId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessToken': accessToken,
      'encryptedAccessToken': encryptedAccessToken,
      'expireInSeconds': expireInSeconds,
      'shouldResetPassword': shouldResetPassword,
      'passwordResetCode': passwordResetCode,
      'userId': userId,
      'requiresTwoFactorVerification': requiresTwoFactorVerification,
      'twoFactorAuthProviders': twoFactorAuthProviders,
      'twoFactorRememberClientToken': twoFactorRememberClientToken,
      'returnUrl': returnUrl,
      'refreshToken': refreshToken,
      'refreshTokenExpireInSeconds': refreshTokenExpireInSeconds,
      'tenantId': tenantId
     };
  }

  static List<AuthenticateResultModel> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new AuthenticateResultModel.fromJson(value)).toList();
  }

  static Map<String, AuthenticateResultModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticateResultModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticateResultModel.fromJson(value));
    }
    return map;
  }
}

