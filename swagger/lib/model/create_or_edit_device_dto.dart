part of swagger.api;

class CreateOrEditDeviceDto {
  
  String serialNumber = null;
  

  String qrCode = null;
  

  String password = null;
  

  String bssId = null;
  

  String ssId = null;
  

  String uuId = null;
  

  String major = null;
  

  String minor = null;
  

  String name = null;
  

  int deviceType = null;
  

  DeviceStatus deviceStatus = null;
  

  int id = null;
  
  CreateOrEditDeviceDto();

  @override
  String toString() {
    return 'CreateOrEditDeviceDto[serialNumber=$serialNumber, qrCode=$qrCode, password=$password, bssId=$bssId, ssId=$ssId, uuId=$uuId, major=$major, minor=$minor, name=$name, deviceType=$deviceType, deviceStatus=$deviceStatus, id=$id, ]';
  }

  CreateOrEditDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serialNumber =
        json['serialNumber']
    ;
    qrCode =
        json['qrCode']
    ;
    password =
        json['password']
    ;
    bssId =
        json['bssId']
    ;
    ssId =
        json['ssId']
    ;
    uuId =
        json['uuId']
    ;
    major =
        json['major']
    ;
    minor =
        json['minor']
    ;
    name =
        json['name']
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
      'password': password,
      'bssId': bssId,
      'ssId': ssId,
      'uuId': uuId,
      'major': major,
      'minor': minor,
      'name': name,
      'deviceType': deviceType,
      'deviceStatus': deviceStatus,
      'id': id
     };
  }

  static List<CreateOrEditDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditDeviceDto>() : json.map((value) => new CreateOrEditDeviceDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditDeviceDto.fromJson(value));
    }
    return map;
  }
}

