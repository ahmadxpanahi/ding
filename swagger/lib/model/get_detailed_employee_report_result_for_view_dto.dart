part of swagger.api;

class GetDetailedEmployeeReportReesultForViewDto {

  List<GetDetailedEmployeeReportForViewDto> items = [];

  GetDetailedEmployeeReportReesultForViewDto();

  @override
  String toString() {
    return 'GetDetailedEmployeeReportReesultForViewDto[items=$items, ]';
  }

  GetDetailedEmployeeReportReesultForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
        GetDetailedEmployeeReportForViewDto.listFromJson(json['result'])
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
    };
  }

  static List<GetDetailedEmployeeReportReesultForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetDetailedEmployeeReportReesultForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDetailedEmployeeReportReesultForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDetailedEmployeeReportReesultForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDetailedEmployeeReportReesultForViewDto.fromJson(value));
    }
    return map;
  }
}

