part of swagger.api;

class UpdateUserSignInTokenOutput {
  
  String? signInToken = null;
  

  String? encodedUserId = null;
  

  String? encodedTenantId = null;
  
  UpdateUserSignInTokenOutput();

  @override
  String toString() {
    return 'UpdateUserSignInTokenOutput[signInToken=$signInToken, encodedUserId=$encodedUserId, encodedTenantId=$encodedTenantId, ]';
  }

  UpdateUserSignInTokenOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    signInToken =
        json['signInToken']
    ;
    encodedUserId =
        json['encodedUserId']
    ;
    encodedTenantId =
        json['encodedTenantId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'signInToken': signInToken,
      'encodedUserId': encodedUserId,
      'encodedTenantId': encodedTenantId
     };
  }

  static List<UpdateUserSignInTokenOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateUserSignInTokenOutput>() : json.map((value) => new UpdateUserSignInTokenOutput.fromJson(value)).toList();
  }

  static Map<String, UpdateUserSignInTokenOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateUserSignInTokenOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateUserSignInTokenOutput.fromJson(value));
    }
    return map;
  }
}

