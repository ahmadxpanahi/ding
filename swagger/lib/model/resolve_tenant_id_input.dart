part of swagger.api;

class ResolveTenantIdInput {
  
  String? c = null;
  
  ResolveTenantIdInput();

  @override
  String toString() {
    return 'ResolveTenantIdInput[c=$c, ]';
  }

  ResolveTenantIdInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    c =
        json['c']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'c': c
     };
  }

  static List<ResolveTenantIdInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResolveTenantIdInput>() : json.map((value) => new ResolveTenantIdInput.fromJson(value)).toList();
  }

  static Map<String, ResolveTenantIdInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ResolveTenantIdInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ResolveTenantIdInput.fromJson(value));
    }
    return map;
  }
}

