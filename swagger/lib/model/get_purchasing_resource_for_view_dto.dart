part of swagger.api;

class GetPurchasingResourceForViewDto {
  
  PurchasingResourceDto? purchasingResource = null;
  
  GetPurchasingResourceForViewDto();

  @override
  String toString() {
    return 'GetPurchasingResourceForViewDto[purchasingResource=$purchasingResource, ]';
  }

  GetPurchasingResourceForViewDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    purchasingResource =
      
      
      new PurchasingResourceDto.fromJson(json['purchasingResource'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'purchasingResource': purchasingResource
     };
  }

  static List<GetPurchasingResourceForViewDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetPurchasingResourceForViewDto.fromJson(value)).toList();
  }

  static Map<String, GetPurchasingResourceForViewDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetPurchasingResourceForViewDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetPurchasingResourceForViewDto.fromJson(value));
    }
    return map;
  }
}

