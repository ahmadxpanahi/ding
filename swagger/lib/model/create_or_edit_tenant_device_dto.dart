part of swagger.api;

class CreateOrEditTenantDeviceDto {
  
  int deviceId = null;
  

  int tenantId = null;
  

  int id = null;
  
  CreateOrEditTenantDeviceDto();

  @override
  String toString() {
    return 'CreateOrEditTenantDeviceDto[deviceId=$deviceId, tenantId=$tenantId, id=$id, ]';
  }

  CreateOrEditTenantDeviceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    deviceId =
        json['deviceId']
    ;
    tenantId =
        json['tenantId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'deviceId': deviceId,
      'tenantId': tenantId,
      'id': id
     };
  }

  static List<CreateOrEditTenantDeviceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditTenantDeviceDto>() : json.map((value) => new CreateOrEditTenantDeviceDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditTenantDeviceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditTenantDeviceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditTenantDeviceDto.fromJson(value));
    }
    return map;
  }
}

