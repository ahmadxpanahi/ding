part of swagger.api;

class GetDetailedEmployeeMissionReportForViewDto {
  
  String? reportDate = null;
  

  String? reportWeekDay = null;
  

  GetRequestForViewDto? userRequest = null;
  

  GetEmployeeMissionReportForViewDto? employeeMissionReport = null;
  
  GetDetailedEmployeeMissionReportForViewDto();

  @override
  String toString() {
    return 'GetDetailedEmployeeMissionReportForViewDto[reportDate=$reportDate, reportWeekDay=$reportWeekDay, userRequest=$userRequest, employeeMissionReport=$employeeMissionReport, ]';
  }

  GetDetailedEmployeeMissionReportForViewDto.fromJson(Map<String, dynamic>? json) {
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
    employeeMissionReport =
      
      
      new GetEmployeeMissionReportForViewDto.fromJson(json['employeeMissionReport'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'reportDate': reportDate,
      'reportWeekDay': reportWeekDay,
      'userRequest': userRequest,
      'employeeMissionReport': employeeMissionReport
     };
  }

  static List<GetDetailedEmployeeMissionReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetDetailedEmployeeMissionReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDetailedEmployeeMissionReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDetailedEmployeeMissionReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDetailedEmployeeMissionReportForViewDto.fromJson(value));
    }
    return map;
  }
}

