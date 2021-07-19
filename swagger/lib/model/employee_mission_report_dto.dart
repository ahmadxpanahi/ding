part of swagger.api;

class EmployeeMissionReportDto {
  
  int? totalApprovedMissionRequestDays = null;
  

  String? totalApprovedMissionRequestHours = null;
  

  String? totalRejectedMissionRequestHours = null;
  

  String? remainingMissionPermissionHours = null;
  

  int? remainingMissionPermissionDays = null;
  

  int? userId = null;
  
  EmployeeMissionReportDto();

  @override
  String toString() {
    return 'EmployeeMissionReportDto[totalApprovedMissionRequestDays=$totalApprovedMissionRequestDays, totalApprovedMissionRequestHours=$totalApprovedMissionRequestHours, totalRejectedMissionRequestHours=$totalRejectedMissionRequestHours, remainingMissionPermissionHours=$remainingMissionPermissionHours, remainingMissionPermissionDays=$remainingMissionPermissionDays, userId=$userId, ]';
  }

  EmployeeMissionReportDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalApprovedMissionRequestDays =
        json['totalApprovedMissionRequestDays']
    ;
    totalApprovedMissionRequestHours =
        json['totalApprovedMissionRequestHours']
    ;
    totalRejectedMissionRequestHours =
        json['totalRejectedMissionRequestHours']
    ;
    remainingMissionPermissionHours =
        json['remainingMissionPermissionHours']
    ;
    remainingMissionPermissionDays =
        json['remainingMissionPermissionDays']
    ;
    userId =
        json['userId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalApprovedMissionRequestDays': totalApprovedMissionRequestDays,
      'totalApprovedMissionRequestHours': totalApprovedMissionRequestHours,
      'totalRejectedMissionRequestHours': totalRejectedMissionRequestHours,
      'remainingMissionPermissionHours': remainingMissionPermissionHours,
      'remainingMissionPermissionDays': remainingMissionPermissionDays,
      'userId': userId
     };
  }

  static List<EmployeeMissionReportDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EmployeeMissionReportDto.fromJson(value)).toList();
  }

  static Map<String, EmployeeMissionReportDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EmployeeMissionReportDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EmployeeMissionReportDto.fromJson(value));
    }
    return map;
  }
}

