part of swagger.api;

class NameValueOfString {
  
  String? name = null;
  

  String? value = null;
  
  NameValueOfString();

  @override
  String toString() {
    return 'NameValueOfString[name=$name, value=$value, ]';
  }

  NameValueOfString.fromJson(Map<String, dynamic>? json) {
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

  static List<NameValueOfString> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new NameValueOfString.fromJson(value)).toList();
  }

  static Map<String, NameValueOfString> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, NameValueOfString>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new NameValueOfString.fromJson(value));
    }
    return map;
  }
}

