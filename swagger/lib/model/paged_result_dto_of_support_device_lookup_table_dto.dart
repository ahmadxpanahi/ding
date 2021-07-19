part of swagger.api;

class PagedResultDtoOfSupportDeviceLookupTableDto {
  
  int? totalCount = null;
  

  List<SupportDeviceLookupTableDto> items = [];
  
  PagedResultDtoOfSupportDeviceLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfSupportDeviceLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfSupportDeviceLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      SupportDeviceLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfSupportDeviceLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfSupportDeviceLookupTableDto>() : json.map((value) => new PagedResultDtoOfSupportDeviceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfSupportDeviceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfSupportDeviceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfSupportDeviceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

