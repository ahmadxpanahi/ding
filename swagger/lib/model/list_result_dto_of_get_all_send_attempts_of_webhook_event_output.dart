part of swagger.api;

class ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput {
  
  List<GetAllSendAttemptsOfWebhookEventOutput> items = [];
  
  ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput();

  @override
  String toString() {
    return 'ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput[items=$items, ]';
  }

  ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetAllSendAttemptsOfWebhookEventOutput.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput>() : json.map((value) => new ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput.fromJson(value));
    }
    return map;
  }
}

