part of swagger.api;

class GetEmployeeLeaveReportForViewDto {
  
  EmployeeLeaveReportDto? employeeLeaveReport = null;
  

  String? userName = null;
  

  int? userId = null;
  
  GetEmployeeLeaveReportForViewDto();

  @override
  String toString() {
    return 'GetEmployeeLeaveReportForViewDto[employeeLeaveReport=$employeeLeaveReport, userName=$userName, userId=$userId, ]';
  }

  GetEmployeeLeaveReportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    employeeLeaveReport =
      
      
      new EmployeeLeaveReportDto.fromJson(json['employeeLeaveReport'])
;
    userName =
        json['userName']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'employeeLeaveReport': employeeLeaveReport,
      'userName': userName,
      'userId': userId
     };
  }

  static List<GetEmployeeLeaveReportForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetEmployeeLeaveReportForViewDto>() : json.map((value) => new GetEmployeeLeaveReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetEmployeeLeaveReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEmployeeLeaveReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEmployeeLeaveReportForViewDto.fromJson(value));
    }
    return map;
  }
}

