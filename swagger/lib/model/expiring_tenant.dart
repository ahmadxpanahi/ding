part of swagger.api;

class ExpiringTenant {
  
  String tenantName = null;
  

  int remainingDayCount = null;
  
  ExpiringTenant();

  @override
  String toString() {
    return 'ExpiringTenant[tenantName=$tenantName, remainingDayCount=$remainingDayCount, ]';
  }

  ExpiringTenant.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenantName =
        json['tenantName']
    ;
    remainingDayCount =
        json['remainingDayCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantName': tenantName,
      'remainingDayCount': remainingDayCount
     };
  }

  static List<ExpiringTenant> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExpiringTenant>() : json.map((value) => new ExpiringTenant.fromJson(value)).toList();
  }

  static Map<String, ExpiringTenant> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExpiringTenant>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExpiringTenant.fromJson(value));
    }
    return map;
  }
}

