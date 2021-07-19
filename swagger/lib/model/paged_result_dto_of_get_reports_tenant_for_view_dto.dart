part of swagger.api;

class PagedResultDtoOfGetReportsTenantForViewDto {
  
  int? totalCount = null;
  

  List<GetReportsTenantForViewDto> items = [];
  
  PagedResultDtoOfGetReportsTenantForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetReportsTenantForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetReportsTenantForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetReportsTenantForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetReportsTenantForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetReportsTenantForViewDto>() : json.map((value) => new PagedResultDtoOfGetReportsTenantForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetReportsTenantForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetReportsTenantForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetReportsTenantForViewDto.fromJson(value));
    }
    return map;
  }
}

