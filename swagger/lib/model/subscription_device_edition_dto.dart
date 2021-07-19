part of swagger.api;

class SubscriptionDeviceEditionDto {
  
  int? tenantId = null;
  

  int? deviceId = null;
  

  EditionSelectDto? editionSelect = null;
  
  SubscriptionDeviceEditionDto();

  @override
  String toString() {
    return 'SubscriptionDeviceEditionDto[tenantId=$tenantId, deviceId=$deviceId, editionSelect=$editionSelect, ]';
  }

  SubscriptionDeviceEditionDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    deviceId =
        json['deviceId']
    ;
    editionSelect =
      
      
      new EditionSelectDto.fromJson(json['editionSelect'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'deviceId': deviceId,
      'editionSelect': editionSelect
     };
  }

  static List<SubscriptionDeviceEditionDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<SubscriptionDeviceEditionDto>() : json.map((value) => new SubscriptionDeviceEditionDto.fromJson(value)).toList();
  }

  static Map<String, SubscriptionDeviceEditionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubscriptionDeviceEditionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubscriptionDeviceEditionDto.fromJson(value));
    }
    return map;
  }
}

