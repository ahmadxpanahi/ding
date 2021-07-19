part of swagger.api;

class GetPurchasingResourceForEditOutput {
  
  CreateOrEditPurchasingResourceDto? purchasingResource = null;
  
  GetPurchasingResourceForEditOutput();

  @override
  String toString() {
    return 'GetPurchasingResourceForEditOutput[purchasingResource=$purchasingResource, ]';
  }

  GetPurchasingResourceForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    purchasingResource =
      
      
      new CreateOrEditPurchasingResourceDto.fromJson(json['purchasingResource'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'purchasingResource': purchasingResource
     };
  }

  static List<GetPurchasingResourceForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetPurchasingResourceForEditOutput>() : json.map((value) => new GetPurchasingResourceForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetPurchasingResourceForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetPurchasingResourceForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetPurchasingResourceForEditOutput.fromJson(value));
    }
    return map;
  }
}

