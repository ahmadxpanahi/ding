part of swagger.api;

class CheckDatabaseOutput {
  
  bool isDatabaseExist = null;
  
  CheckDatabaseOutput();

  @override
  String toString() {
    return 'CheckDatabaseOutput[isDatabaseExist=$isDatabaseExist, ]';
  }

  CheckDatabaseOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isDatabaseExist =
        json['isDatabaseExist']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isDatabaseExist': isDatabaseExist
     };
  }

  static List<CheckDatabaseOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<CheckDatabaseOutput>() : json.map((value) => new CheckDatabaseOutput.fromJson(value)).toList();
  }

  static Map<String, CheckDatabaseOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CheckDatabaseOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CheckDatabaseOutput.fromJson(value));
    }
    return map;
  }
}

