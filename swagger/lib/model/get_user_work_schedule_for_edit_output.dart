part of swagger.api;

class GetUserWorkScheduleForEditOutput {
  
  CreateOrEditUserWorkScheduleDto? userWorkSchedule = null;
  

  String? userName = null;
  

  String? workScheduleName = null;
  
  GetUserWorkScheduleForEditOutput();

  @override
  String toString() {
    return 'GetUserWorkScheduleForEditOutput[userWorkSchedule=$userWorkSchedule, userName=$userName, workScheduleName=$workScheduleName, ]';
  }

  GetUserWorkScheduleForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userWorkSchedule =
      
      
      new CreateOrEditUserWorkScheduleDto.fromJson(json['userWorkSchedule'])
;
    userName =
        json['userName']
    ;
    workScheduleName =
        json['workScheduleName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userWorkSchedule': userWorkSchedule,
      'userName': userName,
      'workScheduleName': workScheduleName
     };
  }

  static List<GetUserWorkScheduleForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserWorkScheduleForEditOutput>() : json.map((value) => new GetUserWorkScheduleForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetUserWorkScheduleForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserWorkScheduleForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserWorkScheduleForEditOutput.fromJson(value));
    }
    return map;
  }
}

