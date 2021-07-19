part of swagger.api;

class TenantEdition {
  
  String label = null;
  

  int value = null;
  
  TenantEdition();

  @override
  String toString() {
    return 'TenantEdition[label=$label, value=$value, ]';
  }

  TenantEdition.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label =
        json['label']
    ;
    value =
        json['value']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'value': value
     };
  }

  static List<TenantEdition> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantEdition>() : json.map((value) => new TenantEdition.fromJson(value)).toList();
  }

  static Map<String, TenantEdition> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantEdition>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantEdition.fromJson(value));
    }
    return map;
  }
}

