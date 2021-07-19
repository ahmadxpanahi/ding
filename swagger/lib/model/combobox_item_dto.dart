part of swagger.api;

class ComboboxItemDto {
  
  String? value = null;
  

  String? displayText = null;
  

  bool? isSelected = null;
  
  ComboboxItemDto();

  @override
  String toString() {
    return 'ComboboxItemDto[value=$value, displayText=$displayText, isSelected=$isSelected, ]';
  }

  ComboboxItemDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    value =
        json['value']
    ;
    displayText =
        json['displayText']
    ;
    isSelected =
        json['isSelected']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'displayText': displayText,
      'isSelected': isSelected
     };
  }

  static List<ComboboxItemDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<ComboboxItemDto>() : json.map((value) => new ComboboxItemDto.fromJson(value)).toList();
  }

  static Map<String, ComboboxItemDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ComboboxItemDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ComboboxItemDto.fromJson(value));
    }
    return map;
  }
}

