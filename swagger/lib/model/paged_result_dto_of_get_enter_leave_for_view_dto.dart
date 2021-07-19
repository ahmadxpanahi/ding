part of swagger.api;

class PagedResultDtoOfGetEnterLeaveForViewDto {
  
  int? totalCount = null;
  

  List<GetEnterLeaveForViewDto> items = [];
  
  PagedResultDtoOfGetEnterLeaveForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetEnterLeaveForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetEnterLeaveForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetEnterLeaveForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetEnterLeaveForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetEnterLeaveForViewDto>() : json.map((value) => new PagedResultDtoOfGetEnterLeaveForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetEnterLeaveForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetEnterLeaveForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetEnterLeaveForViewDto.fromJson(value));
    }
    return map;
  }
}

