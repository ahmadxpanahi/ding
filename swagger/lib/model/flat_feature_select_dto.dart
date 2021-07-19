part of swagger.api;

class FlatFeatureSelectDto {
  
  String? parentName = null;
  

  String? name = null;
  

  String? displayName = null;
  

  String? description = null;
  

  String? defaultValue = null;
  

  IInputType? inputType = null;
  

  String? textHtmlColor = null;
  
  FlatFeatureSelectDto();

  @override
  String toString() {
    return 'FlatFeatureSelectDto[parentName=$parentName, name=$name, displayName=$displayName, description=$description, defaultValue=$defaultValue, inputType=$inputType, textHtmlColor=$textHtmlColor, ]';
  }

  FlatFeatureSelectDto.fromJson(Map<String, dynamic>? json) {
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
      
      
      new IInputType.fromJson(json['inputType'])
;
    textHtmlColor =
        json['textHtmlColor']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'parentName': parentName,
      'name': name,
      'displayName': displayName,
      'description': description,
      'defaultValue': defaultValue,
      'inputType': inputType,
      'textHtmlColor': textHtmlColor
     };
  }

  static List<FlatFeatureSelectDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<FlatFeatureSelectDto>() : json.map((value) => new FlatFeatureSelectDto.fromJson(value)).toList();
  }

  static Map<String, FlatFeatureSelectDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FlatFeatureSelectDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FlatFeatureSelectDto.fromJson(value));
    }
    return map;
  }
}

