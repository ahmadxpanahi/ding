part of swagger.api;

class SubscribableEditionComboboxItemDto {
  
  String? value = null;
  

  String? displayText = null;
  

  bool? isSelected = null;
  
  SubscribableEditionComboboxItemDto();

  @override
  String toString() {
    return 'SubscribableEditionComboboxItemDto[value=$value, displayText=$displayText, isSelected=$isSelected, ]';
  }

  SubscribableEditionComboboxItemDto.fromJson(Map<String, dynamic>? json) {
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

  static List<SubscribableEditionComboboxItemDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new SubscribableEditionComboboxItemDto.fromJson(value)).toList();
  }

  static Map<String, SubscribableEditionComboboxItemDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SubscribableEditionComboboxItemDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SubscribableEditionComboboxItemDto.fromJson(value));
    }
    return map;
  }
}

