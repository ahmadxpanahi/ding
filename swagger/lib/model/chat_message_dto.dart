part of swagger.api;

class ChatMessageDto {
  
  int? userId = null;
  

  int? tenantId = null;
  

  int? targetUserId = null;
  

  int? targetTenantId = null;
  

  ChatSide? side = null;
  

  ChatMessageReadState? readState = null;
  

  ChatMessageReadState? receiverReadState = null;
  

  String? message = null;
  

  DateTime? creationTime = null;
  

  String? sharedMessageId = null;
  

  int? id = null;
  
  ChatMessageDto();

  @override
  String toString() {
    return 'ChatMessageDto[userId=$userId, tenantId=$tenantId, targetUserId=$targetUserId, targetTenantId=$targetTenantId, side=$side, readState=$readState, receiverReadState=$receiverReadState, message=$message, creationTime=$creationTime, sharedMessageId=$sharedMessageId, id=$id, ]';
  }

  ChatMessageDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    tenantId =
        json['tenantId']
    ;
    targetUserId =
        json['targetUserId']
    ;
    targetTenantId =
        json['targetTenantId']
    ;
    side =
      
      
      new ChatSide.fromJson(json['side'])
;
    readState =
      
      
      new ChatMessageReadState.fromJson(json['readState'])
;
    receiverReadState =
      
      
      new ChatMessageReadState.fromJson(json['receiverReadState'])
;
    message =
        json['message']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    sharedMessageId =
        json['sharedMessageId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'tenantId': tenantId,
      'targetUserId': targetUserId,
      'targetTenantId': targetTenantId,
      'side': side,
      'readState': readState,
      'receiverReadState': receiverReadState,
      'message': message,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'sharedMessageId': sharedMessageId,
      'id': id
     };
  }

  static List<ChatMessageDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<ChatMessageDto>() : json.map((value) => new ChatMessageDto.fromJson(value)).toList();
  }

  static Map<String, ChatMessageDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChatMessageDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChatMessageDto.fromJson(value));
    }
    return map;
  }
}

