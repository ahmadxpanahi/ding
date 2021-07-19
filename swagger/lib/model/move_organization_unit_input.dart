part of swagger.api;

class MoveOrganizationUnitInput {
  
  int id = null;
   // range from 1 to //

  int newParentId = null;
  
  MoveOrganizationUnitInput();

  @override
  String toString() {
    return 'MoveOrganizationUnitInput[id=$id, newParentId=$newParentId, ]';
  }

  MoveOrganizationUnitInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    newParentId =
        json['newParentId']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'newParentId': newParentId
     };
  }

  static List<MoveOrganizationUnitInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<MoveOrganizationUnitInput>() : json.map((value) => new MoveOrganizationUnitInput.fromJson(value)).toList();
  }

  static Map<String, MoveOrganizationUnitInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoveOrganizationUnitInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MoveOrganizationUnitInput.fromJson(value));
    }
    return map;
  }
}

