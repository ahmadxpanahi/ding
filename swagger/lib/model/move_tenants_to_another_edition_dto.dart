part of swagger.api;

class MoveTenantsToAnotherEditionDto {
  
  int? sourceEditionId = null;
   // range from 1 to 2147483647//

  int? targetEditionId = null;
   // range from 1 to 2147483647//
  MoveTenantsToAnotherEditionDto();

  @override
  String toString() {
    return 'MoveTenantsToAnotherEditionDto[sourceEditionId=$sourceEditionId, targetEditionId=$targetEditionId, ]';
  }

  MoveTenantsToAnotherEditionDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    sourceEditionId =
        json['sourceEditionId']
    ;
    targetEditionId =
        json['targetEditionId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'sourceEditionId': sourceEditionId,
      'targetEditionId': targetEditionId
     };
  }

  static List<MoveTenantsToAnotherEditionDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveTenantsToAnotherEditionDto>() : json.map((value) => new MoveTenantsToAnotherEditionDto.fromJson(value)).toList();
  }

  static Map<String, MoveTenantsToAnotherEditionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveTenantsToAnotherEditionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveTenantsToAnotherEditionDto.fromJson(value));
    }
    return map;
  }
}

