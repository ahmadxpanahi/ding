part of swagger.api;

class StripeConfigurationDto {
  
  String? publishableKey = null;
  
  StripeConfigurationDto();

  @override
  String toString() {
    return 'StripeConfigurationDto[publishableKey=$publishableKey, ]';
  }

  StripeConfigurationDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    publishableKey =
        json['publishableKey']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'publishableKey': publishableKey
     };
  }

  static List<StripeConfigurationDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new StripeConfigurationDto.fromJson(value)).toList();
  }

  static Map<String, StripeConfigurationDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StripeConfigurationDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StripeConfigurationDto.fromJson(value));
    }
    return map;
  }
}

