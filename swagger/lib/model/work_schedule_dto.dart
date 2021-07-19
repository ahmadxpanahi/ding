part of swagger.api;

class WorkScheduleDto {
  
  String? name = null;
  

  WorkModelType? workModelType = null;
  

  bool? isCalendarHolidayEnable = null;
  

  String? workingTotalTime = null;
  

  DateTime? startDate = null;
  

  DateTime? endDate = null;
  

  int? usersCount = null;
  

  List<WorkHourDto> workHours = [];
  

  bool? isAssigned = null;
  

  int? id = null;
  
  WorkScheduleDto();

  @override
  String toString() {
    return 'WorkScheduleDto[name=$name, workModelType=$workModelType, isCalendarHolidayEnable=$isCalendarHolidayEnable, workingTotalTime=$workingTotalTime, startDate=$startDate, endDate=$endDate, usersCount=$usersCount, workHours=$workHours, isAssigned=$isAssigned, id=$id, ]';
  }

  WorkScheduleDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    workModelType =
      
      
      new WorkModelType.fromJson(json['workModelType'])
;
    isCalendarHolidayEnable =
        json['isCalendarHolidayEnable']
    ;
    workingTotalTime =
        json['workingTotalTime']
    ;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    usersCount =
        json['usersCount']
    ;
    workHours =
      WorkHourDto.listFromJson(json['workHours'])
;
    isAssigned =
        json['isAssigned']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'workModelType': workModelType,
      'isCalendarHolidayEnable': isCalendarHolidayEnable,
      'workingTotalTime': workingTotalTime,
      'startDate': startDate == null ? '' : startDate!.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate!.toUtc().toIso8601String(),
      'usersCount': usersCount,
      'workHours': workHours,
      'isAssigned': isAssigned,
      'id': id
     };
  }

  static List<WorkScheduleDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<WorkScheduleDto>() : json.map((value) => new WorkScheduleDto.fromJson(value)).toList();
  }

  static Map<String, WorkScheduleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkScheduleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkScheduleDto.fromJson(value));
    }
    return map;
  }
}

