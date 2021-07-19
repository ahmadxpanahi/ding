part of swagger.api;

class ListResultDtoOfChatMessageDto {
  
  List<ChatMessageDto> items = [];
  
  ListResultDtoOfChatMessageDto();

  @override
  String toString() {
    return 'ListResultDtoOfChatMessageDto[items=$items, ]';
  }

  ListResultDtoOfChatMessageDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      ChatMessageDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfChatMessageDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfChatMessageDto>() : json.map((value) => new ListResultDtoOfChatMessageDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfChatMessageDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfChatMessageDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfChatMessageDto.fromJson(value));
    }
    return map;
  }
}

