part of swagger.api;

class UpdateTenantFeaturesInput {
  
  int id = null;
   // range from 1 to 2147483647//

  List<NameValueDto> featureValues = [];
  
  UpdateTenantFeaturesInput();

  @override
  String toString() {
    return 'UpdateTenantFeaturesInput[id=$id, featureValues=$featureValues, ]';
  }

  UpdateTenantFeaturesInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    featureValues =
      NameValueDto.listFromJson(json['featureValues'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'featureValues': featureValues
     };
  }

  static List<UpdateTenantFeaturesInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateTenantFeaturesInput>() : json.map((value) => new UpdateTenantFeaturesInput.fromJson(value)).toList();
  }

  static Map<String, UpdateTenantFeaturesInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateTenantFeaturesInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateTenantFeaturesInput.fromJson(value));
    }
    return map;
  }
}

