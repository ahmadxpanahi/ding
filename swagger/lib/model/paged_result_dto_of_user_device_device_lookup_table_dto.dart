part of swagger.api;

class PagedResultDtoOfUserDeviceDeviceLookupTableDto {
  
  int? totalCount = null;
  

  List<UserDeviceDeviceLookupTableDto> items = [];
  
  PagedResultDtoOfUserDeviceDeviceLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserDeviceDeviceLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserDeviceDeviceLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserDeviceDeviceLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserDeviceDeviceLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfUserDeviceDeviceLookupTableDto>() : json.map((value) => new PagedResultDtoOfUserDeviceDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserDeviceDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserDeviceDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserDeviceDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

