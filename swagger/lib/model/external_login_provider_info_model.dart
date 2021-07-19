part of swagger.api;

class ExternalLoginProviderInfoModel {
  
  String? name = null;
  

  String? clientId = null;
  

  Map<String, String>? additionalParams = {};
  
  ExternalLoginProviderInfoModel();

  @override
  String toString() {
    return 'ExternalLoginProviderInfoModel[name=$name, clientId=$clientId, additionalParams=$additionalParams, ]';
  }

  ExternalLoginProviderInfoModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    clientId =
        json['clientId']
    ;
    additionalParams =
        json['additionalParams']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'clientId': clientId,
      'additionalParams': additionalParams
     };
  }

  static List<ExternalLoginProviderInfoModel> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ExternalLoginProviderInfoModel.fromJson(value)).toList();
  }

  static Map<String, ExternalLoginProviderInfoModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExternalLoginProviderInfoModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExternalLoginProviderInfoModel.fromJson(value));
    }
    return map;
  }
}

