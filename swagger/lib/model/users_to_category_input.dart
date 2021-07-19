part of swagger.api;

class UsersToCategoryInput {
  
  List<int> userIds = [];
  

  int? categoryId = null;
   // range from 1 to //
  UsersToCategoryInput();

  @override
  String toString() {
    return 'UsersToCategoryInput[userIds=$userIds, categoryId=$categoryId, ]';
  }

  UsersToCategoryInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userIds =
        (json['userIds'] as List).map((item) => item as int).toList()
    ;
    categoryId =
        json['categoryId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userIds': userIds,
      'categoryId': categoryId
     };
  }

  static List<UsersToCategoryInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UsersToCategoryInput.fromJson(value)).toList();
  }

  static Map<String, UsersToCategoryInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UsersToCategoryInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UsersToCategoryInput.fromJson(value));
    }
    return map;
  }
}

