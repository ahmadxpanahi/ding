part of swagger.api;

class ActivateWebhookSubscriptionInput {
  
  String? subscriptionId = null;
  

  bool? isActive = null;
  
  ActivateWebhookSubscriptionInput();

  @override
  String toString() {
    return 'ActivateWebhookSubscriptionInput[subscriptionId=$subscriptionId, isActive=$isActive, ]';
  }

  ActivateWebhookSubscriptionInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    subscriptionId =
        json['subscriptionId']
    ;
    isActive =
        json['isActive']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'subscriptionId': subscriptionId,
      'isActive': isActive
     };
  }

  static List<ActivateWebhookSubscriptionInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActivateWebhookSubscriptionInput>() : json.map((value) => new ActivateWebhookSubscriptionInput.fromJson(value)).toList();
  }

  static Map<String, ActivateWebhookSubscriptionInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActivateWebhookSubscriptionInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActivateWebhookSubscriptionInput.fromJson(value));
    }
    return map;
  }
}

