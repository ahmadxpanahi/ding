part of swagger.api;

class ListResultDtoOfSubscribableEditionComboboxItemDto {
  
  List<SubscribableEditionComboboxItemDto> items = [];
  
  ListResultDtoOfSubscribableEditionComboboxItemDto();

  @override
  String toString() {
    return 'ListResultDtoOfSubscribableEditionComboboxItemDto[items=$items, ]';
  }

  ListResultDtoOfSubscribableEditionComboboxItemDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      SubscribableEditionComboboxItemDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfSubscribableEditionComboboxItemDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfSubscribableEditionComboboxItemDto>() : json.map((value) => new ListResultDtoOfSubscribableEditionComboboxItemDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfSubscribableEditionComboboxItemDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfSubscribableEditionComboboxItemDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfSubscribableEditionComboboxItemDto.fromJson(value));
    }
    return map;
  }
}

