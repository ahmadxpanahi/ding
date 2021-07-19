part of swagger.api;

class PagedResultDtoOfGetEmployeeMissionReportForViewDto {
  
  int? totalCount = null;
  

  List<GetEmployeeMissionReportForViewDto> items = [];
  
  PagedResultDtoOfGetEmployeeMissionReportForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetEmployeeMissionReportForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetEmployeeMissionReportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetEmployeeMissionReportForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetEmployeeMissionReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetEmployeeMissionReportForViewDto>() : json.map((value) => new PagedResultDtoOfGetEmployeeMissionReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetEmployeeMissionReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetEmployeeMissionReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetEmployeeMissionReportForViewDto.fromJson(value));
    }
    return map;
  }
}

