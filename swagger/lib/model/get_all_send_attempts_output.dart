part of swagger.api;

class GetAllSendAttemptsOutput {
  
  String? id = null;
  

  String? webhookEventId = null;
  

  String? webhookName = null;
  

  String? data = null;
  

  String? response = null;
  

  HttpStatusCode? responseStatusCode = null;
  

  DateTime? creationTime = null;
  
  GetAllSendAttemptsOutput();

  @override
  String toString() {
    return 'GetAllSendAttemptsOutput[id=$id, webhookEventId=$webhookEventId, webhookName=$webhookName, data=$data, response=$response, responseStatusCode=$responseStatusCode, creationTime=$creationTime, ]';
  }

  GetAllSendAttemptsOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    id =
        json['id']
    ;
    webhookEventId =
        json['webhookEventId']
    ;
    webhookName =
        json['webhookName']
    ;
    data =
        json['data']
    ;
    response =
        json['response']
    ;
    responseStatusCode =
      
      
      new HttpStatusCode.fromJson(json['responseStatusCode'])
;
    creationTime = json['creationTime'] == null ? null : DateTime.parse(json['creationTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'webhookEventId': webhookEventId,
      'webhookName': webhookName,
      'data': data,
      'response': response,
      'responseStatusCode': responseStatusCode,
      'creationTime': creationTime == null ? '' : creationTime!.toUtc().toIso8601String()
     };
  }

  static List<GetAllSendAttemptsOutput> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new GetAllSendAttemptsOutput.fromJson(value)).toList();
  }

  static Map<String, GetAllSendAttemptsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllSendAttemptsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllSendAttemptsOutput.fromJson(value));
    }
    return map;
  }
}

