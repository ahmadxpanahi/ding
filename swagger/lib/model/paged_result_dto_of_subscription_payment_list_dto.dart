part of swagger.api;

class PagedResultDtoOfSubscriptionPaymentListDto {
  
  int? totalCount = null;
  

  List<SubscriptionPaymentListDto> items = [];
  
  PagedResultDtoOfSubscriptionPaymentListDto();

  @override
  String toString() {
    return 'PagedResultDtoOfSubscriptionPaymentListDto[totalCount=$totalCount, items=$items, ]';
  }

  PagedResultDtoOfSubscriptionPaymentListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    totalCount =
        json['totalCount']
    ;
    items =
      SubscriptionPaymentListDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCount': totalCount,
      'items': items
     };
  }

  static List<PagedResultDtoOfSubscriptionPaymentListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<PagedResultDtoOfSubscriptionPaymentListDto>() : json.map((value) => new PagedResultDtoOfSubscriptionPaymentListDto.fromJson(value)).toList();
  }

  static Map<String, PagedResultDtoOfSubscriptionPaymentListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PagedResultDtoOfSubscriptionPaymentListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PagedResultDtoOfSubscriptionPaymentListDto.fromJson(value));
    }
    return map;
  }
}

