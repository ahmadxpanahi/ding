part of swagger.api;

class TenantDeviceDto {
  
  int deviceId = null;
  

  int tenantId = null;
  

  DateTime creationTime = null;
  

  int id = null;
  
  TenantDeviceDto();

  @override
  String toString() {
    return 'TenantDeviceDto[deviceId=$deviceId, tenantId=$tenantId, creationTime=$creationTime, id=$id, ]';
  }

  TenantDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceId =
        json['deviceId']
    ;
    tenantId =
        json['tenantId']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
      'tenantId': tenantId,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<TenantDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantDeviceDto>() : json.map((value) => new TenantDeviceDto.fromJson(value)).toList();
  }

  static Map<String, TenantDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantDeviceDto.fromJson(value));
    }
    return map;
  }
}

