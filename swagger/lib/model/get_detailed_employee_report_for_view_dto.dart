part of swagger.api;

class GetDetailedEmployeeReportForViewDto {
  
  String? reportDate = null;
  

  String? reportWeekDay = null;
  

  List<DetailedUserClockInOutDto> userClockInOutList = [];
  

  SummaryEmployeeReportDto? employeeReport = null;
  
  GetDetailedEmployeeReportForViewDto();

  @override
  String toString() {
    return 'GetDetailedEmployeeReportForViewDto[reportDate=$reportDate, reportWeekDay=$reportWeekDay, userClockInOutList=$userClockInOutList, employeeReport=$employeeReport, ]';
  }

  GetDetailedEmployeeReportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    reportDate =
        json['reportDate']
    ;
    reportWeekDay =
        json['reportWeekDay']
    ;
    userClockInOutList =
      DetailedUserClockInOutDto.listFromJson(json['userClockInOutList'])
;
    employeeReport =
      
      
      new SummaryEmployeeReportDto.fromJson(json['employeeReport'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'reportDate': reportDate,
      'reportWeekDay': reportWeekDay,
      'userClockInOutList': userClockInOutList,
      'employeeReport': employeeReport
     };
  }

  static List<GetDetailedEmployeeReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDetailedEmployeeReportForViewDto>() : json.map((value) => new GetDetailedEmployeeReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDetailedEmployeeReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDetailedEmployeeReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDetailedEmployeeReportForViewDto.fromJson(value));
    }
    return map;
  }
}

