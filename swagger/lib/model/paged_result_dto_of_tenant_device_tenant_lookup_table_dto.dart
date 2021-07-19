part of swagger.api;

class PagedResultDtoOfTenantDeviceTenantLookupTableDto {
  
  int totalCount = null;
  

  List<TenantDeviceTenantLookupTableDto> items = [];
  
  PagedResultDtoOfTenantDeviceTenantLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfTenantDeviceTenantLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfTenantDeviceTenantLookupTableDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      TenantDeviceTenantLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfTenantDeviceTenantLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfTenantDeviceTenantLookupTableDto>() : json.map((value) => new PagedResultDtoOfTenantDeviceTenantLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfTenantDeviceTenantLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfTenantDeviceTenantLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfTenantDeviceTenantLookupTableDto.fromJson(value));
    }
    return map;
  }
}

