part of swagger.api;

class GetTopStatsOutput {
  
  int? totalProfit = null;
  

  int? newFeedbacks = null;
  

  int? newOrders = null;
  

  int? newUsers = null;
  
  GetTopStatsOutput();

  @override
  String toString() {
    return 'GetTopStatsOutput[totalProfit=$totalProfit, newFeedbacks=$newFeedbacks, newOrders=$newOrders, newUsers=$newUsers, ]';
  }

  GetTopStatsOutput.fromJson(Map<String, dynamic>? json) {
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
  }

  Map<String, dynamic> toJson() {
    return {
      'totalProfit': totalProfit,
      'newFeedbacks': newFeedbacks,
      'newOrders': newOrders,
      'newUsers': newUsers
     };
  }

  static List<GetTopStatsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetTopStatsOutput>() : json.map((value) => new GetTopStatsOutput.fromJson(value)).toList();
  }

  static Map<String, GetTopStatsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetTopStatsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetTopStatsOutput.fromJson(value));
    }
    return map;
  }
}

