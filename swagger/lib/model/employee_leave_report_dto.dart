part of swagger.api;

class EmployeeLeaveReportDto {
  
  int totalApprovedLeaveRequestDays = null;
  

  String totalApprovedLeaveRequestHours = null;
  

  String totalRejectedLeaveRequestHours = null;
  

  String remainingLeavePermissionHours = null;
  

  int remainingLeavePermissionDays = null;
  

  int userId = null;
  
  EmployeeLeaveReportDto();

  @override
  String toString() {
    return 'EmployeeLeaveReportDto[totalApprovedLeaveRequestDays=$totalApprovedLeaveRequestDays, totalApprovedLeaveRequestHours=$totalApprovedLeaveRequestHours, totalRejectedLeaveRequestHours=$totalRejectedLeaveRequestHours, remainingLeavePermissionHours=$remainingLeavePermissionHours, remainingLeavePermissionDays=$remainingLeavePermissionDays, userId=$userId, ]';
  }

  EmployeeLeaveReportDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalApprovedLeaveRequestDays =
        json['totalApprovedLeaveRequestDays']
    ;
    totalApprovedLeaveRequestHours =
        json['totalApprovedLeaveRequestHours']
    ;
    totalRejectedLeaveRequestHours =
        json['totalRejectedLeaveRequestHours']
    ;
    remainingLeavePermissionHours =
        json['remainingLeavePermissionHours']
    ;
    remainingLeavePermissionDays =
        json['remainingLeavePermissionDays']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalApprovedLeaveRequestDays': totalApprovedLeaveRequestDays,
      'totalApprovedLeaveRequestHours': totalApprovedLeaveRequestHours,
      'totalRejectedLeaveRequestHours': totalRejectedLeaveRequestHours,
      'remainingLeavePermissionHours': remainingLeavePermissionHours,
      'remainingLeavePermissionDays': remainingLeavePermissionDays,
      'userId': userId
     };
  }

  static List<EmployeeLeaveReportDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<EmployeeLeaveReportDto>() : json.map((value) => new EmployeeLeaveReportDto.fromJson(value)).toList();
  }

  static Map<String, EmployeeLeaveReportDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmployeeLeaveReportDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmployeeLeaveReportDto.fromJson(value));
    }
    return map;
  }
}

