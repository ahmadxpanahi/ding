part of swagger.api;

class FeatureInputTypeDto {
  
  String? name = null;
  

  Map<String, Object> attributes = {};
  

  IValueValidator? validator = null;
  

  LocalizableComboboxItemSourceDto? itemSource = null;
  
  FeatureInputTypeDto();

  @override
  String toString() {
    return 'FeatureInputTypeDto[name=$name, attributes=$attributes, validator=$validator, itemSource=$itemSource, ]';
  }

  FeatureInputTypeDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    attributes =
      
      mapFromJson(json['attributes'])
      
;
    validator =
      
      
      new IValueValidator.fromJson(json['validator'])
;
    itemSource =
      
      
      new LocalizableComboboxItemSourceDto.fromJson(json['itemSource'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'attributes': attributes,
      'validator': validator,
      'itemSource': itemSource
     };
  }

  static List<FeatureInputTypeDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new FeatureInputTypeDto.fromJson(value)).toList();
  }

  static Map<String, FeatureInputTypeDto> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FeatureInputTypeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FeatureInputTypeDto.fromJson(value));
    }
    return map;
  }
}

