part of swagger.api;

class UnlinkUserInput {
  
  int tenantId = null;
  

  int userId = null;
  
  UnlinkUserInput();

  @override
  String toString() {
    return 'UnlinkUserInput[tenantId=$tenantId, userId=$userId, ]';
  }

  UnlinkUserInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'userId': userId
     };
  }

  static List<UnlinkUserInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UnlinkUserInput>() : json.map((value) => new UnlinkUserInput.fromJson(value)).toList();
  }

  static Map<String, UnlinkUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UnlinkUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UnlinkUserInput.fromJson(value));
    }
    return map;
  }
}

