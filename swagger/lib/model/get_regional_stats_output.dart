part of swagger.api;

class GetRegionalStatsOutput {
  
  List<RegionalStatCountry> stats = [];
  
  GetRegionalStatsOutput();

  @override
  String toString() {
    return 'GetRegionalStatsOutput[stats=$stats, ]';
  }

  GetRegionalStatsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    stats =
      RegionalStatCountry.listFromJson(json['stats'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'stats': stats
     };
  }

  static List<GetRegionalStatsOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetRegionalStatsOutput.fromJson(value)).toList();
  }

  static Map<String, GetRegionalStatsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetRegionalStatsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetRegionalStatsOutput.fromJson(value));
    }
    return map;
  }
}

