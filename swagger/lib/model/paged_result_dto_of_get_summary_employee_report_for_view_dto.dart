part of swagger.api;

class PagedResultDtoOfGetSummaryEmployeeReportForViewDto {
  
  int totalCount = null;
  

  List<GetSummaryEmployeeReportForViewDto> items = [];
  
  PagedResultDtoOfGetSummaryEmployeeReportForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetSummaryEmployeeReportForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetSummaryEmployeeReportForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetSummaryEmployeeReportForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetSummaryEmployeeReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetSummaryEmployeeReportForViewDto>() : json.map((value) => new PagedResultDtoOfGetSummaryEmployeeReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetSummaryEmployeeReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetSummaryEmployeeReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetSummaryEmployeeReportForViewDto.fromJson(value));
    }
    return map;
  }
}

