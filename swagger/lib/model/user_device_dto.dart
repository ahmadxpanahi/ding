part of swagger.api;

class UserDeviceDto {
  
  int userId = null;
  

  int deviceId = null;
  

  String deviceName = null;
  

  String deviceSerialNumber = null;
  

  String deviceTypeName = null;
  

  bool isAssigned = null;
  

  int id = null;
  
  UserDeviceDto();

  @override
  String toString() {
    return 'UserDeviceDto[userId=$userId, deviceId=$deviceId, deviceName=$deviceName, deviceSerialNumber=$deviceSerialNumber, deviceTypeName=$deviceTypeName, isAssigned=$isAssigned, id=$id, ]';
  }

  UserDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    deviceId =
        json['deviceId']
    ;
    deviceName =
        json['deviceName']
    ;
    deviceSerialNumber =
        json['deviceSerialNumber']
    ;
    deviceTypeName =
        json['deviceTypeName']
    ;
    isAssigned =
        json['isAssigned']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'deviceId': deviceId,
      'deviceName': deviceName,
      'deviceSerialNumber': deviceSerialNumber,
      'deviceTypeName': deviceTypeName,
      'isAssigned': isAssigned,
      'id': id
     };
  }

  static List<UserDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserDeviceDto>() : json.map((value) => new UserDeviceDto.fromJson(value)).toList();
  }

  static Map<String, UserDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeviceDto.fromJson(value));
    }
    return map;
  }
}

