part of swagger.api;

class CreateOrEditRequestDto {
  
  int? requestType = null;
  

  DateTime? from = null;
  

  DateTime? to = null;
  

  String? comment = null;
  

  int? status = null;
  

  int? substituteUserId = null;
  

  int? id = null;
  
  CreateOrEditRequestDto();

  @override
  String toString() {
    return 'CreateOrEditRequestDto[requestType=$requestType, from=$from, to=$to, comment=$comment, status=$status, substituteUserId=$substituteUserId, id=$id, ]';
  }

  CreateOrEditRequestDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    requestType =
      
      
    json['requestType']
;
    from = json['from'] == null ? null : DateTime.parse(json['from']);
    to = json['to'] == null ? null : DateTime.parse(json['to']);
    comment =
        json['comment']
    ;
    status = json['status']
;
    substituteUserId =
        json['substituteUserId']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'requestType': requestType,
      'from': from == null ? '' : from!.toIso8601String(),
      'to': to == null ? '' : to!.toIso8601String(),
      'comment': comment,
      'status': status,
      'substituteUserId': substituteUserId,
      'id': id
     };
  }

  static List<CreateOrEditRequestDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditRequestDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditRequestDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditRequestDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditRequestDto.fromJson(value));
    }
    return map;
  }
}

