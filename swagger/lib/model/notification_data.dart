part of swagger.api;

class NotificationData {
  
  String? type = null;
  

  Map<String, Object> properties = {};
  
  NotificationData();

  @override
  String toString() {
    return 'NotificationData[type=$type, properties=$properties, ]';
  }

  NotificationData.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    type =
        json['type']
    ;
    properties =
      
      mapFromJson(json['properties'])
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'properties': properties
     };
  }

  static List<NotificationData> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new NotificationData.fromJson(value)).toList();
  }

  static Map<String, NotificationData> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, NotificationData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NotificationData.fromJson(value));
    }
    return map;
  }
}

