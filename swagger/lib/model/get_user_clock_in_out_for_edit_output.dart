part of swagger.api;

class GetUserClockInOutForEditOutput {
  
  CreateOrEditUserClockInOutDto userClockInOut = null;
  

  String userName = null;
  

  String workScheduleName = null;
  

  String workHourDayName = null;
  

  String organizationUnitDisplayName = null;
  
  GetUserClockInOutForEditOutput();

  @override
  String toString() {
    return 'GetUserClockInOutForEditOutput[userClockInOut=$userClockInOut, userName=$userName, workScheduleName=$workScheduleName, workHourDayName=$workHourDayName, organizationUnitDisplayName=$organizationUnitDisplayName, ]';
  }

  GetUserClockInOutForEditOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userClockInOut =
      
      
      new CreateOrEditUserClockInOutDto.fromJson(json['userClockInOut'])
;
    userName =
        json['userName']
    ;
    workScheduleName =
        json['workScheduleName']
    ;
    workHourDayName =
        json['workHourDayName']
    ;
    organizationUnitDisplayName =
        json['organizationUnitDisplayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userClockInOut': userClockInOut,
      'userName': userName,
      'workScheduleName': workScheduleName,
      'workHourDayName': workHourDayName,
      'organizationUnitDisplayName': organizationUnitDisplayName
     };
  }

  static List<GetUserClockInOutForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserClockInOutForEditOutput>() : json.map((value) => new GetUserClockInOutForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetUserClockInOutForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserClockInOutForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserClockInOutForEditOutput.fromJson(value));
    }
    return map;
  }
}

