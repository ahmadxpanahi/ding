part of swagger.api;

class PagedResultDtoOfGetTenantDeviceForViewDto {
  
  int? totalCount = null;
  

  List<GetTenantDeviceForViewDto> items = [];
  
  PagedResultDtoOfGetTenantDeviceForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetTenantDeviceForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetTenantDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetTenantDeviceForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetTenantDeviceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetTenantDeviceForViewDto>() : json.map((value) => new PagedResultDtoOfGetTenantDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetTenantDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetTenantDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetTenantDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

