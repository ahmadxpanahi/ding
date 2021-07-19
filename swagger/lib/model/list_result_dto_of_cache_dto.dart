part of swagger.api;

class ListResultDtoOfCacheDto {
  
  List<CacheDto> items = [];
  
  ListResultDtoOfCacheDto();

  @override
  String toString() {
    return 'ListResultDtoOfCacheDto[items=$items, ]';
  }

  ListResultDtoOfCacheDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      CacheDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfCacheDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfCacheDto>() : json.map((value) => new ListResultDtoOfCacheDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfCacheDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfCacheDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfCacheDto.fromJson(value));
    }
    return map;
  }
}

