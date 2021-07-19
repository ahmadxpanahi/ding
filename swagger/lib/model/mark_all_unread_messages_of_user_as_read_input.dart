part of swagger.api;

class MarkAllUnreadMessagesOfUserAsReadInput {
  
  int? tenantId = null;
  

  int? userId = null;
  
  MarkAllUnreadMessagesOfUserAsReadInput();

  @override
  String toString() {
    return 'MarkAllUnreadMessagesOfUserAsReadInput[tenantId=$tenantId, userId=$userId, ]';
  }

  MarkAllUnreadMessagesOfUserAsReadInput.fromJson(Map<String, dynamic>? json) {
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

  static List<MarkAllUnreadMessagesOfUserAsReadInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<MarkAllUnreadMessagesOfUserAsReadInput>() : json.map((value) => new MarkAllUnreadMessagesOfUserAsReadInput.fromJson(value)).toList();
  }

  static Map<String, MarkAllUnreadMessagesOfUserAsReadInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MarkAllUnreadMessagesOfUserAsReadInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MarkAllUnreadMessagesOfUserAsReadInput.fromJson(value));
    }
    return map;
  }
}

