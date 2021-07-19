part of swagger.api;

class ListResultDtoOfEditionListDto {
  
  List<EditionListDto> items = [];
  
  ListResultDtoOfEditionListDto();

  @override
  String toString() {
    return 'ListResultDtoOfEditionListDto[items=$items, ]';
  }

  ListResultDtoOfEditionListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      EditionListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfEditionListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfEditionListDto>() : json.map((value) => new ListResultDtoOfEditionListDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfEditionListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfEditionListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfEditionListDto.fromJson(value));
    }
    return map;
  }
}

