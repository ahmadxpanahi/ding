part of swagger.api;

class CreateOrEditUserClockInOutDto {
  
  DateTime clock = null;
  

  UserClockInOutType clockInOutType = null;
  

  UserWorkScheduleAbnormalities abnormalityType = null;
  

  int weekNumber = null;
  

  String projectName = null;
  

  String description = null;
  

  int userId = null;
  

  int workScheduleId = null;
  

  int workHourId = null;
  

  int organizationUnitId = null;
  

  int id = null;
  
  CreateOrEditUserClockInOutDto();

  @override
  String toString() {
    return 'CreateOrEditUserClockInOutDto[clock=$clock, clockInOutType=$clockInOutType, abnormalityType=$abnormalityType, weekNumber=$weekNumber, projectName=$projectName, description=$description, userId=$userId, workScheduleId=$workScheduleId, workHourId=$workHourId, organizationUnitId=$organizationUnitId, id=$id, ]';
  }

  CreateOrEditUserClockInOutDto.fromJson(Map<String, dynamic> json) {
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
    projectName =
        json['projectName']
    ;
    description =
        json['description']
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
      'projectName': projectName,
      'description': description,
      'userId': userId,
      'workScheduleId': workScheduleId,
      'workHourId': workHourId,
      'organizationUnitId': organizationUnitId,
      'id': id
     };
  }

  static List<CreateOrEditUserClockInOutDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditUserClockInOutDto>() : json.map((value) => new CreateOrEditUserClockInOutDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditUserClockInOutDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditUserClockInOutDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditUserClockInOutDto.fromJson(value));
    }
    return map;
  }
}

