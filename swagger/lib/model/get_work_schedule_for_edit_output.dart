part of swagger.api;

class GetWorkScheduleForEditOutput {
  
  CreateOrEditWorkScheduleDto? workSchedule = null;
  
  GetWorkScheduleForEditOutput();

  @override
  String toString() {
    return 'GetWorkScheduleForEditOutput[workSchedule=$workSchedule, ]';
  }

  GetWorkScheduleForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    workSchedule =
      
      
      new CreateOrEditWorkScheduleDto.fromJson(json['workSchedule'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'workSchedule': workSchedule
     };
  }

  static List<GetWorkScheduleForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetWorkScheduleForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetWorkScheduleForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetWorkScheduleForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetWorkScheduleForEditOutput.fromJson(value));
    }
    return map;
  }
}

