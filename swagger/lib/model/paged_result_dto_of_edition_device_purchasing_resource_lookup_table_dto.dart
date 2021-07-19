part of swagger.api;

class PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto {
  
  int? totalCount = null;
  

  List<EditionDevicePurchasingResourceLookupTableDto> items = [];
  
  PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto();

  @override
  String toString() {
    return 'PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      EditionDevicePurchasingResourceLookupTableDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto>() : json.map((value) => new PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfEditionDevicePurchasingResourceLookupTableDto.fromJson(value));
    }
    return map;
  }
}

