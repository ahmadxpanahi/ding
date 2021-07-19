part of swagger.api;

class AuthenticateModel {
  
  String userNameOrEmailAddress = null;
  

  String password = null;
  

  String twoFactorVerificationCode = null;
  

  bool rememberClient = null;
  

  String twoFactorRememberClientToken = null;
  

  bool singleSignIn = null;
  

  String returnUrl = null;
  

  String captchaResponse = null;
  
  AuthenticateModel();

  @override
  String toString() {
    return 'AuthenticateModel[userNameOrEmailAddress=$userNameOrEmailAddress, password=$password, twoFactorVerificationCode=$twoFactorVerificationCode, rememberClient=$rememberClient, twoFactorRememberClientToken=$twoFactorRememberClientToken, singleSignIn=$singleSignIn, returnUrl=$returnUrl, captchaResponse=$captchaResponse, ]';
  }

  AuthenticateModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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

  static List<AuthenticateModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<AuthenticateModel>() : json.map((value) => new AuthenticateModel.fromJson(value)).toList();
  }

  static Map<String, AuthenticateModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AuthenticateModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AuthenticateModel.fromJson(value));
    }
    return map;
  }
}

