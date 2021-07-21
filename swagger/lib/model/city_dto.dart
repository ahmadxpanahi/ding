part of swagger.api;

class CityDto {
  
  String? name = null;
  

  String? stateCode = null;
  

  String? countryCode = null;
  

  double? latitude = null;
  

  double? longitude = null;
  

  int? stateId = null;
  

  int? countryId = null;
  

  int? id = null;
  
  CityDto();

  @override
  String toString() {
    return 'CityDto[name=$name, stateCode=$stateCode, countryCode=$countryCode, latitude=$latitude, longitude=$longitude, stateId=$stateId, countryId=$countryId, id=$id, ]';
  }

  CityDto.fromJson(Map<String, dynamic>? json) {
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

  static List<CityDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CityDto.fromJson(value)).toList();
  }

  static Map<String, CityDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CityDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CityDto.fromJson(value));
    }
    return map;
  }
}

