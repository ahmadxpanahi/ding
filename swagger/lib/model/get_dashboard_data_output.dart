part of swagger.api;

class GetDashboardDataOutput {
  
  int? totalProfit = null;
  

  int? newFeedbacks = null;
  

  int? newOrders = null;
  

  int? newUsers = null;
  

  List<SalesSummaryData> salesSummary = [];
  

  int? totalSales = null;
  

  int? revenue = null;
  

  int? expenses = null;
  

  int? growth = null;
  

  int? transactionPercent = null;
  

  int? newVisitPercent = null;
  

  int? bouncePercent = null;
  

  List<int> dailySales = [];
  

  List<int> profitShares = [];
  
  GetDashboardDataOutput();

  @override
  String toString() {
    return 'GetDashboardDataOutput[totalProfit=$totalProfit, newFeedbacks=$newFeedbacks, newOrders=$newOrders, newUsers=$newUsers, salesSummary=$salesSummary, totalSales=$totalSales, revenue=$revenue, expenses=$expenses, growth=$growth, transactionPercent=$transactionPercent, newVisitPercent=$newVisitPercent, bouncePercent=$bouncePercent, dailySales=$dailySales, profitShares=$profitShares, ]';
  }

  GetDashboardDataOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalProfit =
        json['totalProfit']
    ;
    newFeedbacks =
        json['newFeedbacks']
    ;
    newOrders =
        json['newOrders']
    ;
    newUsers =
        json['newUsers']
    ;
    salesSummary =
      SalesSummaryData.listFromJson(json['salesSummary'])
;
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
    transactionPercent =
        json['transactionPercent']
    ;
    newVisitPercent =
        json['newVisitPercent']
    ;
    bouncePercent =
        json['bouncePercent']
    ;
    dailySales =
        (json['dailySales'] as List).map((item) => item as int).toList()
    ;
    profitShares =
        (json['profitShares'] as List).map((item) => item as int).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalProfit': totalProfit,
      'newFeedbacks': newFeedbacks,
      'newOrders': newOrders,
      'newUsers': newUsers,
      'salesSummary': salesSummary,
      'totalSales': totalSales,
      'revenue': revenue,
      'expenses': expenses,
      'growth': growth,
      'transactionPercent': transactionPercent,
      'newVisitPercent': newVisitPercent,
      'bouncePercent': bouncePercent,
      'dailySales': dailySales,
      'profitShares': profitShares
     };
  }

  static List<GetDashboardDataOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDashboardDataOutput>() : json.map((value) => new GetDashboardDataOutput.fromJson(value)).toList();
  }

  static Map<String, GetDashboardDataOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDashboardDataOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDashboardDataOutput.fromJson(value));
    }
    return map;
  }
}

