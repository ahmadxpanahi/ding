part of swagger.api;

class AdditionalData {
  
  Map<String, String>? paypal = {};
  

  Map<String, String>? stripe = {};
  

  Map<String, String>? shetab = {};
  

  Map<String, String>? directRequest = {};
  
  AdditionalData();

  @override
  String toString() {
    return 'AdditionalData[paypal=$paypal, stripe=$stripe, shetab=$shetab, directRequest=$directRequest, ]';
  }

  AdditionalData.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    paypal =
        json['Paypal']
    ;
    stripe =
        json['Stripe']
    ;
    shetab =
        json['Shetab']
    ;
    directRequest =
        json['DirectRequest']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'Paypal': paypal,
      'Stripe': stripe,
      'Shetab': shetab,
      'DirectRequest': directRequest
     };
  }

  static List<AdditionalData> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new AdditionalData.fromJson(value)).toList();
  }

  static Map<String, AdditionalData> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AdditionalData>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AdditionalData.fromJson(value));
    }
    return map;
  }
}

