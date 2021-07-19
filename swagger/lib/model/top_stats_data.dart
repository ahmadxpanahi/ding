part of swagger.api;

class TopStatsData {
  
  int newTenantsCount = null;
  

  double newSubscriptionAmount = null;
  

  int dashboardPlaceholder1 = null;
  

  int dashboardPlaceholder2 = null;
  
  TopStatsData();

  @override
  String toString() {
    return 'TopStatsData[newTenantsCount=$newTenantsCount, newSubscriptionAmount=$newSubscriptionAmount, dashboardPlaceholder1=$dashboardPlaceholder1, dashboardPlaceholder2=$dashboardPlaceholder2, ]';
  }

  TopStatsData.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    newTenantsCount =
        json['newTenantsCount']
    ;
    newSubscriptionAmount =
        json['newSubscriptionAmount'] == null ? null : json['newSubscriptionAmount'].toDouble()
    ;
    dashboardPlaceholder1 =
        json['dashboardPlaceholder1']
    ;
    dashboardPlaceholder2 =
        json['dashboardPlaceholder2']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'newTenantsCount': newTenantsCount,
      'newSubscriptionAmount': newSubscriptionAmount,
      'dashboardPlaceholder1': dashboardPlaceholder1,
      'dashboardPlaceholder2': dashboardPlaceholder2
     };
  }

  static List<TopStatsData> listFromJson(List<dynamic> json) {
    return json == null ? new List<TopStatsData>() : json.map((value) => new TopStatsData.fromJson(value)).toList();
  }

  static Map<String, TopStatsData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TopStatsData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TopStatsData.fromJson(value));
    }
    return map;
  }
}

