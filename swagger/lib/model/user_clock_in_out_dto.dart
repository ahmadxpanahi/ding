part of swagger.api;

class UserClockInOutDto {
  
  DateTime clock = null;
  

  UserClockInOutType clockInOutType = null;
  

  UserWorkScheduleAbnormalities abnormalityType = null;
  

  int weekNumber = null;
  

  int userId = null;
  

  int workScheduleId = null;
  

  int workHourId = null;
  

  int organizationUnitId = null;
  

  int id = null;
  
  UserClockInOutDto();

  @override
  String toString() {
    return 'UserClockInOutDto[clock=$clock, clockInOutType=$clockInOutType, abnormalityType=$abnormalityType, weekNumber=$weekNumber, userId=$userId, workScheduleId=$workScheduleId, workHourId=$workHourId, organizationUnitId=$organizationUnitId, id=$id, ]';
  }

  UserClockInOutDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    clock = json['clock'] == null ? null : DateTime.parse(json['clock']);
    clockInOutType =
      
      
      new UserClockInOutType.fromJson(json['clockInOutType'])
;
    abnormalityType =
      
      
      new UserWorkScheduleAbnormalities.fromJson(json['abnormalityType'])
;
    weekNumber =
        json['weekNumber']
    ;
    userId =
        json['userId']
    ;
    workScheduleId =
        json['workScheduleId']
    ;
    workHourId =
        json['workHourId']
    ;
    organizationUnitId =
        json['organizationUnitId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clock': clock == null ? '' : clock.toUtc().toIso8601String(),
      'clockInOutType': clockInOutType,
      'abnormalityType': abnormalityType,
      'weekNumber': weekNumber,
      'userId': userId,
      'workScheduleId': workScheduleId,
      'workHourId': workHourId,
      'organizationUnitId': organizationUnitId,
      'id': id
     };
  }

  static List<UserClockInOutDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserClockInOutDto>() : json.map((value) => new UserClockInOutDto.fromJson(value)).toList();
  }

  static Map<String, UserClockInOutDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserClockInOutDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserClockInOutDto.fromJson(value));
    }
    return map;
  }
}

