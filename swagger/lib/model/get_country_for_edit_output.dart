part of swagger.api;

class GetCountryForEditOutput {
  
  CreateOrEditCountryDto? country = null;
  
  GetCountryForEditOutput();

  @override
  String toString() {
    return 'GetCountryForEditOutput[country=$country, ]';
  }

  GetCountryForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    country =
      
      
      new CreateOrEditCountryDto.fromJson(json['country'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'country': country
     };
  }

  static List<GetCountryForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetCountryForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetCountryForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetCountryForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetCountryForEditOutput.fromJson(value));
    }
    return map;
  }
}

