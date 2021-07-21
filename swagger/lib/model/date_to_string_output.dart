part of swagger.api;

class DateToStringOutput {
  
  String? dateString = null;
  
  DateToStringOutput();

  @override
  String toString() {
    return 'DateToStringOutput[dateString=$dateString, ]';
  }

  DateToStringOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    dateString =
        json['dateString']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'dateString': dateString
     };
  }

  static List<DateToStringOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new DateToStringOutput.fromJson(value)).toList();
  }

  static Map<String, DateToStringOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DateToStringOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DateToStringOutput.fromJson(value));
    }
    return map;
  }
}

