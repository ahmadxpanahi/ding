part of swagger.api;

class ExternalAuthenticateModel {
  
  String? authProvider = null;
  

  String? providerKey = null;
  

  String? providerAccessCode = null;
  

  String? returnUrl = null;
  

  bool? singleSignIn = null;
  
  ExternalAuthenticateModel();

  @override
  String toString() {
    return 'ExternalAuthenticateModel[authProvider=$authProvider, providerKey=$providerKey, providerAccessCode=$providerAccessCode, returnUrl=$returnUrl, singleSignIn=$singleSignIn, ]';
  }

  ExternalAuthenticateModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    authProvider =
        json['authProvider']
    ;
    providerKey =
        json['providerKey']
    ;
    providerAccessCode =
        json['providerAccessCode']
    ;
    returnUrl =
        json['returnUrl']
    ;
    singleSignIn =
        json['singleSignIn']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'authProvider': authProvider,
      'providerKey': providerKey,
      'providerAccessCode': providerAccessCode,
      'returnUrl': returnUrl,
      'singleSignIn': singleSignIn
     };
  }

  static List<ExternalAuthenticateModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExternalAuthenticateModel>() : json.map((value) => new ExternalAuthenticateModel.fromJson(value)).toList();
  }

  static Map<String, ExternalAuthenticateModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExternalAuthenticateModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExternalAuthenticateModel.fromJson(value));
    }
    return map;
  }
}

