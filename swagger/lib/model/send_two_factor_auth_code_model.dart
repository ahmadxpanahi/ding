part of swagger.api;

class SendTwoFactorAuthCodeModel {
  
  int? userId = null;
   // range from 1 to //

  String? provider = null;
  
  SendTwoFactorAuthCodeModel();

  @override
  String toString() {
    return 'SendTwoFactorAuthCodeModel[userId=$userId, provider=$provider, ]';
  }

  SendTwoFactorAuthCodeModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    provider =
        json['provider']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'provider': provider
     };
  }

  static List<SendTwoFactorAuthCodeModel> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SendTwoFactorAuthCodeModel.fromJson(value)).toList();
  }

  static Map<String, SendTwoFactorAuthCodeModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SendTwoFactorAuthCodeModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SendTwoFactorAuthCodeModel.fromJson(value));
    }
    return map;
  }
}

