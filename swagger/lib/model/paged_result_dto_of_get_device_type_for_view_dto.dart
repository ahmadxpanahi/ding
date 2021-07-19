part of swagger.api;

class PagedResultDtoOfGetDeviceTypeForViewDto {
  
  int totalCount = null;
  

  List<GetDeviceTypeForViewDto> items = [];
  
  PagedResultDtoOfGetDeviceTypeForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetDeviceTypeForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetDeviceTypeForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetDeviceTypeForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetDeviceTypeForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetDeviceTypeForViewDto>() : json.map((value) => new PagedResultDtoOfGetDeviceTypeForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetDeviceTypeForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetDeviceTypeForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetDeviceTypeForViewDto.fromJson(value));
    }
    return map;
  }
}

