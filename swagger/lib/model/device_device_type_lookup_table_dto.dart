part of swagger.api;

class DeviceDeviceTypeLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  DeviceDeviceTypeLookupTableDto();

  @override
  String toString() {
    return 'DeviceDeviceTypeLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  DeviceDeviceTypeLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName
     };
  }

  static List<DeviceDeviceTypeLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<DeviceDeviceTypeLookupTableDto>() : json.map((value) => new DeviceDeviceTypeLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, DeviceDeviceTypeLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DeviceDeviceTypeLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DeviceDeviceTypeLookupTableDto.fromJson(value));
    }
    return map;
  }
}

