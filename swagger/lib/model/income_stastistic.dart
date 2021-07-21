part of swagger.api;

class IncomeStastistic {
  
  String? label = null;
  

  DateTime? date = null;
  

  double? amount = null;
  
  IncomeStastistic();

  @override
  String toString() {
    return 'IncomeStastistic[label=$label, date=$date, amount=$amount, ]';
  }

  IncomeStastistic.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    label =
        json['label']
    ;
    date = json['date'] == null ? null : DateTime.parse(json['date']);
    amount =
        json['amount'] == null ? null : json['amount'].toDouble()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'date': date == null ? '' : date!.toUtc().toIso8601String(),
      'amount': amount
     };
  }

  static List<IncomeStastistic> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new IncomeStastistic.fromJson(value)).toList();
  }

  static Map<String, IncomeStastistic> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IncomeStastistic>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IncomeStastistic.fromJson(value));
    }
    return map;
  }
}

