part of swagger.api;

class PagedResultDtoOfWorkScheduleDto {
  
  int? totalCount = null;
  

  List<WorkScheduleDto> items = [];
  
  PagedResultDtoOfWorkScheduleDto();

  @override
  String toString() {
    return 'PagedResultDtoOfWorkScheduleDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfWorkScheduleDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      WorkScheduleDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfWorkScheduleDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfWorkScheduleDto>() : json.map((value) => new PagedResultDtoOfWorkScheduleDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfWorkScheduleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfWorkScheduleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfWorkScheduleDto.fromJson(value));
    }
    return map;
  }
}

