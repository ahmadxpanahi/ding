part of swagger.api;

class TenantDeviceDeviceLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  

  String? deviceSerialNumber = null;
  
  TenantDeviceDeviceLookupTableDto();

  @override
  String toString() {
    return 'TenantDeviceDeviceLookupTableDto[id=$id, displayName=$displayName, deviceSerialNumber=$deviceSerialNumber, ]';
  }

  TenantDeviceDeviceLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<TenantDeviceDeviceLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new TenantDeviceDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, TenantDeviceDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantDeviceDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantDeviceDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

