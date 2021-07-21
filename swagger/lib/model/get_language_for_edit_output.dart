part of swagger.api;

class GetLanguageForEditOutput {
  
  ApplicationLanguageEditDto? language = null;
  

  List<ComboboxItemDto> languageNames = [];
  

  List<ComboboxItemDto> flags = [];
  
  GetLanguageForEditOutput();

  @override
  String toString() {
    return 'GetLanguageForEditOutput[language=$language, languageNames=$languageNames, flags=$flags, ]';
  }

  GetLanguageForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    language =
      
      
      new ApplicationLanguageEditDto.fromJson(json['language'])
;
    languageNames =
      ComboboxItemDto.listFromJson(json['languageNames'])
;
    flags =
      ComboboxItemDto.listFromJson(json['flags'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'language': language,
      'languageNames': languageNames,
      'flags': flags
     };
  }

  static List<GetLanguageForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetLanguageForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetLanguageForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetLanguageForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetLanguageForEditOutput.fromJson(value));
    }
    return map;
  }
}

