part of swagger.api;

class ImpersonateOutput {
  
  String? impersonationToken = null;
  

  String? tenancyName = null;
  
  ImpersonateOutput();

  @override
  String toString() {
    return 'ImpersonateOutput[impersonationToken=$impersonationToken, tenancyName=$tenancyName, ]';
  }

  ImpersonateOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    impersonationToken =
        json['impersonationToken']
    ;
    tenancyName =
        json['tenancyName']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'impersonationToken': impersonationToken,
      'tenancyName': tenancyName
     };
  }

  static List<ImpersonateOutput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ImpersonateOutput.fromJson(value)).toList();
  }

  static Map<String, ImpersonateOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ImpersonateOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ImpersonateOutput.fromJson(value));
    }
    return map;
  }
}

