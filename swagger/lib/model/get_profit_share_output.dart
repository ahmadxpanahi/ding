part of swagger.api;

class GetProfitShareOutput {
  
  List<int> profitShares = [];
  
  GetProfitShareOutput();

  @override
  String toString() {
    return 'GetProfitShareOutput[profitShares=$profitShares, ]';
  }

  GetProfitShareOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    profitShares =
        (json['profitShares'] as List).map((item) => item as int).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'profitShares': profitShares
     };
  }

  static List<GetProfitShareOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetProfitShareOutput>() : json.map((value) => new GetProfitShareOutput.fromJson(value)).toList();
  }

  static Map<String, GetProfitShareOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetProfitShareOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetProfitShareOutput.fromJson(value));
    }
    return map;
  }
}

