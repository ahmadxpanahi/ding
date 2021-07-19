part of swagger.api;

class PagedResultDtoOfGetUserWorkScheduleForViewDto {
  
  int? totalCount = null;
  

  List<GetUserWorkScheduleForViewDto> items = [];
  
  PagedResultDtoOfGetUserWorkScheduleForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetUserWorkScheduleForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetUserWorkScheduleForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetUserWorkScheduleForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetUserWorkScheduleForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfGetUserWorkScheduleForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetUserWorkScheduleForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetUserWorkScheduleForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetUserWorkScheduleForViewDto.fromJson(value));
    }
    return map;
  }
}

