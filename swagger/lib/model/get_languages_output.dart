part of swagger.api;

class GetLanguagesOutput {
  
  String defaultLanguageName = null;
  

  List<ApplicationLanguageListDto> items = [];
  
  GetLanguagesOutput();

  @override
  String toString() {
    return 'GetLanguagesOutput[defaultLanguageName=$defaultLanguageName, items=$items, ]';
  }

  GetLanguagesOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    defaultLanguageName =
        json['defaultLanguageName']
    ;
    items =
      ApplicationLanguageListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'defaultLanguageName': defaultLanguageName,
      'items': items
     };
  }

  static List<GetLanguagesOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetLanguagesOutput>() : json.map((value) => new GetLanguagesOutput.fromJson(value)).toList();
  }

  static Map<String, GetLanguagesOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetLanguagesOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetLanguagesOutput.fromJson(value));
    }
    return map;
  }
}

