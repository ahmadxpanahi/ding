part of swagger.api;

class TenantDeviceTenantLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  
  TenantDeviceTenantLookupTableDto();

  @override
  String toString() {
    return 'TenantDeviceTenantLookupTableDto[id=$id, displayName=$displayName, ]';
  }

  TenantDeviceTenantLookupTableDto.fromJson(Map<String, dynamic>? json) {
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

  static List<TenantDeviceTenantLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new TenantDeviceTenantLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, TenantDeviceTenantLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantDeviceTenantLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantDeviceTenantLookupTableDto.fromJson(value));
    }
    return map;
  }
}

