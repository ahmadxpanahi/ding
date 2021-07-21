part of swagger.api;

class ListResultDtoOfUserLoginAttemptDto {
  
  List<UserLoginAttemptDto> items = [];
  
  ListResultDtoOfUserLoginAttemptDto();

  @override
  String toString() {
    return 'ListResultDtoOfUserLoginAttemptDto[items=$items, ]';
  }

  ListResultDtoOfUserLoginAttemptDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      UserLoginAttemptDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfUserLoginAttemptDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ListResultDtoOfUserLoginAttemptDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfUserLoginAttemptDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfUserLoginAttemptDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfUserLoginAttemptDto.fromJson(value));
    }
    return map;
  }
}

