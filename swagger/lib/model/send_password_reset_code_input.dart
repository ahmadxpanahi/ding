part of swagger.api;

class SendPasswordResetCodeInput {
  
  String? userNameOrEmailOrMobile = null;
  
  SendPasswordResetCodeInput();

  @override
  String toString() {
    return 'SendPasswordResetCodeInput[userNameOrEmailOrMobile=$userNameOrEmailOrMobile, ]';
  }

  SendPasswordResetCodeInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userNameOrEmailOrMobile =
        json['userNameOrEmailOrMobile']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userNameOrEmailOrMobile': userNameOrEmailOrMobile
     };
  }

  static List<SendPasswordResetCodeInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<SendPasswordResetCodeInput>() : json.map((value) => new SendPasswordResetCodeInput.fromJson(value)).toList();
  }

  static Map<String, SendPasswordResetCodeInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendPasswordResetCodeInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendPasswordResetCodeInput.fromJson(value));
    }
    return map;
  }
}

