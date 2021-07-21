part of swagger.api;

class ActivateEmailInput {
  
  int? userId = null;
  

  String? confirmationCode = null;
  

  String? c = null;
  
  ActivateEmailInput();

  @override
  String toString() {
    return 'ActivateEmailInput[userId=$userId, confirmationCode=$confirmationCode, c=$c, ]';
  }

  ActivateEmailInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    confirmationCode =
        json['confirmationCode']
    ;
    c =
        json['c']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'confirmationCode': confirmationCode,
      'c': c
     };
  }

  static List<ActivateEmailInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ActivateEmailInput.fromJson(value)).toList();
  }

  static Map<String, ActivateEmailInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActivateEmailInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActivateEmailInput.fromJson(value));
    }
    return map;
  }
}

