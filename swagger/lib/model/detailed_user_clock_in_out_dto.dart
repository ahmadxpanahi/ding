part of swagger.api;

class DetailedUserClockInOutDto {
  
  DateTime? clock = null;
  

  String? clockString = null;
  

  UserClockInOutType? clockInOutType = null;
  
  DetailedUserClockInOutDto();

  @override
  String toString() {
    return 'DetailedUserClockInOutDto[clock=$clock, clockString=$clockString, clockInOutType=$clockInOutType, ]';
  }

  DetailedUserClockInOutDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    clock = json['clock'] == null ? null : DateTime.parse(json['clock']);
    clockString =
        json['clockString']
    ;
    clockInOutType =
      
      
      new UserClockInOutType.fromJson(json['clockInOutType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'clock': clock == null ? '' : clock!.toUtc().toIso8601String(),
      'clockString': clockString,
      'clockInOutType': clockInOutType
     };
  }

  static List<DetailedUserClockInOutDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<DetailedUserClockInOutDto>() : json.map((value) => new DetailedUserClockInOutDto.fromJson(value)).toList();
  }

  static Map<String, DetailedUserClockInOutDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DetailedUserClockInOutDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DetailedUserClockInOutDto.fromJson(value));
    }
    return map;
  }
}

