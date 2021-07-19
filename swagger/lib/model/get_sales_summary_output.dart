part of swagger.api;

class GetSalesSummaryOutput {
  
  int? totalSales = null;
  

  int? revenue = null;
  

  int? expenses = null;
  

  int? growth = null;
  

  List<SalesSummaryData> salesSummary = [];
  
  GetSalesSummaryOutput();

  @override
  String toString() {
    return 'GetSalesSummaryOutput[totalSales=$totalSales, revenue=$revenue, expenses=$expenses, growth=$growth, salesSummary=$salesSummary, ]';
  }

  GetSalesSummaryOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalSales =
        json['totalSales']
    ;
    revenue =
        json['revenue']
    ;
    expenses =
        json['expenses']
    ;
    growth =
        json['growth']
    ;
    salesSummary =
      SalesSummaryData.listFromJson(json['salesSummary'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalSales': totalSales,
      'revenue': revenue,
      'expenses': expenses,
      'growth': growth,
      'salesSummary': salesSummary
     };
  }

  static List<GetSalesSummaryOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new GetSalesSummaryOutput.fromJson(value)).toList();
  }

  static Map<String, GetSalesSummaryOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetSalesSummaryOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetSalesSummaryOutput.fromJson(value));
    }
    return map;
  }
}

