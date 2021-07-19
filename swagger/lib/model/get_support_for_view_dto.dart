part of swagger.api;

class GetSupportForViewDto {
  
  SupportDto? support = null;
  

  ListResultDtoOfGetSupportForViewDto? childAnswers = null;
  

  String? tenant = null;
  

  String? deviceName = null;
  

  String? userName = null;
  

  String? supportRequestSubject = null;
  

  DateTime? creationTime = null;
  
  GetSupportForViewDto();

  @override
  String toString() {
    return 'GetSupportForViewDto[support=$support, childAnswers=$childAnswers, tenant=$tenant, deviceName=$deviceName, userName=$userName, supportRequestSubject=$supportRequestSubject, creationTime=$creationTime, ]';
  }

  GetSupportForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    support =
      
      
      new SupportDto.fromJson(json['support'])
;
    childAnswers =
      
      
      new ListResultDtoOfGetSupportForViewDto.fromJson(json['childAnswers'])
;
    tenant =
        json['tenant']
    ;
    deviceName =
        json['deviceName']
    ;
    userName =
        json['userName']
    ;
    supportRequestSubject =
        json['supportRequestSubject']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'support': support,
      'childAnswers': childAnswers,
      'tenant': tenant,
      'deviceName': deviceName,
      'userName': userName,
      'supportRequestSubject': supportRequestSubject,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String()
     };
  }

  static List<GetSupportForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetSupportForViewDto>() : json.map((value) => new GetSupportForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetSupportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetSupportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetSupportForViewDto.fromJson(value));
    }
    return map;
  }
}

