part of swagger.api;

class GetDefaultEditionNameOutput {
  
  String? name = null;
  
  GetDefaultEditionNameOutput();

  @override
  String toString() {
    return 'GetDefaultEditionNameOutput[name=$name, ]';
  }

  GetDefaultEditionNameOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<GetDefaultEditionNameOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetDefaultEditionNameOutput>() : json.map((value) => new GetDefaultEditionNameOutput.fromJson(value)).toList();
  }

  static Map<String, GetDefaultEditionNameOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetDefaultEditionNameOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetDefaultEditionNameOutput.fromJson(value));
    }
    return map;
  }
}

