part of swagger.api;

class CreateFriendshipRequestByUserNameInput {
  
  String? tenancyName = null;
  

  String? userName = null;
  
  CreateFriendshipRequestByUserNameInput();

  @override
  String toString() {
    return 'CreateFriendshipRequestByUserNameInput[tenancyName=$tenancyName, userName=$userName, ]';
  }

  CreateFriendshipRequestByUserNameInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    userName =
        json['userName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'userName': userName
     };
  }

  static List<CreateFriendshipRequestByUserNameInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateFriendshipRequestByUserNameInput.fromJson(value)).toList();
  }

  static Map<String, CreateFriendshipRequestByUserNameInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFriendshipRequestByUserNameInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFriendshipRequestByUserNameInput.fromJson(value));
    }
    return map;
  }
}

