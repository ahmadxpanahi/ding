part of swagger.api;

class NotificationSubscriptionWithDisplayNameDto {
  
  String? displayName = null;
  

  String? description = null;
  

  String? name = null;
  

  bool? isSubscribed = null;
  
  NotificationSubscriptionWithDisplayNameDto();

  @override
  String toString() {
    return 'NotificationSubscriptionWithDisplayNameDto[displayName=$displayName, description=$description, name=$name, isSubscribed=$isSubscribed, ]';
  }

  NotificationSubscriptionWithDisplayNameDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    description =
        json['description']
    ;
    name =
        json['name']
    ;
    isSubscribed =
        json['isSubscribed']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'description': description,
      'name': name,
      'isSubscribed': isSubscribed
     };
  }

  static List<NotificationSubscriptionWithDisplayNameDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new NotificationSubscriptionWithDisplayNameDto.fromJson(value)).toList();
  }

  static Map<String, NotificationSubscriptionWithDisplayNameDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NotificationSubscriptionWithDisplayNameDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NotificationSubscriptionWithDisplayNameDto.fromJson(value));
    }
    return map;
  }
}

