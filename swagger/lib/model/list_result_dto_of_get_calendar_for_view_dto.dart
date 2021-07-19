part of swagger.api;

class ListResultDtoOfGetCalendarForViewDto {
  
  List<GetCalendarForViewDto> items = [];
  
  ListResultDtoOfGetCalendarForViewDto();

  @override
  String toString() {
    return 'ListResultDtoOfGetCalendarForViewDto[items=$items, ]';
  }

  ListResultDtoOfGetCalendarForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetCalendarForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetCalendarForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetCalendarForViewDto>() : json.map((value) => new ListResultDtoOfGetCalendarForViewDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetCalendarForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetCalendarForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetCalendarForViewDto.fromJson(value));
    }
    return map;
  }
}

