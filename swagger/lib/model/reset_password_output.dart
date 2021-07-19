part of swagger.api;

class ResetPasswordOutput {
  
  bool? canLogin = null;
  

  String? userName = null;
  
  ResetPasswordOutput();

  @override
  String toString() {
    return 'ResetPasswordOutput[canLogin=$canLogin, userName=$userName, ]';
  }

  ResetPasswordOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    canLogin =
        json['canLogin']
    ;
    userName =
        json['userName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'canLogin': canLogin,
      'userName': userName
     };
  }

  static List<ResetPasswordOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResetPasswordOutput>() : json.map((value) => new ResetPasswordOutput.fromJson(value)).toList();
  }

  static Map<String, ResetPasswordOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResetPasswordOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResetPasswordOutput.fromJson(value));
    }
    return map;
  }
}

