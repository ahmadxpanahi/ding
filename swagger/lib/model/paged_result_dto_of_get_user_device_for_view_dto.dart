part of swagger.api;

class PagedResultDtoOfGetUserDeviceForViewDto {
  
  int? totalCount = null;
  

  List<GetUserDeviceForViewDto> items = [];
  
  PagedResultDtoOfGetUserDeviceForViewDto();

  @override
  String toString() {
    return 'PagedResultDtoOfGetUserDeviceForViewDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetUserDeviceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetUserDeviceForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetUserDeviceForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetUserDeviceForViewDto>() : json.map((value) => new PagedResultDtoOfGetUserDeviceForViewDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetUserDeviceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetUserDeviceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetUserDeviceForViewDto.fromJson(value));
    }
    return map;
  }
}

