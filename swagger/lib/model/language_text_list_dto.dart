part of swagger.api;

class LanguageTextListDto {
  
  String? key = null;
  

  String? baseValue = null;
  

  String? targetValue = null;
  
  LanguageTextListDto();

  @override
  String toString() {
    return 'LanguageTextListDto[key=$key, baseValue=$baseValue, targetValue=$targetValue, ]';
  }

  LanguageTextListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    key =
        json['key']
    ;
    baseValue =
        json['baseValue']
    ;
    targetValue =
        json['targetValue']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'baseValue': baseValue,
      'targetValue': targetValue
     };
  }

  static List<LanguageTextListDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new LanguageTextListDto.fromJson(value)).toList();
  }

  static Map<String, LanguageTextListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LanguageTextListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LanguageTextListDto.fromJson(value));
    }
    return map;
  }
}

