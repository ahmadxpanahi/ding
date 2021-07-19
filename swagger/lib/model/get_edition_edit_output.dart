part of swagger.api;

class GetEditionEditOutput {
  
  EditionEditDto edition = null;
  

  List<NameValueDto> featureValues = [];
  

  List<FlatFeatureDto> features = [];
  
  GetEditionEditOutput();

  @override
  String toString() {
    return 'GetEditionEditOutput[edition=$edition, featureValues=$featureValues, features=$features, ]';
  }

  GetEditionEditOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    edition =
      
      
      new EditionEditDto.fromJson(json['edition'])
;
    featureValues =
      NameValueDto.listFromJson(json['featureValues'])
;
    features =
      FlatFeatureDto.listFromJson(json['features'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'edition': edition,
      'featureValues': featureValues,
      'features': features
     };
  }

  static List<GetEditionEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetEditionEditOutput>() : json.map((value) => new GetEditionEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetEditionEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEditionEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEditionEditOutput.fromJson(value));
    }
    return map;
  }
}

