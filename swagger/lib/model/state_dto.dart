part of swagger.api;

class StateDto {
  
  String? name = null;
  

  String? countryCode = null;
  

  String? stateCode = null;
  

  int? countryId = null;
  

  int? id = null;
  
  StateDto();

  @override
  String toString() {
    return 'StateDto[name=$name, countryCode=$countryCode, stateCode=$stateCode, countryId=$countryId, id=$id, ]';
  }

  StateDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    countryCode =
        json['countryCode']
    ;
    stateCode =
        json['stateCode']
    ;
    countryId =
        json['countryId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'countryCode': countryCode,
      'stateCode': stateCode,
      'countryId': countryId,
      'id': id
     };
  }

  static List<StateDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<StateDto>() : json.map((value) => new StateDto.fromJson(value)).toList();
  }

  static Map<String, StateDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StateDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StateDto.fromJson(value));
    }
    return map;
  }
}

