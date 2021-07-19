part of swagger.api;

class InsertOrUpdateAllValuesInputItem {
  
  String entityId = null;
  

  int dynamicEntityPropertyId = null;
  

  List<String> values = [];
  
  InsertOrUpdateAllValuesInputItem();

  @override
  String toString() {
    return 'InsertOrUpdateAllValuesInputItem[entityId=$entityId, dynamicEntityPropertyId=$dynamicEntityPropertyId, values=$values, ]';
  }

  InsertOrUpdateAllValuesInputItem.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    entityId =
        json['entityId']
    ;
    dynamicEntityPropertyId =
        json['dynamicEntityPropertyId']
    ;
    values =
        (json['values'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'entityId': entityId,
      'dynamicEntityPropertyId': dynamicEntityPropertyId,
      'values': values
     };
  }

  static List<InsertOrUpdateAllValuesInputItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<InsertOrUpdateAllValuesInputItem>() : json.map((value) => new InsertOrUpdateAllValuesInputItem.fromJson(value)).toList();
  }

  static Map<String, InsertOrUpdateAllValuesInputItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InsertOrUpdateAllValuesInputItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InsertOrUpdateAllValuesInputItem.fromJson(value));
    }
    return map;
  }
}

