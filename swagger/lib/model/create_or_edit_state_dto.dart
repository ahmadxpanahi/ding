part of swagger.api;

class CreateOrEditStateDto {
  
  String name = null;
  

  String countryCode = null;
  

  String stateCode = null;
  

  int countryId = null;
  

  int id = null;
  
  CreateOrEditStateDto();

  @override
  String toString() {
    return 'CreateOrEditStateDto[name=$name, countryCode=$countryCode, stateCode=$stateCode, countryId=$countryId, id=$id, ]';
  }

  CreateOrEditStateDto.fromJson(Map<String, dynamic> json) {
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

  static List<CreateOrEditStateDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateOrEditStateDto>() : json.map((value) => new CreateOrEditStateDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditStateDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditStateDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditStateDto.fromJson(value));
    }
    return map;
  }
}

