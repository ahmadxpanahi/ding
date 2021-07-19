part of swagger.api;

class RegionalStatCountry {
  
  String countryName = null;
  

  double sales = null;
  

  List<int> change = [];
  

  double averagePrice = null;
  

  double totalPrice = null;
  
  RegionalStatCountry();

  @override
  String toString() {
    return 'RegionalStatCountry[countryName=$countryName, sales=$sales, change=$change, averagePrice=$averagePrice, totalPrice=$totalPrice, ]';
  }

  RegionalStatCountry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    countryName =
        json['countryName']
    ;
    sales =
        json['sales'] == null ? null : json['sales'].toDouble()
    ;
    change =
        (json['change'] as List).map((item) => item as int).toList()
    ;
    averagePrice =
        json['averagePrice'] == null ? null : json['averagePrice'].toDouble()
    ;
    totalPrice =
        json['totalPrice'] == null ? null : json['totalPrice'].toDouble()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'countryName': countryName,
      'sales': sales,
      'change': change,
      'averagePrice': averagePrice,
      'totalPrice': totalPrice
     };
  }

  static List<RegionalStatCountry> listFromJson(List<dynamic> json) {
    return json == null ? new List<RegionalStatCountry>() : json.map((value) => new RegionalStatCountry.fromJson(value)).toList();
  }

  static Map<String, RegionalStatCountry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RegionalStatCountry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RegionalStatCountry.fromJson(value));
    }
    return map;
  }
}

