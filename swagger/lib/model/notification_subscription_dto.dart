part of swagger.api;

class NotificationSubscriptionDto {
  
  String? name = null;
  

  bool? isSubscribed = null;
  
  NotificationSubscriptionDto();

  @override
  String toString() {
    return 'NotificationSubscriptionDto[name=$name, isSubscribed=$isSubscribed, ]';
  }

  NotificationSubscriptionDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    isSubscribed =
        json['isSubscribed']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isSubscribed': isSubscribed
     };
  }

  static List<NotificationSubscriptionDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<NotificationSubscriptionDto>() : json.map((value) => new NotificationSubscriptionDto.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriptionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NotificationSubscriptionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NotificationSubscriptionDto.fromJson(value));
    }
    return map;
  }
}

