part of swagger.api;

class FlatFeatureDto {
  
  String? parentName = null;
  

  String? name = null;
  

  String? displayName = null;
  

  String? description = null;
  

  String? defaultValue = null;
  

  FeatureInputTypeDto? inputType = null;
  
  FlatFeatureDto();

  @override
  String toString() {
    return 'FlatFeatureDto[parentName=$parentName, name=$name, displayName=$displayName, description=$description, defaultValue=$defaultValue, inputType=$inputType, ]';
  }

  FlatFeatureDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    parentName =
        json['parentName']
    ;
    name =
        json['name']
    ;
    displayName =
        json['displayName']
    ;
    description =
        json['description']
    ;
    defaultValue =
        json['defaultValue']
    ;
    inputType =
      
      
      new FeatureInputTypeDto.fromJson(json['inputType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'parentName': parentName,
      'name': name,
      'displayName': displayName,
      'description': description,
      'defaultValue': defaultValue,
      'inputType': inputType
     };
  }

  static List<FlatFeatureDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new FlatFeatureDto.fromJson(value)).toList();
  }

  static Map<String, FlatFeatureDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FlatFeatureDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FlatFeatureDto.fromJson(value));
    }
    return map;
  }
}

