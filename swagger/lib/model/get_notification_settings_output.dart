part of swagger.api;

class GetNotificationSettingsOutput {
  
  bool? receiveNotifications = null;
  

  List<NotificationSubscriptionWithDisplayNameDto> notifications = [];
  
  GetNotificationSettingsOutput();

  @override
  String toString() {
    return 'GetNotificationSettingsOutput[receiveNotifications=$receiveNotifications, notifications=$notifications, ]';
  }

  GetNotificationSettingsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    receiveNotifications =
        json['receiveNotifications']
    ;
    notifications =
      NotificationSubscriptionWithDisplayNameDto.listFromJson(json['notifications'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'receiveNotifications': receiveNotifications,
      'notifications': notifications
     };
  }

  static List<GetNotificationSettingsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetNotificationSettingsOutput>() : json.map((value) => new GetNotificationSettingsOutput.fromJson(value)).toList();
  }

  static Map<String, GetNotificationSettingsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetNotificationSettingsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetNotificationSettingsOutput.fromJson(value));
    }
    return map;
  }
}

