part of swagger.api;

class GetCityForEditOutput {
  
  CreateOrEditCityDto? city = null;
  

  String? stateName = null;
  

  String? countryName = null;
  
  GetCityForEditOutput();

  @override
  String toString() {
    return 'GetCityForEditOutput[city=$city, stateName=$stateName, countryName=$countryName, ]';
  }

  GetCityForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    city =
      
      
      new CreateOrEditCityDto.fromJson(json['city'])
;
    stateName =
        json['stateName']
    ;
    countryName =
        json['countryName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'city': city,
      'stateName': stateName,
      'countryName': countryName
     };
  }

  static List<GetCityForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetCityForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetCityForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCityForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCityForEditOutput.fromJson(value));
    }
    return map;
  }
}

