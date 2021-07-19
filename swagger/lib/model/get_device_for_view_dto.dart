part of swagger.api;

class GetDeviceForViewDto {
  
  DeviceDto? device = null;
  

  String? deviceName = null;
  

  String? deviceTypeTitle = null;
  
  GetDeviceForViewDto();

  @override
  String toString() {
    return 'GetDeviceForViewDto[device=$device, deviceName=$deviceName, deviceTypeTitle=$deviceTypeTitle, ]';
  }

  GetDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    device =
      
      
      new DeviceDto.fromJson(json['device'])
;
    deviceName =
        json['deviceName']
    ;
    deviceTypeTitle =
        json['deviceTypeTitle']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'device': device,
      'deviceName': deviceName,
      'deviceTypeTitle': deviceTypeTitle
     };
  }

  static List<GetDeviceForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

