part of swagger.api;

class GetAllSendAttemptsOfWebhookEventOutput {
  
  String? id = null;
  

  String? webhookUri = null;
  

  String? webhookSubscriptionId = null;
  

  String? response = null;
  

  HttpStatusCode? responseStatusCode = null;
  

  DateTime? creationTime = null;
  

  DateTime? lastModificationTime = null;
  
  GetAllSendAttemptsOfWebhookEventOutput();

  @override
  String toString() {
    return 'GetAllSendAttemptsOfWebhookEventOutput[id=$id, webhookUri=$webhookUri, webhookSubscriptionId=$webhookSubscriptionId, response=$response, responseStatusCode=$responseStatusCode, creationTime=$creationTime, lastModificationTime=$lastModificationTime, ]';
  }

  GetAllSendAttemptsOfWebhookEventOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    webhookUri =
        json['webhookUri']
    ;
    webhookSubscriptionId =
        json['webhookSubscriptionId']
    ;
    response =
        json['response']
    ;
    responseStatusCode =
      
      
      new HttpStatusCode.fromJson(json['responseStatusCode'])
;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
    lastModificationTime = json['lastModificationTime'] == null ? null : DateTime.parse(json['lastModificationTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'webhookUri': webhookUri,
      'webhookSubscriptionId': webhookSubscriptionId,
      'response': response,
      'responseStatusCode': responseStatusCode,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String(),
      'lastModificationTime': lastModificationTime == null ? '' : lastModificationTime!.toUtc().toIso8601String()
     };
  }

  static List<GetAllSendAttemptsOfWebhookEventOutput> listFromJson(List<dynamic>? json) {
    return json == null ? new List<GetAllSendAttemptsOfWebhookEventOutput>() : json.map((value) => new GetAllSendAttemptsOfWebhookEventOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllSendAttemptsOfWebhookEventOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllSendAttemptsOfWebhookEventOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllSendAttemptsOfWebhookEventOutput.fromJson(value));
    }
    return map;
  }
}

