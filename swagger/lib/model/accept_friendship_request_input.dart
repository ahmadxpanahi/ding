part of swagger.api;

class AcceptFriendshipRequestInput {
  
  int? userId = null;
   // range from 1 to //

  int? tenantId = null;
  
  AcceptFriendshipRequestInput();

  @override
  String toString() {
    return 'AcceptFriendshipRequestInput[userId=$userId, tenantId=$tenantId, ]';
  }

  AcceptFriendshipRequestInput.fromJson(Map<String, dynamic>? json) {
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

  static List<AcceptFriendshipRequestInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<AcceptFriendshipRequestInput>() : json.map((value) => new AcceptFriendshipRequestInput.fromJson(value)).toList();
  }

  static Map<String, AcceptFriendshipRequestInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AcceptFriendshipRequestInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AcceptFriendshipRequestInput.fromJson(value));
    }
    return map;
  }
}

