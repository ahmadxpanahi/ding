part of swagger.api;

class GetAllDynamicEntityPropertyValuesOutputItem {
  
  int? dynamicEntityPropertyId = null;
  

  String? propertyName = null;
  

  IInputType? inputType = null;
  

  List<String> selectedValues = [];
  

  List<String> allValuesInputTypeHas = [];
  
  GetAllDynamicEntityPropertyValuesOutputItem();

  @override
  String toString() {
    return 'GetAllDynamicEntityPropertyValuesOutputItem[dynamicEntityPropertyId=$dynamicEntityPropertyId, propertyName=$propertyName, inputType=$inputType, selectedValues=$selectedValues, allValuesInputTypeHas=$allValuesInputTypeHas, ]';
  }

  GetAllDynamicEntityPropertyValuesOutputItem.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dynamicEntityPropertyId =
        json['dynamicEntityPropertyId']
    ;
    propertyName =
        json['propertyName']
    ;
    inputType =
      
      
      new IInputType.fromJson(json['inputType'])
;
    selectedValues =
        (json['selectedValues'] as List).map((item) => item as String).toList()
    ;
    allValuesInputTypeHas =
        (json['allValuesInputTypeHas'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dynamicEntityPropertyId': dynamicEntityPropertyId,
      'propertyName': propertyName,
      'inputType': inputType,
      'selectedValues': selectedValues,
      'allValuesInputTypeHas': allValuesInputTypeHas
     };
  }

  static List<GetAllDynamicEntityPropertyValuesOutputItem> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetAllDynamicEntityPropertyValuesOutputItem.fromJson(value)).toList();
  }

  static Map<String, GetAllDynamicEntityPropertyValuesOutputItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllDynamicEntityPropertyValuesOutputItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllDynamicEntityPropertyValuesOutputItem.fromJson(value));
    }
    return map;
  }
}

