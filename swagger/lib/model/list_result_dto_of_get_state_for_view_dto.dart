part of swagger.api;

class ListResultDtoOfGetStateForViewDto {
  
  List<GetStateForViewDto> items = [];
  
  ListResultDtoOfGetStateForViewDto();

  @override
  String toString() {
    return 'ListResultDtoOfGetStateForViewDto[items=$items, ]';
  }

  ListResultDtoOfGetStateForViewDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetStateForViewDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetStateForViewDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetStateForViewDto>() : json.map((value) => new ListResultDtoOfGetStateForViewDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetStateForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetStateForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetStateForViewDto.fromJson(value));
    }
    return map;
  }
}

