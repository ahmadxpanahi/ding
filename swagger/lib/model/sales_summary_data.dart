part of swagger.api;

class SalesSummaryData {
  
  String? period = null;
  

  int? sales = null;
  

  int? profit = null;
  
  SalesSummaryData();

  @override
  String toString() {
    return 'SalesSummaryData[period=$period, sales=$sales, profit=$profit, ]';
  }

  SalesSummaryData.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    period =
        json['period']
    ;
    sales =
        json['sales']
    ;
    profit =
        json['profit']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'period': period,
      'sales': sales,
      'profit': profit
     };
  }

  static List<SalesSummaryData> listFromJson(List<dynamic>? json) {
    return json == null ? new List<SalesSummaryData>() : json.map((value) => new SalesSummaryData.fromJson(value)).toList();
  }

  static Map<String, SalesSummaryData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SalesSummaryData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SalesSummaryData.fromJson(value));
    }
    return map;
  }
}

