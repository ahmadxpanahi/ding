part of swagger.api;

class GetDeviceTypeForViewDto {
  
  DeviceTypeDto? deviceType = null;
  
  GetDeviceTypeForViewDto();

  @override
  String toString() {
    return 'GetDeviceTypeForViewDto[deviceType=$deviceType, ]';
  }

  GetDeviceTypeForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    deviceType =
      
      
      new DeviceTypeDto.fromJson(json['deviceType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceType': deviceType
     };
  }

  static List<GetDeviceTypeForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetDeviceTypeForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetDeviceTypeForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDeviceTypeForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDeviceTypeForViewDto.fromJson(value));
    }
    return map;
  }
}

