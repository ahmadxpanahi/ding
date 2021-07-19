part of swagger.api;

class AuthenticateByTenantModel {
  
  String? tenancyName = null;
  

  String? userNameOrEmailAddress = null;
  

  String? password = null;
  

  String? twoFactorVerificationCode = null;
  

  bool? rememberClient = null;
  

  String? twoFactorRememberClientToken = null;
  

  bool? singleSignIn = null;
  

  String? returnUrl = null;
  

  String? captchaResponse = null;
  
  AuthenticateByTenantModel();

  @override
  String toString() {
    return 'AuthenticateByTenantModel[tenancyName=$tenancyName, userNameOrEmailAddress=$userNameOrEmailAddress, password=$password, twoFactorVerificationCode=$twoFactorVerificationCode, rememberClient=$rememberClient, twoFactorRememberClientToken=$twoFactorRememberClientToken, singleSignIn=$singleSignIn, returnUrl=$returnUrl, captchaResponse=$captchaResponse, ]';
  }

  AuthenticateByTenantModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    userNameOrEmailAddress =
        json['userNameOrEmailAddress']
    ;
    password =
        json['password']
    ;
    twoFactorVerificationCode =
        json['twoFactorVerificationCode']
    ;
    rememberClient =
        json['rememberClient']
    ;
    twoFactorRememberClientToken =
        json['twoFactorRememberClientToken']
    ;
    singleSignIn =
        json['singleSignIn']
    ;
    returnUrl =
        json['returnUrl']
    ;
    captchaResponse =
        json['captchaResponse']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'userNameOrEmailAddress': userNameOrEmailAddress,
      'password': password,
      'twoFactorVerificationCode': twoFactorVerificationCode,
      'rememberClient': rememberClient,
      'twoFactorRememberClientToken': twoFactorRememberClientToken,
      'singleSignIn': singleSignIn,
      'returnUrl': returnUrl,
      'captchaResponse': captchaResponse
     };
  }

  static List<AuthenticateByTenantModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthenticateByTenantModel>() : json.map((value) => new AuthenticateByTenantModel.fromJson(value)).toList();
  }

  static Map<String, AuthenticateByTenantModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticateByTenantModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticateByTenantModel.fromJson(value));
    }
    return map;
  }
}

