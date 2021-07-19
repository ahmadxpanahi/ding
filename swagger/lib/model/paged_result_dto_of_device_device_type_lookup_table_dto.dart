part of swagger.api;

class PagedResultDtoOfDeviceDeviceTypeLookupTableDto {
  
  int? totalCount = null;
  

  List<DeviceDeviceTypeLookupTableDto> items = [];
  
  PagedResultDtoOfDeviceDeviceTypeLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfDeviceDeviceTypeLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfDeviceDeviceTypeLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      DeviceDeviceTypeLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfDeviceDeviceTypeLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfDeviceDeviceTypeLookupTableDto>() : json.map((value) => new PagedResultDtoOfDeviceDeviceTypeLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfDeviceDeviceTypeLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfDeviceDeviceTypeLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfDeviceDeviceTypeLookupTableDto.fromJson(value));
    }
    return map;
  }
}

