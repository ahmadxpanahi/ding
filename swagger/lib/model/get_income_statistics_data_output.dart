part of swagger.api;

class GetIncomeStatisticsDataOutput {
  
  List<IncomeStastistic> incomeStatistics = [];
  
  GetIncomeStatisticsDataOutput();

  @override
  String toString() {
    return 'GetIncomeStatisticsDataOutput[incomeStatistics=$incomeStatistics, ]';
  }

  GetIncomeStatisticsDataOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    incomeStatistics =
      IncomeStastistic.listFromJson(json['incomeStatistics'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'incomeStatistics': incomeStatistics
     };
  }

  static List<GetIncomeStatisticsDataOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetIncomeStatisticsDataOutput.fromJson(value)).toList();
  }

  static Map<String, GetIncomeStatisticsDataOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetIncomeStatisticsDataOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetIncomeStatisticsDataOutput.fromJson(value));
    }
    return map;
  }
}

