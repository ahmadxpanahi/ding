part of swagger.api;

class StringOutput {
  
  String? output = null;
  
  StringOutput();

  @override
  String toString() {
    return 'StringOutput[output=$output, ]';
  }

  StringOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    output =
        json['output']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'output': output
     };
  }

  static List<StringOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<StringOutput>() : json.map((value) => new StringOutput.fromJson(value)).toList();
  }

  static Map<String, StringOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StringOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StringOutput.fromJson(value));
    }
    return map;
  }
}

