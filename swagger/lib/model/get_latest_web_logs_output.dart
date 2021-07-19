part of swagger.api;

class GetLatestWebLogsOutput {
  
  List<String> latestWebLogLines = [];
  
  GetLatestWebLogsOutput();

  @override
  String toString() {
    return 'GetLatestWebLogsOutput[latestWebLogLines=$latestWebLogLines, ]';
  }

  GetLatestWebLogsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    latestWebLogLines =
        (json['latestWebLogLines'] as List).map((item) => item as String).toList()
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'latestWebLogLines': latestWebLogLines
     };
  }

  static List<GetLatestWebLogsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetLatestWebLogsOutput>() : json.map((value) => new GetLatestWebLogsOutput.fromJson(value)).toList();
  }

  static Map<String, GetLatestWebLogsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetLatestWebLogsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetLatestWebLogsOutput.fromJson(value));
    }
    return map;
  }
}

