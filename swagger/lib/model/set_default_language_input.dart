part of swagger.api;

class SetDefaultLanguageInput {
  
  String? name = null;
  
  SetDefaultLanguageInput();

  @override
  String toString() {
    return 'SetDefaultLanguageInput[name=$name, ]';
  }

  SetDefaultLanguageInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<SetDefaultLanguageInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SetDefaultLanguageInput.fromJson(value)).toList();
  }

  static Map<String, SetDefaultLanguageInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SetDefaultLanguageInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SetDefaultLanguageInput.fromJson(value));
    }
    return map;
  }
}

