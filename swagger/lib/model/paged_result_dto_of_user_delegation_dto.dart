part of swagger.api;

class PagedResultDtoOfUserDelegationDto {
  
  int? totalCount = null;
  

  List<UserDelegationDto> items = [];
  
  PagedResultDtoOfUserDelegationDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserDelegationDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserDelegationDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserDelegationDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserDelegationDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfUserDelegationDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserDelegationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserDelegationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserDelegationDto.fromJson(value));
    }
    return map;
  }
}

