part of swagger.api;

class CreateOrUpdateLanguageInput {
  
  ApplicationLanguageEditDto language = null;
  
  CreateOrUpdateLanguageInput();

  @override
  String toString() {
    return 'CreateOrUpdateLanguageInput[language=$language, ]';
  }

  CreateOrUpdateLanguageInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    language =
      
      
      new ApplicationLanguageEditDto.fromJson(json['language'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language
     };
  }

  static List<CreateOrUpdateLanguageInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrUpdateLanguageInput>() : json.map((value) => new CreateOrUpdateLanguageInput.fromJson(value)).toList();
  }

  static Map<String, CreateOrUpdateLanguageInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrUpdateLanguageInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrUpdateLanguageInput.fromJson(value));
    }
    return map;
  }
}

