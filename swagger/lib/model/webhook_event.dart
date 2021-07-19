part of swagger.api;

class WebhookEvent {
  
  String webhookName = null;
  

  String data = null;
  

  DateTime creationTime = null;
  

  int tenantId = null;
  

  bool isDeleted = null;
  

  DateTime deletionTime = null;
  

  String id = null;
  
  WebhookEvent();

  @override
  String toString() {
    return 'WebhookEvent[webhookName=$webhookName, data=$data, creationTime=$creationTime, tenantId=$tenantId, isDeleted=$isDeleted, deletionTime=$deletionTime, id=$id, ]';
  }

  WebhookEvent.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    webhookName =
        json['webhookName']
    ;
    data =
        json['data']
    ;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    tenantId =
        json['tenantId']
    ;
    isDeleted =
        json['isDeleted']
    ;
    deletionTime = json['deletionTime'] == null ? null : DateTime.parse(json['deletionTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'webhookName': webhookName,
      'data': data,
      'creationTime': creationTime == null ? '' : creationTime.toUtc().toIso8601String(),
      'tenantId': tenantId,
      'isDeleted': isDeleted,
      'deletionTime': deletionTime == null ? '' : deletionTime.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<WebhookEvent> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebhookEvent>() : json.map((value) => new WebhookEvent.fromJson(value)).toList();
  }

  static Map<String, WebhookEvent> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebhookEvent>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebhookEvent.fromJson(value));
    }
    return map;
  }
}

