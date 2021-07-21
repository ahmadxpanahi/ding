part of swagger.api;

class PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto {
  
  int? totalCount = null;
  

  List<UserWorkScheduleWorkScheduleLookupTableDto> items = [];
  
  PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserWorkScheduleWorkScheduleLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserWorkScheduleWorkScheduleLookupTableDto.fromJson(value));
    }
    return map;
  }
}

