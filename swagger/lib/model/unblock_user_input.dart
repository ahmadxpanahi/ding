part of swagger.api;

class UnblockUserInput {
  
  int? userId = null;
   // range from 1 to //

  int? tenantId = null;
  
  UnblockUserInput();

  @override
  String toString() {
    return 'UnblockUserInput[userId=$userId, tenantId=$tenantId, ]';
  }

  UnblockUserInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    tenantId =
        json['tenantId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'tenantId': tenantId
     };
  }

  static List<UnblockUserInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnblockUserInput>() : json.map((value) => new UnblockUserInput.fromJson(value)).toList();
  }

  static Map<String, UnblockUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnblockUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnblockUserInput.fromJson(value));
    }
    return map;
  }
}

