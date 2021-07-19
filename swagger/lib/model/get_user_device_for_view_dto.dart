part of swagger.api;

class GetUserDeviceForViewDto {
  
  UserDeviceDto? userDevice = null;
  

  String? userName = null;
  

  String? userPhoneNumber = null;
  

  String? deviceName = null;
  

  String? deviceSerialNumber = null;
  
  GetUserDeviceForViewDto();

  @override
  String toString() {
    return 'GetUserDeviceForViewDto[userDevice=$userDevice, userName=$userName, userPhoneNumber=$userPhoneNumber, deviceName=$deviceName, deviceSerialNumber=$deviceSerialNumber, ]';
  }

  GetUserDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userDevice =
      
      
      new UserDeviceDto.fromJson(json['userDevice'])
;
    userName =
        json['userName']
    ;
    userPhoneNumber =
        json['userPhoneNumber']
    ;
    deviceName =
        json['deviceName']
    ;
    deviceSerialNumber =
        json['deviceSerialNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userDevice': userDevice,
      'userName': userName,
      'userPhoneNumber': userPhoneNumber,
      'deviceName': deviceName,
      'deviceSerialNumber': deviceSerialNumber
     };
  }

  static List<GetUserDeviceForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetUserDeviceForViewDto>() : json.map((value) => new GetUserDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetUserDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetUserDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetUserDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

