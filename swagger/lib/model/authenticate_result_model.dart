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
    accessToken =
        json['accessToken']
    ;
    encryptedAccessToken =
        json['encryptedAccessToken']
    ;
    expireInSeconds =
        json['expireInSeconds']
    ;
    shouldResetPassword =
        json['shouldResetPassword']
    ;
    passwordResetCode =
        json['passwordResetCode']
    ;
    userId =
        json['userId']
    ;
    requiresTwoFactorVerification =
        json['requiresTwoFactorVerification']
    ;
    twoFactorAuthProviders =
        (json['twoFactorAuthProviders'] as List).map((item) => item as String).toList()
    ;
    twoFactorRememberClientToken =
        json['twoFactorRememberClientToken']
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
    tenantId =
        json['tenantId']
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

