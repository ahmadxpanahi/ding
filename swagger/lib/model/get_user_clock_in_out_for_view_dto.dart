part of swagger.api;

class GetUserClockInOutForViewDto {
  
  UserClockInOutDto userClockInOut = null;
  

  String userName = null;
  

  String workScheduleName = null;
  

  String workHourDayName = null;
  

  String organizationUnitDisplayName = null;
  
  GetUserClockInOutForViewDto();

  @override
  String toString() {
    return 'GetUserClockInOutForViewDto[userClockInOut=$userClockInOut, userName=$userName, workScheduleName=$workScheduleName, workHourDayName=$workHourDayName, organizationUnitDisplayName=$organizationUnitDisplayName, ]';
  }

  GetUserClockInOutForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userClockInOut =
      
      
      new UserClockInOutDto.fromJson(json['userClockInOut'])
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

  static List<GetUserClockInOutForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetUserClockInOutForViewDto>() : json.map((value) => new GetUserClockInOutForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetUserClockInOutForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserClockInOutForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserClockInOutForViewDto.fromJson(value));
    }
    return map;
  }
}

