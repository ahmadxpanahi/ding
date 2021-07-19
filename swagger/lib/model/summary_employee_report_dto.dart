part of swagger.api;

class SummaryEmployeeReportDto {
  
  String? shiftLength = null;
  

  String? totalAttendance = null;
  

  String? totalOvertime = null;
  

  String? totalHolidayWorks = null;
  

  String? totalDelay = null;
  

  String? totalHurry = null;
  

  String? totalLeave = null;
  

  String? totalAbsence = null;
  

  String? totalMission = null;
  

  int? daysOfLeave = null;
  

  int? daysOfMission = null;
  

  int? daysOfAttendance = null;
  

  int? userId = null;
  

  int? workScheduleId = null;
  
  SummaryEmployeeReportDto();

  @override
  String toString() {
    return 'SummaryEmployeeReportDto[shiftLength=$shiftLength, totalAttendance=$totalAttendance, totalOvertime=$totalOvertime, totalHolidayWorks=$totalHolidayWorks, totalDelay=$totalDelay, totalHurry=$totalHurry, totalLeave=$totalLeave, totalAbsence=$totalAbsence, totalMission=$totalMission, daysOfLeave=$daysOfLeave, daysOfMission=$daysOfMission, daysOfAttendance=$daysOfAttendance, userId=$userId, workScheduleId=$workScheduleId, ]';
  }

  SummaryEmployeeReportDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    shiftLength =
        json['shiftLength']
    ;
    totalAttendance =
        json['totalAttendance']
    ;
    totalOvertime =
        json['totalOvertime']
    ;
    totalHolidayWorks =
        json['totalHolidayWorks']
    ;
    totalDelay =
        json['totalDelay']
    ;
    totalHurry =
        json['totalHurry']
    ;
    totalLeave =
        json['totalLeave']
    ;
    totalAbsence =
        json['totalAbsence']
    ;
    totalMission =
        json['totalMission']
    ;
    daysOfLeave =
        json['daysOfLeave']
    ;
    daysOfMission =
        json['daysOfMission']
    ;
    daysOfAttendance =
        json['daysOfAttendance']
    ;
    userId =
        json['userId']
    ;
    workScheduleId =
        json['workScheduleId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'shiftLength': shiftLength,
      'totalAttendance': totalAttendance,
      'totalOvertime': totalOvertime,
      'totalHolidayWorks': totalHolidayWorks,
      'totalDelay': totalDelay,
      'totalHurry': totalHurry,
      'totalLeave': totalLeave,
      'totalAbsence': totalAbsence,
      'totalMission': totalMission,
      'daysOfLeave': daysOfLeave,
      'daysOfMission': daysOfMission,
      'daysOfAttendance': daysOfAttendance,
      'userId': userId,
      'workScheduleId': workScheduleId
     };
  }

  static List<SummaryEmployeeReportDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SummaryEmployeeReportDto.fromJson(value)).toList();
  }

  static Map<String, SummaryEmployeeReportDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SummaryEmployeeReportDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SummaryEmployeeReportDto.fromJson(value));
    }
    return map;
  }
}

