part of swagger.api;

class UpdateLanguageTextInput {
  
  String? languageName = null;
  

  String? sourceName = null;
  

  String? key = null;
  

  String? value = null;
  
  UpdateLanguageTextInput();

  @override
  String toString() {
    return 'UpdateLanguageTextInput[languageName=$languageName, sourceName=$sourceName, key=$key, value=$value, ]';
  }

  UpdateLanguageTextInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    languageName =
        json['languageName']
    ;
    sourceName =
        json['sourceName']
    ;
    key =
        json['key']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'languageName': languageName,
      'sourceName': sourceName,
      'key': key,
      'value': value
     };
  }

  static List<UpdateLanguageTextInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UpdateLanguageTextInput.fromJson(value)).toList();
  }

  static Map<String, UpdateLanguageTextInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateLanguageTextInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateLanguageTextInput.fromJson(value));
    }
    return map;
  }
}

