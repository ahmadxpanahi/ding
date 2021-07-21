part of swagger.api;

class CreateOrEditCityDto {
  
  String? name = null;
  

  String? stateCode = null;
  

  String? countryCode = null;
  

  double? latitude = null;
  

  double? longitude = null;
  

  int? stateId = null;
  

  int? countryId = null;
  

  int? id = null;
  
  CreateOrEditCityDto();

  @override
  String toString() {
    return 'CreateOrEditCityDto[name=$name, stateCode=$stateCode, countryCode=$countryCode, latitude=$latitude, longitude=$longitude, stateId=$stateId, countryId=$countryId, id=$id, ]';
  }

  CreateOrEditCityDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    stateCode =
        json['stateCode']
    ;
    countryCode =
        json['countryCode']
    ;
    latitude =
        json['latitude'] == null ? null : json['latitude'].toDouble()
    ;
    longitude =
        json['longitude'] == null ? null : json['longitude'].toDouble()
    ;
    stateId =
        json['stateId']
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
      'stateCode': stateCode,
      'countryCode': countryCode,
      'latitude': latitude,
      'longitude': longitude,
      'stateId': stateId,
      'countryId': countryId,
      'id': id
     };
  }

  static List<CreateOrEditCityDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditCityDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditCityDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditCityDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditCityDto.fromJson(value));
    }
    return map;
  }
}

