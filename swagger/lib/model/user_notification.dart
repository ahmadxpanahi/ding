part of swagger.api;

class UserNotification {
  
  int tenantId = null;
  

  int userId = null;
  

  UserNotificationState state = null;
  

  TenantNotification notification = null;
  

  String id = null;
  
  UserNotification();

  @override
  String toString() {
    return 'UserNotification[tenantId=$tenantId, userId=$userId, state=$state, notification=$notification, id=$id, ]';
  }

  UserNotification.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    userId =
        json['userId']
    ;
    state =
      
      
      new UserNotificationState.fromJson(json['state'])
;
    notification =
      
      
      new TenantNotification.fromJson(json['notification'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'userId': userId,
      'state': state,
      'notification': notification,
      'id': id
     };
  }

  static List<UserNotification> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserNotification>() : json.map((value) => new UserNotification.fromJson(value)).toList();
  }

  static Map<String, UserNotification> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserNotification>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserNotification.fromJson(value));
    }
    return map;
  }
}

