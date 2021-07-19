part of swagger.api;

class GetNotificationsOutput {
  
  int unreadCount = null;
  

  int totalCount = null;
  

  List<UserNotification> items = [];
  
  GetNotificationsOutput();

  @override
  String toString() {
    return 'GetNotificationsOutput[unreadCount=$unreadCount, totalCount=$totalCount, items=$items, ]';
  }

  GetNotificationsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    unreadCount =
        json['unreadCount']
    ;
    totalCount =
        json['totalCount']
    ;
    items =
      UserNotification.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'unreadCount': unreadCount,
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<GetNotificationsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetNotificationsOutput>() : json.map((value) => new GetNotificationsOutput.fromJson(value)).toList();
  }

  static Map<String, GetNotificationsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetNotificationsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetNotificationsOutput.fromJson(value));
    }
    return map;
  }
}

