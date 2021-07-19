part of swagger.api;

class ListResultDtoOfGetAllAvailableWebhooksOutput {
  
  List<GetAllAvailableWebhooksOutput> items = [];
  
  ListResultDtoOfGetAllAvailableWebhooksOutput();

  @override
  String toString() {
    return 'ListResultDtoOfGetAllAvailableWebhooksOutput[items=$items, ]';
  }

  ListResultDtoOfGetAllAvailableWebhooksOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetAllAvailableWebhooksOutput.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetAllAvailableWebhooksOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetAllAvailableWebhooksOutput>() : json.map((value) => new ListResultDtoOfGetAllAvailableWebhooksOutput.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetAllAvailableWebhooksOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetAllAvailableWebhooksOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetAllAvailableWebhooksOutput.fromJson(value));
    }
    return map;
  }
}

