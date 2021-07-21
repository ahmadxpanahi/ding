part of swagger.api;

class PagedResultDtoOfGetEmployeeLeaveReportForViewDto {
  
  int? totalCount = null;
  

  List<GetEmployeeLeaveReportForViewDto> items = [];
  
  PagedResultDtoOfGetEmployeeLeaveReportForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetEmployeeLeaveReportForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetEmployeeLeaveReportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetEmployeeLeaveReportForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetEmployeeLeaveReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfGetEmployeeLeaveReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetEmployeeLeaveReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetEmployeeLeaveReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetEmployeeLeaveReportForViewDto.fromJson(value));
    }
    return map;
  }
}

