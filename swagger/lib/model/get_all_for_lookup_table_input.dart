part of swagger.api;

class GetAllForLookupTableInput {
  
  String filter = null;
  

  String sorting = null;
  

  int skipCount = null;
   // range from 0 to 2147483647//

  int maxResultCount = null;
   // range from 1 to 2147483647//
  GetAllForLookupTableInput();

  @override
  String toString() {
    return 'GetAllForLookupTableInput[filter=$filter, sorting=$sorting, skipCount=$skipCount, maxResultCount=$maxResultCount, ]';
  }

  GetAllForLookupTableInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    filter =
        json['filter']
    ;
    sorting =
        json['sorting']
    ;
    skipCount =
        json['skipCount']
    ;
    maxResultCount =
        json['maxResultCount']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'filter': filter,
      'sorting': sorting,
      'skipCount': skipCount,
      'maxResultCount': maxResultCount
     };
  }

  static List<GetAllForLookupTableInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetAllForLookupTableInput>() : json.map((value) => new GetAllForLookupTableInput.fromJson(value)).toList();
  }

  static Map<String, GetAllForLookupTableInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetAllForLookupTableInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetAllForLookupTableInput.fromJson(value));
    }
    return map;
  }
}

