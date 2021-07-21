part of swagger.api;

class CreateOrEditWorkScheduleDto {
  
  String? name = null;
  

  WorkModelType? workModelType = null;
  

  bool? isCalendarHolidayEnable = null;
  

  DateTime? startDate = null;
  

  DateTime? endDate = null;
  

  List<WorkHourDto> workHours = [];
  

  int? id = null;
  
  CreateOrEditWorkScheduleDto();

  @override
  String toString() {
    return 'CreateOrEditWorkScheduleDto[name=$name, workModelType=$workModelType, isCalendarHolidayEnable=$isCalendarHolidayEnable, startDate=$startDate, endDate=$endDate, workHours=$workHours, id=$id, ]';
  }

  CreateOrEditWorkScheduleDto.fromJson(Map<String, dynamic>? json) {
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
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
    workHours =
      WorkHourDto.listFromJson(json['workHours'])
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
      'startDate': startDate == null ? '' : startDate!.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate!.toUtc().toIso8601String(),
      'workHours': workHours,
      'id': id
     };
  }

  static List<CreateOrEditWorkScheduleDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditWorkScheduleDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditWorkScheduleDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditWorkScheduleDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditWorkScheduleDto.fromJson(value));
    }
    return map;
  }
}

