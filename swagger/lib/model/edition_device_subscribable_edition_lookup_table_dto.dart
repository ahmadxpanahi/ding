part of swagger.api;

class EditionDeviceSubscribableEditionLookupTableDto {
  
  int? id = null;
  

  String? displayName = null;
  

  double? price = null;
  

  int? dayCount = null;
  
  EditionDeviceSubscribableEditionLookupTableDto();

  @override
  String toString() {
    return 'EditionDeviceSubscribableEditionLookupTableDto[id=$id, displayName=$displayName, price=$price, dayCount=$dayCount, ]';
  }

  EditionDeviceSubscribableEditionLookupTableDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    displayName =
        json['displayName']
    ;
    price =
        json['price'] == null ? null : json['price'].toDouble()
    ;
    dayCount =
        json['dayCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'displayName': displayName,
      'price': price,
      'dayCount': dayCount
     };
  }

  static List<EditionDeviceSubscribableEditionLookupTableDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new EditionDeviceSubscribableEditionLookupTableDto.fromJson(value)).toList();
  }

  static Map<String, EditionDeviceSubscribableEditionLookupTableDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionDeviceSubscribableEditionLookupTableDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionDeviceSubscribableEditionLookupTableDto.fromJson(value));
    }
    return map;
  }
}

