part of swagger.api;

class SupportDeviceLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  

  String? serialNumber = null;
  
  SupportDeviceLookupTableDto();

  @override
  String toString() {
    return 'SupportDeviceLookupTableDto[id=$id, displayName=$displayName, serialNumber=$serialNumber, ]';
  }

  SupportDeviceLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
    serialNumber =
        json['serialNumber']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'serialNumber': serialNumber
     };
  }

  static List<SupportDeviceLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new SupportDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, SupportDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SupportDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SupportDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

