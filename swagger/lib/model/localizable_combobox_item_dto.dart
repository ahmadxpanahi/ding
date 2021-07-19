part of swagger.api;

class LocalizableComboboxItemDto {
  
  String value = null;
  

  String displayText = null;
  
  LocalizableComboboxItemDto();

  @override
  String toString() {
    return 'LocalizableComboboxItemDto[value=$value, displayText=$displayText, ]';
  }

  LocalizableComboboxItemDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    value =
        json['value']
    ;
    displayText =
        json['displayText']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'displayText': displayText
     };
  }

  static List<LocalizableComboboxItemDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<LocalizableComboboxItemDto>() : json.map((value) => new LocalizableComboboxItemDto.fromJson(value)).toList();
  }

  static Map<String, LocalizableComboboxItemDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LocalizableComboboxItemDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LocalizableComboboxItemDto.fromJson(value));
    }
    return map;
  }
}

