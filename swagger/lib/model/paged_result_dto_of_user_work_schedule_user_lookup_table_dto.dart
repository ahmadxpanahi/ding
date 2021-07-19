part of swagger.api;

class PagedResultDtoOfUserWorkScheduleUserLookupTableDto {
  
  int? totalCount = null;
  

  List<UserWorkScheduleUserLookupTableDto> items = [];
  
  PagedResultDtoOfUserWorkScheduleUserLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserWorkScheduleUserLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserWorkScheduleUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserWorkScheduleUserLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserWorkScheduleUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfUserWorkScheduleUserLookupTableDto>() : json.map((value) => new PagedResultDtoOfUserWorkScheduleUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserWorkScheduleUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserWorkScheduleUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserWorkScheduleUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

