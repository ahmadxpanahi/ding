part of swagger.api;

class PayPalConfigurationDto {
  
  String? clientId = null;
  

  String? demoUsername = null;
  

  String? demoPassword = null;
  
  PayPalConfigurationDto();

  @override
  String toString() {
    return 'PayPalConfigurationDto[clientId=$clientId, demoUsername=$demoUsername, demoPassword=$demoPassword, ]';
  }

  PayPalConfigurationDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    clientId =
        json['clientId']
    ;
    demoUsername =
        json['demoUsername']
    ;
    demoPassword =
        json['demoPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'demoUsername': demoUsername,
      'demoPassword': demoPassword
     };
  }

  static List<PayPalConfigurationDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PayPalConfigurationDto>() : json.map((value) => new PayPalConfigurationDto.fromJson(value)).toList();
  }

  static Map<String, PayPalConfigurationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PayPalConfigurationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PayPalConfigurationDto.fromJson(value));
    }
    return map;
  }
}

