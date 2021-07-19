part of swagger.api;

class PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto {
  
  int? totalCount = null;
  

  List<EditionDeviceSubscribableEditionLookupTableDto> items = [];
  
  PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      EditionDeviceSubscribableEditionLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto>() : json.map((value) => new PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfEditionDeviceSubscribableEditionLookupTableDto.fromJson(value));
    }
    return map;
  }
}

