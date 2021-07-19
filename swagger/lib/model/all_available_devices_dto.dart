part of swagger.api;

class AllAvailableDevicesDto {
  
  int? id = null;
  

  String? deviceName = null;
  

  String? deviceSerialNumber = null;
  

  String? deviceTypeName = null;
  

  int? deviceStatus = null;
  
  AllAvailableDevicesDto();

  @override
  String toString() {
    return 'AllAvailableDevicesDto[id=$id, deviceName=$deviceName, deviceSerialNumber=$deviceSerialNumber, deviceTypeName=$deviceTypeName, deviceStatus=$deviceStatus, ]';
  }

  AllAvailableDevicesDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
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
        json['deviceStatus']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'deviceName': deviceName,
      'deviceSerialNumber': deviceSerialNumber,
      'deviceTypeName': deviceTypeName,
      'deviceStatus': deviceStatus
     };
  }

  static List<AllAvailableDevicesDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<AllAvailableDevicesDto>() : json.map((value) => new AllAvailableDevicesDto.fromJson(value)).toList();
  }

  static Map<String, AllAvailableDevicesDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AllAvailableDevicesDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AllAvailableDevicesDto.fromJson(value));
    }
    return map;
  }
}

