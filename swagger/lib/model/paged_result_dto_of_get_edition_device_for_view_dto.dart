part of swagger.api;

class PagedResultDtoOfGetEditionDeviceForViewDto {
  
  int? totalCount = null;
  

  List<GetEditionDeviceForViewDto> items = [];
  
  PagedResultDtoOfGetEditionDeviceForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetEditionDeviceForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetEditionDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetEditionDeviceForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetEditionDeviceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetEditionDeviceForViewDto>() : json.map((value) => new PagedResultDtoOfGetEditionDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetEditionDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetEditionDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetEditionDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

