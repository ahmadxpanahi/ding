part of swagger.api;

class GetUserWorkScheduleForViewDto {
  
  UserWorkScheduleDto? userWorkSchedule = null;
  

  String? userName = null;
  

  String? workScheduleName = null;
  

  WorkModelType? workModelType = null;
  

  String? workingTotalTime = null;
  

  List<WorkHourDto> workHours = [];
  

  DateTime? startDate = null;
  

  DateTime? endDate = null;
  
  GetUserWorkScheduleForViewDto();

  @override
  String toString() {
    return 'GetUserWorkScheduleForViewDto[userWorkSchedule=$userWorkSchedule, userName=$userName, workScheduleName=$workScheduleName, workModelType=$workModelType, workingTotalTime=$workingTotalTime, workHours=$workHours, startDate=$startDate, endDate=$endDate, ]';
  }

  GetUserWorkScheduleForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userWorkSchedule =
      
      
      new UserWorkScheduleDto.fromJson(json['userWorkSchedule'])
;
    userName =
        json['userName']
    ;
    workScheduleName =
        json['workScheduleName']
    ;
    workModelType =
      
      
      new WorkModelType.fromJson(json['workModelType'])
;
    workingTotalTime =
        json['workingTotalTime']
    ;
    workHours =
      WorkHourDto.listFromJson(json['workHours'])
;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'userWorkSchedule': userWorkSchedule,
      'userName': userName,
      'workScheduleName': workScheduleName,
      'workModelType': workModelType,
      'workingTotalTime': workingTotalTime,
      'workHours': workHours,
      'startDate': startDate == null ? '' : startDate!.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate!.toUtc().toIso8601String()
     };
  }

  static List<GetUserWorkScheduleForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetUserWorkScheduleForViewDto>() : json.map((value) => new GetUserWorkScheduleForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetUserWorkScheduleForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserWorkScheduleForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserWorkScheduleForViewDto.fromJson(value));
    }
    return map;
  }
}

