part of swagger.api;

class PagedResultDtoOfGetUserClockInOutForViewDto {
  
  int? totalCount = null;
  

  List<GetUserClockInOutForViewDto> items = [];
  
  PagedResultDtoOfGetUserClockInOutForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetUserClockInOutForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetUserClockInOutForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['result']['totalCount']
    ;
    items =
      GetUserClockInOutForViewDto.listFromJson(json['result']['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetUserClockInOutForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfGetUserClockInOutForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetUserClockInOutForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetUserClockInOutForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetUserClockInOutForViewDto.fromJson(value));
    }
    return map;
  }
}

