part of swagger.api;

class GetRecentTenantsOutput {
  
  int? recentTenantsDayCount = null;
  

  int? maxRecentTenantsShownCount = null;
  

  DateTime? tenantCreationStartDate = null;
  

  List<RecentTenant> recentTenants = [];
  
  GetRecentTenantsOutput();

  @override
  String toString() {
    return 'GetRecentTenantsOutput[recentTenantsDayCount=$recentTenantsDayCount, maxRecentTenantsShownCount=$maxRecentTenantsShownCount, tenantCreationStartDate=$tenantCreationStartDate, recentTenants=$recentTenants, ]';
  }

  GetRecentTenantsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    recentTenantsDayCount =
        json['recentTenantsDayCount']
    ;
    maxRecentTenantsShownCount =
        json['maxRecentTenantsShownCount']
    ;
    tenantCreationStartDate = json['tenantCreationStartDate'] == null ? null : DateTime.parse(json['tenantCreationStartDate']);
    recentTenants =
      RecentTenant.listFromJson(json['recentTenants'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'recentTenantsDayCount': recentTenantsDayCount,
      'maxRecentTenantsShownCount': maxRecentTenantsShownCount,
      'tenantCreationStartDate': tenantCreationStartDate == null ? '' : tenantCreationStartDate!.toUtc().toIso8601String(),
      'recentTenants': recentTenants
     };
  }

  static List<GetRecentTenantsOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetRecentTenantsOutput.fromJson(value)).toList();
  }

  static Map<String, GetRecentTenantsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetRecentTenantsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetRecentTenantsOutput.fromJson(value));
    }
    return map;
  }
}

