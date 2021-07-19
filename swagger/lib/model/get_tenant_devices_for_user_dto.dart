part of swagger.api;

class GetTenantDevicesForUserDto {
  
  int userId = null;
  

  int deviceId = null;
  

  String deviceName = null;
  

  String deviceSerialNumber = null;
  

  String deviceTypeName = null;
  

  int dayCount = null;
  

  int maxUserCount = null;
  

  int maxLocationCount = null;
  

  int usedUserCount = null;
  

  int usedLocationCount = null;
  

  bool isAssigned = null;
  

  int id = null;
  
  GetTenantDevicesForUserDto();

  @override
  String toString() {
    return 'GetTenantDevicesForUserDto[userId=$userId, deviceId=$deviceId, deviceName=$deviceName, deviceSerialNumber=$deviceSerialNumber, deviceTypeName=$deviceTypeName, dayCount=$dayCount, maxUserCount=$maxUserCount, maxLocationCount=$maxLocationCount, usedUserCount=$usedUserCount, usedLocationCount=$usedLocationCount, isAssigned=$isAssigned, id=$id, ]';
  }

  GetTenantDevicesForUserDto.fromJson(Map<String, dynamic> json) {
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
    dayCount =
        json['dayCount']
    ;
    maxUserCount =
        json['maxUserCount']
    ;
    maxLocationCount =
        json['maxLocationCount']
    ;
    usedUserCount =
        json['usedUserCount']
    ;
    usedLocationCount =
        json['usedLocationCount']
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
      'dayCount': dayCount,
      'maxUserCount': maxUserCount,
      'maxLocationCount': maxLocationCount,
      'usedUserCount': usedUserCount,
      'usedLocationCount': usedLocationCount,
      'isAssigned': isAssigned,
      'id': id
     };
  }

  static List<GetTenantDevicesForUserDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTenantDevicesForUserDto>() : json.map((value) => new GetTenantDevicesForUserDto.fromJson(value)).toList();
  }

  static Map<String, GetTenantDevicesForUserDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTenantDevicesForUserDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTenantDevicesForUserDto.fromJson(value));
    }
    return map;
  }
}

