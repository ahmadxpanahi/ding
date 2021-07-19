part of swagger.api;

class PagedResultDtoOfUserListDto {
  
  int? totalCount = null;
  

  List<UserListDto> items = [];
  
  PagedResultDtoOfUserListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfUserListDto>() : json.map((value) => new PagedResultDtoOfUserListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserListDto.fromJson(value));
    }
    return map;
  }
}

