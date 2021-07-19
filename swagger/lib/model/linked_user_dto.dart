part of swagger.api;

class LinkedUserDto {
  
  int? tenantId = null;
  

  String? tenancyName = null;
  

  String? username = null;
  

  int? id = null;
  
  LinkedUserDto();

  @override
  String toString() {
    return 'LinkedUserDto[tenantId=$tenantId, tenancyName=$tenancyName, username=$username, id=$id, ]';
  }

  LinkedUserDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    tenantId =
        json['tenantId']
    ;
    tenancyName =
        json['tenancyName']
    ;
    username =
        json['username']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenantId': tenantId,
      'tenancyName': tenancyName,
      'username': username,
      'id': id
     };
  }

  static List<LinkedUserDto> listFromJson(List<dynamic>? json) {
    return json == null ? [] : json.map((value) => new LinkedUserDto.fromJson(value)).toList();
  }

  static Map<String, LinkedUserDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LinkedUserDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LinkedUserDto.fromJson(value));
    }
    return map;
  }
}

