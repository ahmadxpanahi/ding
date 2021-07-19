part of swagger.api;

class WebhookSubscription {
  
  int? tenantId = null;
  

  String? webhookUri = null;
  

  String? secret = null;
  

  bool? isActive = null;
  

  List<String> webhooks = [];
  

  Map<String, String>? headers = {};
  

  String? id = null;
  
  WebhookSubscription();

  @override
  String toString() {
    return 'WebhookSubscription[tenantId=$tenantId, webhookUri=$webhookUri, secret=$secret, isActive=$isActive, webhooks=$webhooks, headers=$headers, id=$id, ]';
  }

  WebhookSubscription.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    webhookUri =
        json['webhookUri']
    ;
    secret =
        json['secret']
    ;
    isActive =
        json['isActive']
    ;
    webhooks =
        (json['webhooks'] as List).map((item) => item as String).toList()
    ;
    headers =
        json['headers']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'webhookUri': webhookUri,
      'secret': secret,
      'isActive': isActive,
      'webhooks': webhooks,
      'headers': headers,
      'id': id
     };
  }

  static List<WebhookSubscription> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookSubscription>() : json.map((value) => new WebhookSubscription.fromJson(value)).toList();
  }

  static Map<String, WebhookSubscription> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookSubscription>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookSubscription.fromJson(value));
    }
    return map;
  }
}

