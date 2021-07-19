part of swagger.api;

class GetAllSubscriptionsOutput {
  
  String? webhookUri = null;
  

  bool? isActive = null;
  

  List<String> webhooks = [];
  

  String? id = null;
  
  GetAllSubscriptionsOutput();

  @override
  String toString() {
    return 'GetAllSubscriptionsOutput[webhookUri=$webhookUri, isActive=$isActive, webhooks=$webhooks, id=$id, ]';
  }

  GetAllSubscriptionsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    webhookUri =
        json['webhookUri']
    ;
    isActive =
        json['isActive']
    ;
    webhooks =
        (json['webhooks'] as List).map((item) => item as String).toList()
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'webhookUri': webhookUri,
      'isActive': isActive,
      'webhooks': webhooks,
      'id': id
     };
  }

  static List<GetAllSubscriptionsOutput> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetAllSubscriptionsOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllSubscriptionsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllSubscriptionsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllSubscriptionsOutput.fromJson(value));
    }
    return map;
  }
}

