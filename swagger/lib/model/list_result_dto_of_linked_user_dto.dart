part of swagger.api;

class ListResultDtoOfLinkedUserDto {
  
  List<LinkedUserDto> items = [];
  
  ListResultDtoOfLinkedUserDto();

  @override
  String toString() {
    return 'ListResultDtoOfLinkedUserDto[items=$items, ]';
  }

  ListResultDtoOfLinkedUserDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      LinkedUserDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfLinkedUserDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfLinkedUserDto>() : json.map((value) => new ListResultDtoOfLinkedUserDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfLinkedUserDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfLinkedUserDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfLinkedUserDto.fromJson(value));
    }
    return map;
  }
}

