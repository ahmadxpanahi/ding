part of swagger.api;

class ListResultDtoOfGetSupportForViewDto {
  
  List<GetSupportForViewDto> items = [];
  
  ListResultDtoOfGetSupportForViewDto();

  @override
  String toString() {
    return 'ListResultDtoOfGetSupportForViewDto[items=$items, ]';
  }

  ListResultDtoOfGetSupportForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetSupportForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetSupportForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetSupportForViewDto>() : json.map((value) => new ListResultDtoOfGetSupportForViewDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetSupportForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetSupportForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetSupportForViewDto.fromJson(value));
    }
    return map;
  }
}

