part of swagger.api;

class CreateFriendshipRequestInput {
  
  int? userId = null;
   // range from 1 to //

  int? tenantId = null;
  
  CreateFriendshipRequestInput();

  @override
  String toString() {
    return 'CreateFriendshipRequestInput[userId=$userId, tenantId=$tenantId, ]';
  }

  CreateFriendshipRequestInput.fromJson(Map<String, dynamic>? json) {
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

  static List<CreateFriendshipRequestInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFriendshipRequestInput>() : json.map((value) => new CreateFriendshipRequestInput.fromJson(value)).toList();
  }

  static Map<String, CreateFriendshipRequestInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFriendshipRequestInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFriendshipRequestInput.fromJson(value));
    }
    return map;
  }
}

