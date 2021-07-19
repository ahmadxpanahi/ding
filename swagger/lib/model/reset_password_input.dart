part of swagger.api;

class ResetPasswordInput {
  
  int userId = null;
  

  String resetCode = null;
  

  String password = null;
  

  String returnUrl = null;
  

  String singleSignIn = null;
  

  String c = null;
  
  ResetPasswordInput();

  @override
  String toString() {
    return 'ResetPasswordInput[userId=$userId, resetCode=$resetCode, password=$password, returnUrl=$returnUrl, singleSignIn=$singleSignIn, c=$c, ]';
  }

  ResetPasswordInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    resetCode =
        json['resetCode']
    ;
    password =
        json['password']
    ;
    returnUrl =
        json['returnUrl']
    ;
    singleSignIn =
        json['singleSignIn']
    ;
    c =
        json['c']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'resetCode': resetCode,
      'password': password,
      'returnUrl': returnUrl,
      'singleSignIn': singleSignIn,
      'c': c
     };
  }

  static List<ResetPasswordInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResetPasswordInput>() : json.map((value) => new ResetPasswordInput.fromJson(value)).toList();
  }

  static Map<String, ResetPasswordInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResetPasswordInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResetPasswordInput.fromJson(value));
    }
    return map;
  }
}

