part of swagger.api;

class GetDetailedEmployeeLeaveReportForViewDto {
  
  String reportDate = null;
  

  String reportWeekDay = null;
  

  GetRequestForViewDto userRequest = null;
  

  GetEmployeeLeaveReportForViewDto employeeLeaveReport = null;
  
  GetDetailedEmployeeLeaveReportForViewDto();

  @override
  String toString() {
    return 'GetDetailedEmployeeLeaveReportForViewDto[reportDate=$reportDate, reportWeekDay=$reportWeekDay, userRequest=$userRequest, employeeLeaveReport=$employeeLeaveReport, ]';
  }

  GetDetailedEmployeeLeaveReportForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    reportDate =
        json['reportDate']
    ;
    reportWeekDay =
        json['reportWeekDay']
    ;
    userRequest =
      
      
      new GetRequestForViewDto.fromJson(json['userRequest'])
;
    employeeLeaveReport =
      
      
      new GetEmployeeLeaveReportForViewDto.fromJson(json['employeeLeaveReport'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'reportDate': reportDate,
      'reportWeekDay': reportWeekDay,
      'userRequest': userRequest,
      'employeeLeaveReport': employeeLeaveReport
     };
  }

  static List<GetDetailedEmployeeLeaveReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDetailedEmployeeLeaveReportForViewDto>() : json.map((value) => new GetDetailedEmployeeLeaveReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDetailedEmployeeLeaveReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDetailedEmployeeLeaveReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDetailedEmployeeLeaveReportForViewDto.fromJson(value));
    }
    return map;
  }
}

