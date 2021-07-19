part of swagger.api;

class SwitchToLinkedAccountOutput {
  
  String? switchAccountToken = null;
  

  String? tenancyName = null;
  
  SwitchToLinkedAccountOutput();

  @override
  String toString() {
    return 'SwitchToLinkedAccountOutput[switchAccountToken=$switchAccountToken, tenancyName=$tenancyName, ]';
  }

  SwitchToLinkedAccountOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    switchAccountToken =
        json['switchAccountToken']
    ;
    tenancyName =
        json['tenancyName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'switchAccountToken': switchAccountToken,
      'tenancyName': tenancyName
     };
  }

  static List<SwitchToLinkedAccountOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new SwitchToLinkedAccountOutput.fromJson(value)).toList();
  }

  static Map<String, SwitchToLinkedAccountOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, SwitchToLinkedAccountOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new SwitchToLinkedAccountOutput.fromJson(value));
    }
    return map;
  }
}

