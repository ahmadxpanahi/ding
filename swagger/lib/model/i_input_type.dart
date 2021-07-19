part of swagger.api;

class IInputType {
  
  String? name = null;
  

  Map<String, Object> attributes = {};
  

  IValueValidator? validator = null;
  
  IInputType();

  @override
  String toString() {
    return 'IInputType[name=$name, attributes=$attributes, validator=$validator, ]';
  }

  IInputType.fromJson(Map<String, dynamic>? json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'attributes': attributes,
      'validator': validator
     };
  }

  static List<IInputType> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new IInputType.fromJson(value)).toList();
  }

  static Map<String, IInputType> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, IInputType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IInputType.fromJson(value));
    }
    return map;
  }
}

