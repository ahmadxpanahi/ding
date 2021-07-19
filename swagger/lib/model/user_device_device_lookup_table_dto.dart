part of swagger.api;

class UserDeviceDeviceLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  

  String? deviceSerialNumber = null;
  
  UserDeviceDeviceLookupTableDto();

  @override
  String toString() {
    return 'UserDeviceDeviceLookupTableDto[id=$id, displayName=$displayName, deviceSerialNumber=$deviceSerialNumber, ]';
  }

  UserDeviceDeviceLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
    deviceSerialNumber =
        json['deviceSerialNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'deviceSerialNumber': deviceSerialNumber
     };
  }

  static List<UserDeviceDeviceLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new UserDeviceDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, UserDeviceDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserDeviceDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserDeviceDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

