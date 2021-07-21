part of swagger.api;

class WorkHourDto {
  
  int? weekNumber = null;
  

  WeekDays? weekDay = null;
  

  String? dayName = null;
  

  String? startingOvertime = null;
  

  String? hourFrom = null;
  

  String? hourTo = null;
  

  String? endingOvertime = null;
  

  String? respiteOvertime = null;
  

  String? totalHours = null;
  

  String? flexibilityDuration = null;
  

  bool? isHolidayEnable = null;
  

  int? id = null;
  
  WorkHourDto();

  @override
  String toString() {
    return 'WorkHourDto[weekNumber=$weekNumber, weekDay=$weekDay, dayName=$dayName, startingOvertime=$startingOvertime, hourFrom=$hourFrom, hourTo=$hourTo, endingOvertime=$endingOvertime, respiteOvertime=$respiteOvertime, totalHours=$totalHours, flexibilityDuration=$flexibilityDuration, isHolidayEnable=$isHolidayEnable, id=$id, ]';
  }

  WorkHourDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    weekNumber =
        json['weekNumber']
    ;
    weekDay =
      
      
      new WeekDays.fromJson(json['weekDay'])
;
    dayName =
        json['dayName']
    ;
    startingOvertime =
        json['startingOvertime']
    ;
    hourFrom =
        json['hourFrom']
    ;
    hourTo =
        json['hourTo']
    ;
    endingOvertime =
        json['endingOvertime']
    ;
    respiteOvertime =
        json['respiteOvertime']
    ;
    totalHours =
        json['totalHours']
    ;
    flexibilityDuration =
        json['flexibilityDuration']
    ;
    isHolidayEnable =
        json['isHolidayEnable']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'weekNumber': weekNumber,
      'weekDay': weekDay,
      'dayName': dayName,
      'startingOvertime': startingOvertime,
      'hourFrom': hourFrom,
      'hourTo': hourTo,
      'endingOvertime': endingOvertime,
      'respiteOvertime': respiteOvertime,
      'totalHours': totalHours,
      'flexibilityDuration': flexibilityDuration,
      'isHolidayEnable': isHolidayEnable,
      'id': id
     };
  }

  static List<WorkHourDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new WorkHourDto.fromJson(value)).toList();
  }

  static Map<String, WorkHourDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WorkHourDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WorkHourDto.fromJson(value));
    }
    return map;
  }
}

