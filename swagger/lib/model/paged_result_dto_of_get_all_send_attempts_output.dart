part of swagger.api;

class PagedResultDtoOfGetAllSendAttemptsOutput {
  
  int totalCount = null;
  

  List<GetAllSendAttemptsOutput> items = [];
  
  PagedResultDtoOfGetAllSendAttemptsOutput();

  @override
  String toString() {
    return 'PagedResultDtoOfGetAllSendAttemptsOutput[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfGetAllSendAttemptsOutput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      GetAllSendAttemptsOutput.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfGetAllSendAttemptsOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfGetAllSendAttemptsOutput>() : json.map((value) => new PagedResultDtoOfGetAllSendAttemptsOutput.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfGetAllSendAttemptsOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfGetAllSendAttemptsOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfGetAllSendAttemptsOutput.fromJson(value));
    }
    return map;
  }
}

