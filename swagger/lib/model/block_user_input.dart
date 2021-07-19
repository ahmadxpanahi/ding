part of swagger.api;

class BlockUserInput {
  
  int userId = null;
   // range from 1 to //

  int tenantId = null;
  
  BlockUserInput();

  @override
  String toString() {
    return 'BlockUserInput[userId=$userId, tenantId=$tenantId, ]';
  }

  BlockUserInput.fromJson(Map<String, dynamic> json) {
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

  static List<BlockUserInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<BlockUserInput>() : json.map((value) => new BlockUserInput.fromJson(value)).toList();
  }

  static Map<String, BlockUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BlockUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BlockUserInput.fromJson(value));
    }
    return map;
  }
}

