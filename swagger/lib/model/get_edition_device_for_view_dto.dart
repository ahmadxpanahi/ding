part of swagger.api;

class GetEditionDeviceForViewDto {
  
  EditionDeviceDto? editionDevice = null;
  

  String? deviceName = null;
  

  String? deviceSerialNumber = null;
  

  String? deviceTypeName = null;
  

  DeviceStatus? deviceStatus = null;
  

  int? usedUserCount = null;
  

  int? usedLocationCount = null;
  

  String? purchasingResourceTitle = null;
  
  GetEditionDeviceForViewDto();

  @override
  String toString() {
    return 'GetEditionDeviceForViewDto[editionDevice=$editionDevice, deviceName=$deviceName, deviceSerialNumber=$deviceSerialNumber, deviceTypeName=$deviceTypeName, deviceStatus=$deviceStatus, usedUserCount=$usedUserCount, usedLocationCount=$usedLocationCount, purchasingResourceTitle=$purchasingResourceTitle, ]';
  }

  GetEditionDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionDevice =
      
      
      new EditionDeviceDto.fromJson(json['editionDevice'])
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
    deviceStatus =
      
      
      new DeviceStatus.fromJson(json['deviceStatus'])
;
    usedUserCount =
        json['usedUserCount']
    ;
    usedLocationCount =
        json['usedLocationCount']
    ;
    purchasingResourceTitle =
        json['purchasingResourceTitle']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionDevice': editionDevice,
      'deviceName': deviceName,
      'deviceSerialNumber': deviceSerialNumber,
      'deviceTypeName': deviceTypeName,
      'deviceStatus': deviceStatus,
      'usedUserCount': usedUserCount,
      'usedLocationCount': usedLocationCount,
      'purchasingResourceTitle': purchasingResourceTitle
     };
  }

  static List<GetEditionDeviceForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetEditionDeviceForViewDto>() : json.map((value) => new GetEditionDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetEditionDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEditionDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEditionDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

