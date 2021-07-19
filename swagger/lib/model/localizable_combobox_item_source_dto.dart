part of swagger.api;

class LocalizableComboboxItemSourceDto {
  
  List<LocalizableComboboxItemDto> items = [];
  
  LocalizableComboboxItemSourceDto();

  @override
  String toString() {
    return 'LocalizableComboboxItemSourceDto[items=$items, ]';
  }

  LocalizableComboboxItemSourceDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      LocalizableComboboxItemDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<LocalizableComboboxItemSourceDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<LocalizableComboboxItemSourceDto>() : json.map((value) => new LocalizableComboboxItemSourceDto.fromJson(value)).toList();
  }

  static Map<String, LocalizableComboboxItemSourceDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LocalizableComboboxItemSourceDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LocalizableComboboxItemSourceDto.fromJson(value));
    }
    return map;
  }
}

