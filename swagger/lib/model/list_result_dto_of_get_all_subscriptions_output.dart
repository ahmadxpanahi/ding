part of swagger.api;

class ListResultDtoOfGetAllSubscriptionsOutput {
  
  List<GetAllSubscriptionsOutput> items = [];
  
  ListResultDtoOfGetAllSubscriptionsOutput();

  @override
  String toString() {
    return 'ListResultDtoOfGetAllSubscriptionsOutput[items=$items, ]';
  }

  ListResultDtoOfGetAllSubscriptionsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    items =
      GetAllSubscriptionsOutput.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfGetAllSubscriptionsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ListResultDtoOfGetAllSubscriptionsOutput>() : json.map((value) => new ListResultDtoOfGetAllSubscriptionsOutput.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfGetAllSubscriptionsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfGetAllSubscriptionsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfGetAllSubscriptionsOutput.fromJson(value));
    }
    return map;
  }
}

