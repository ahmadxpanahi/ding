part of swagger.api;

class NameValue {
  
  String? name = null;
  

  String? value = null;
  
  NameValue();

  @override
  String toString() {
    return 'NameValue[name=$name, value=$value, ]';
  }

  NameValue.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value
     };
  }

  static List<NameValue> listFromJson(List<dynamic>? json) {
    return json == null ? new List<NameValue>() : json.map((value) => new NameValue.fromJson(value)).toList();
  }

  static Map<String, NameValue> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NameValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NameValue.fromJson(value));
    }
    return map;
  }
}

