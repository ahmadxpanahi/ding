part of swagger.api;

class DeviceDto {
  
  String? serialNumber = null;
  

  String? qrCode = null;
  

  int? deviceType = null;
  

  DeviceStatus? deviceStatus = null;
  

  int? id = null;
  
  DeviceDto();

  @override
  String toString() {
    return 'DeviceDto[serialNumber=$serialNumber, qrCode=$qrCode, deviceType=$deviceType, deviceStatus=$deviceStatus, id=$id, ]';
  }

  DeviceDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    serialNumber =
        json['serialNumber']
    ;
    qrCode =
        json['qrCode']
    ;
    deviceType =
        json['deviceType']
    ;
    deviceStatus =
      
      
      new DeviceStatus.fromJson(json['deviceStatus'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'serialNumber': serialNumber,
      'qrCode': qrCode,
      'deviceType': deviceType,
      'deviceStatus': deviceStatus,
      'id': id
     };
  }

  static List<DeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<DeviceDto>() : json.map((value) => new DeviceDto.fromJson(value)).toList();
  }

  static Map<String, DeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceDto.fromJson(value));
    }
    return map;
  }
}

