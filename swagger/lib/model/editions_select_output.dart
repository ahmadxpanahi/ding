part of swagger.api;

class EditionsSelectOutput {
  
  List<FlatFeatureSelectDto> allFeatures = [];
  

  List<EditionWithFeaturesDto> editionsWithFeatures = [];
  
  EditionsSelectOutput();

  @override
  String toString() {
    return 'EditionsSelectOutput[allFeatures=$allFeatures, editionsWithFeatures=$editionsWithFeatures, ]';
  }

  EditionsSelectOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    allFeatures =
      FlatFeatureSelectDto.listFromJson(json['allFeatures'])
;
    editionsWithFeatures =
      EditionWithFeaturesDto.listFromJson(json['editionsWithFeatures'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'allFeatures': allFeatures,
      'editionsWithFeatures': editionsWithFeatures
     };
  }

  static List<EditionsSelectOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EditionsSelectOutput.fromJson(value)).toList();
  }

  static Map<String, EditionsSelectOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionsSelectOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionsSelectOutput.fromJson(value));
    }
    return map;
  }
}

