part of swagger.api;

class GetEmployeeMissionReportForViewDto {
  
  EmployeeMissionReportDto employeeMissionReport = null;
  

  String userName = null;
  

  int userId = null;
  
  GetEmployeeMissionReportForViewDto();

  @override
  String toString() {
    return 'GetEmployeeMissionReportForViewDto[employeeMissionReport=$employeeMissionReport, userName=$userName, userId=$userId, ]';
  }

  GetEmployeeMissionReportForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    employeeMissionReport =
      
      
      new EmployeeMissionReportDto.fromJson(json['employeeMissionReport'])
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
      'employeeMissionReport': employeeMissionReport,
      'userName': userName,
      'userId': userId
     };
  }

  static List<GetEmployeeMissionReportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetEmployeeMissionReportForViewDto>() : json.map((value) => new GetEmployeeMissionReportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetEmployeeMissionReportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEmployeeMissionReportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEmployeeMissionReportForViewDto.fromJson(value));
    }
    return map;
  }
}

