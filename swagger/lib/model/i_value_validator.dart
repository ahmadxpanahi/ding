part of swagger.api;

class IValueValidator {
  
  String name = null;
  

  Map<String, Object> attributes = {};
  
  IValueValidator();

  @override
  String toString() {
    return 'IValueValidator[name=$name, attributes=$attributes, ]';
  }

  IValueValidator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name =
        json['name']
    ;
    attributes =
      
      mapFromJson(json['attributes'])
      
;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'attributes': attributes
     };
  }

  static List<IValueValidator> listFromJson(List<dynamic> json) {
    return json == null ? new List<IValueValidator>() : json.map((value) => new IValueValidator.fromJson(value)).toList();
  }

  static Map<String, IValueValidator> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IValueValidator>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IValueValidator.fromJson(value));
    }
    return map;
  }
}

