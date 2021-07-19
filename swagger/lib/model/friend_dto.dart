part of swagger.api;

class FriendDto {
  
  int? friendUserId = null;
  

  int? friendTenantId = null;
  

  String? friendUserName = null;
  

  String? friendTenancyName = null;
  

  String? friendProfilePictureId = null;
  

  int? unreadMessageCount = null;
  

  bool? isOnline = null;
  

  FriendshipState? state = null;
  
  FriendDto();

  @override
  String toString() {
    return 'FriendDto[friendUserId=$friendUserId, friendTenantId=$friendTenantId, friendUserName=$friendUserName, friendTenancyName=$friendTenancyName, friendProfilePictureId=$friendProfilePictureId, unreadMessageCount=$unreadMessageCount, isOnline=$isOnline, state=$state, ]';
  }

  FriendDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    friendUserId =
        json['friendUserId']
    ;
    friendTenantId =
        json['friendTenantId']
    ;
    friendUserName =
        json['friendUserName']
    ;
    friendTenancyName =
        json['friendTenancyName']
    ;
    friendProfilePictureId =
        json['friendProfilePictureId']
    ;
    unreadMessageCount =
        json['unreadMessageCount']
    ;
    isOnline =
        json['isOnline']
    ;
    state =
      
      
      new FriendshipState.fromJson(json['state'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'friendUserId': friendUserId,
      'friendTenantId': friendTenantId,
      'friendUserName': friendUserName,
      'friendTenancyName': friendTenancyName,
      'friendProfilePictureId': friendProfilePictureId,
      'unreadMessageCount': unreadMessageCount,
      'isOnline': isOnline,
      'state': state
     };
  }

  static List<FriendDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<FriendDto>() : json.map((value) => new FriendDto.fromJson(value)).toList();
  }

  static Map<String, FriendDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FriendDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FriendDto.fromJson(value));
    }
    return map;
  }
}

