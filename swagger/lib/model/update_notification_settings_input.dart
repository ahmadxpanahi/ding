part of swagger.api;

class UpdateNotificationSettingsInput {
  
  bool? receiveNotifications = null;
  

  List<NotificationSubscriptionDto> notifications = [];
  
  UpdateNotificationSettingsInput();

  @override
  String toString() {
    return 'UpdateNotificationSettingsInput[receiveNotifications=$receiveNotifications, notifications=$notifications, ]';
  }

  UpdateNotificationSettingsInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    receiveNotifications =
        json['receiveNotifications']
    ;
    notifications =
      NotificationSubscriptionDto.listFromJson(json['notifications'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'receiveNotifications': receiveNotifications,
      'notifications': notifications
     };
  }

  static List<UpdateNotificationSettingsInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UpdateNotificationSettingsInput.fromJson(value)).toList();
  }

  static Map<String, UpdateNotificationSettingsInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateNotificationSettingsInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateNotificationSettingsInput.fromJson(value));
    }
    return map;
  }
}

