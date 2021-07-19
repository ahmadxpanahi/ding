part of swagger.api;

class PagedResultDtoOfGetDeviceForViewDto {
  
  int? totalCount = null;
  

  List<GetDeviceForViewDto> items = [];
  
  PagedResultDtoOfGetDeviceForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetDeviceForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetDeviceForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetDeviceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetDeviceForViewDto>() : json.map((value) => new PagedResultDtoOfGetDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

