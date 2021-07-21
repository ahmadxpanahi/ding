part of swagger.api;

class GetStateForEditOutput {
  
  CreateOrEditStateDto? state = null;
  

  String? countryName = null;
  
  GetStateForEditOutput();

  @override
  String toString() {
    return 'GetStateForEditOutput[state=$state, countryName=$countryName, ]';
  }

  GetStateForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    state =
      
      
      new CreateOrEditStateDto.fromJson(json['state'])
;
    countryName =
        json['countryName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'countryName': countryName
     };
  }

  static List<GetStateForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetStateForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetStateForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetStateForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetStateForEditOutput.fromJson(value));
    }
    return map;
  }
}

