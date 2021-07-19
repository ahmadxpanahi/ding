part of swagger.api;

class GetSummaryEmployeeReportForViewDto {
  
  SummaryEmployeeReportDto? summaryEmployeeReport = null;
  

  int? userId = null;
  

  String? userName = null;
  

  String? workScheduleName = null;
  
  GetSummaryEmployeeReportForViewDto();

  @override
  String toString() {
    return 'GetSummaryEmployeeReportForViewDto[summaryEmployeeReport=$summaryEmployeeReport, userId=$userId, userName=$userName, workScheduleName=$workScheduleName, ]';
  }

  GetSummaryEmployeeReportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    summaryEmployeeReport =
      
      
      new SummaryEmployeeReportDto.fromJson(json['summaryEmployeeReport'])
;
    userId =
        json['userId']
    ;
    userName =
        json['userName']
    ;
    workScheduleName =
        json['workScheduleName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'summaryEmployeeReport': summaryEmployeeReport,
      'userId': userId,
      'userName': userName,
      'workScheduleName': workScheduleName
     };
  }

  static List<GetSummaryEmployeeReportForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetSummaryEmployeeReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetSummaryEmployeeReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetSummaryEmployeeReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetSummaryEmployeeReportForViewDto.fromJson(value));
    }
    return map;
  }
}

