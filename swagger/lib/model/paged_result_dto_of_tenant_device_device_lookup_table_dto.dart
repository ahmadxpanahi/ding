part of swagger.api;

class PagedResultDtoOfTenantDeviceDeviceLookupTableDto {
  
  int totalCount = null;
  

  List<TenantDeviceDeviceLookupTableDto> items = [];
  
  PagedResultDtoOfTenantDeviceDeviceLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfTenantDeviceDeviceLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfTenantDeviceDeviceLookupTableDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      TenantDeviceDeviceLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfTenantDeviceDeviceLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfTenantDeviceDeviceLookupTableDto>() : json.map((value) => new PagedResultDtoOfTenantDeviceDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfTenantDeviceDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfTenantDeviceDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfTenantDeviceDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

