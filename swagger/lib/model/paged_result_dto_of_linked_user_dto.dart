part of swagger.api;

class PagedResultDtoOfLinkedUserDto {
  
  int? totalCount = null;
  

  List<LinkedUserDto> items = [];
  
  PagedResultDtoOfLinkedUserDto();

  @override
  String toString() {
    return 'PagedResultDtoOfLinkedUserDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfLinkedUserDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      LinkedUserDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfLinkedUserDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfLinkedUserDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfLinkedUserDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfLinkedUserDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfLinkedUserDto.fromJson(value));
    }
    return map;
  }
}

