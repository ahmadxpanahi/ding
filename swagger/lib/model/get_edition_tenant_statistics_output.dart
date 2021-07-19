part of swagger.api;

class GetEditionTenantStatisticsOutput {
  
  List<TenantEdition> editionStatistics = [];
  
  GetEditionTenantStatisticsOutput();

  @override
  String toString() {
    return 'GetEditionTenantStatisticsOutput[editionStatistics=$editionStatistics, ]';
  }

  GetEditionTenantStatisticsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    editionStatistics =
      TenantEdition.listFromJson(json['editionStatistics'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'editionStatistics': editionStatistics
     };
  }

  static List<GetEditionTenantStatisticsOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetEditionTenantStatisticsOutput.fromJson(value)).toList();
  }

  static Map<String, GetEditionTenantStatisticsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetEditionTenantStatisticsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetEditionTenantStatisticsOutput.fromJson(value));
    }
    return map;
  }
}

