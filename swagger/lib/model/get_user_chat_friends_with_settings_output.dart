part of swagger.api;

class GetUserChatFriendsWithSettingsOutput {
  
  DateTime? serverTime = null;
  

  List<FriendDto> friends = [];
  
  GetUserChatFriendsWithSettingsOutput();

  @override
  String toString() {
    return 'GetUserChatFriendsWithSettingsOutput[serverTime=$serverTime, friends=$friends, ]';
  }

  GetUserChatFriendsWithSettingsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    serverTime = json['serverTime'] == null ? null : DateTime.parse(json['serverTime']);
    friends =
      FriendDto.listFromJson(json['friends'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'serverTime': serverTime == null ? '' : serverTime!.toUtc().toIso8601String(),
      'friends': friends
     };
  }

  static List<GetUserChatFriendsWithSettingsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserChatFriendsWithSettingsOutput>() : json.map((value) => new GetUserChatFriendsWithSettingsOutput.fromJson(value)).toList();
  }

  static Map<String, GetUserChatFriendsWithSettingsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserChatFriendsWithSettingsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserChatFriendsWithSettingsOutput.fromJson(value));
    }
    return map;
  }
}

