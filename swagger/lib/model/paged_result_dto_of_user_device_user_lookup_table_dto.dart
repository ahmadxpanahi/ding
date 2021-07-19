part of swagger.api;

class PagedResultDtoOfUserDeviceUserLookupTableDto {
  
  int? totalCount = null;
  

  List<UserDeviceUserLookupTableDto> items = [];
  
  PagedResultDtoOfUserDeviceUserLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfUserDeviceUserLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfUserDeviceUserLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      UserDeviceUserLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfUserDeviceUserLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new PagedResultDtoOfUserDeviceUserLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfUserDeviceUserLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfUserDeviceUserLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfUserDeviceUserLookupTableDto.fromJson(value));
    }
    return map;
  }
}

