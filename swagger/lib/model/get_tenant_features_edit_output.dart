part of swagger.api;

class GetTenantFeaturesEditOutput {
  
  List<NameValueDto> featureValues = [];
  

  List<FlatFeatureDto> features = [];
  
  GetTenantFeaturesEditOutput();

  @override
  String toString() {
    return 'GetTenantFeaturesEditOutput[featureValues=$featureValues, features=$features, ]';
  }

  GetTenantFeaturesEditOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    featureValues =
      NameValueDto.listFromJson(json['featureValues'])
;
    features =
      FlatFeatureDto.listFromJson(json['features'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'featureValues': featureValues,
      'features': features
     };
  }

  static List<GetTenantFeaturesEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTenantFeaturesEditOutput>() : json.map((value) => new GetTenantFeaturesEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetTenantFeaturesEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTenantFeaturesEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTenantFeaturesEditOutput.fromJson(value));
    }
    return map;
  }
}

