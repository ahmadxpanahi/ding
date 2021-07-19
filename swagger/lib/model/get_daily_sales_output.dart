part of swagger.api;

class GetDailySalesOutput {
  
  List<int> dailySales = [];
  
  GetDailySalesOutput();

  @override
  String toString() {
    return 'GetDailySalesOutput[dailySales=$dailySales, ]';
  }

  GetDailySalesOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    dailySales =
        (json['dailySales'] as List).map((item) => item as int).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dailySales': dailySales
     };
  }

  static List<GetDailySalesOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDailySalesOutput>() : json.map((value) => new GetDailySalesOutput.fromJson(value)).toList();
  }

  static Map<String, GetDailySalesOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDailySalesOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDailySalesOutput.fromJson(value));
    }
    return map;
  }
}

