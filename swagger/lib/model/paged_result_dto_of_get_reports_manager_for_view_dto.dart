part of swagger.api;

class PagedResultDtoOfGetReportsManagerForViewDto {
  
  int? totalCount = null;
  

  List<GetReportsManagerForViewDto> items = [];
  
  PagedResultDtoOfGetReportsManagerForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetReportsManagerForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetReportsManagerForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetReportsManagerForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetReportsManagerForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetReportsManagerForViewDto>() : json.map((value) => new PagedResultDtoOfGetReportsManagerForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetReportsManagerForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetReportsManagerForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetReportsManagerForViewDto.fromJson(value));
    }
    return map;
  }
}

