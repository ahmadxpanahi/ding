part of swagger.api;

class EditionWithFeaturesDto {
  
  EditionSelectDto? edition = null;
  

  List<NameValueDto> featureValues = [];
  
  EditionWithFeaturesDto();

  @override
  String toString() {
    return 'EditionWithFeaturesDto[edition=$edition, featureValues=$featureValues, ]';
  }

  EditionWithFeaturesDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    edition =
      
      
      new EditionSelectDto.fromJson(json['edition'])
;
    featureValues =
      NameValueDto.listFromJson(json['featureValues'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'edition': edition,
      'featureValues': featureValues
     };
  }

  static List<EditionWithFeaturesDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new EditionWithFeaturesDto.fromJson(value)).toList();
  }

  static Map<String, EditionWithFeaturesDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionWithFeaturesDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionWithFeaturesDto.fromJson(value));
    }
    return map;
  }
}

