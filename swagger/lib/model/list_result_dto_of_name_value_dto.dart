part of swagger.api;

class ListResultDtoOfNameValueDto {
  
  List<NameValueDto> items = [];
  
  ListResultDtoOfNameValueDto();

  @override
  String toString() {
    return 'ListResultDtoOfNameValueDto[items=$items, ]';
  }

  ListResultDtoOfNameValueDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      NameValueDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfNameValueDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ListResultDtoOfNameValueDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfNameValueDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfNameValueDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfNameValueDto.fromJson(value));
    }
    return map;
  }
}

