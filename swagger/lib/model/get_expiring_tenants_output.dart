part of swagger.api;

class GetExpiringTenantsOutput {
  
  List<ExpiringTenant> expiringTenants = [];
  

  int? subscriptionEndAlertDayCount = null;
  

  int? maxExpiringTenantsShownCount = null;
  

  DateTime? subscriptionEndDateStart = null;
  

  DateTime? subscriptionEndDateEnd = null;
  
  GetExpiringTenantsOutput();

  @override
  String toString() {
    return 'GetExpiringTenantsOutput[expiringTenants=$expiringTenants, subscriptionEndAlertDayCount=$subscriptionEndAlertDayCount, maxExpiringTenantsShownCount=$maxExpiringTenantsShownCount, subscriptionEndDateStart=$subscriptionEndDateStart, subscriptionEndDateEnd=$subscriptionEndDateEnd, ]';
  }

  GetExpiringTenantsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    expiringTenants =
      ExpiringTenant.listFromJson(json['expiringTenants'])
;
    subscriptionEndAlertDayCount =
        json['subscriptionEndAlertDayCount']
    ;
    maxExpiringTenantsShownCount =
        json['maxExpiringTenantsShownCount']
    ;
    subscriptionEndDateStart = json['subscriptionEndDateStart'] == null ? null : DateTime.parse(json['subscriptionEndDateStart']);
    subscriptionEndDateEnd = json['subscriptionEndDateEnd'] == null ? null : DateTime.parse(json['subscriptionEndDateEnd']);
  }

  Map<String, dynamic> toJson() {
    return {
      'expiringTenants': expiringTenants,
      'subscriptionEndAlertDayCount': subscriptionEndAlertDayCount,
      'maxExpiringTenantsShownCount': maxExpiringTenantsShownCount,
      'subscriptionEndDateStart': subscriptionEndDateStart == null ? '' : subscriptionEndDateStart!.toUtc().toIso8601String(),
      'subscriptionEndDateEnd': subscriptionEndDateEnd == null ? '' : subscriptionEndDateEnd!.toUtc().toIso8601String()
     };
  }

  static List<GetExpiringTenantsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetExpiringTenantsOutput>() : json.map((value) => new GetExpiringTenantsOutput.fromJson(value)).toList();
  }

  static Map<String, GetExpiringTenantsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetExpiringTenantsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetExpiringTenantsOutput.fromJson(value));
    }
    return map;
  }
}

