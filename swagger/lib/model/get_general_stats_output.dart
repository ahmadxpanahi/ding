part of swagger.api;

class GetGeneralStatsOutput {
  
  int transactionPercent = null;
  

  int newVisitPercent = null;
  

  int bouncePercent = null;
  
  GetGeneralStatsOutput();

  @override
  String toString() {
    return 'GetGeneralStatsOutput[transactionPercent=$transactionPercent, newVisitPercent=$newVisitPercent, bouncePercent=$bouncePercent, ]';
  }

  GetGeneralStatsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    transactionPercent =
        json['transactionPercent']
    ;
    newVisitPercent =
        json['newVisitPercent']
    ;
    bouncePercent =
        json['bouncePercent']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'transactionPercent': transactionPercent,
      'newVisitPercent': newVisitPercent,
      'bouncePercent': bouncePercent
     };
  }

  static List<GetGeneralStatsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetGeneralStatsOutput>() : json.map((value) => new GetGeneralStatsOutput.fromJson(value)).toList();
  }

  static Map<String, GetGeneralStatsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetGeneralStatsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetGeneralStatsOutput.fromJson(value));
    }
    return map;
  }
}

