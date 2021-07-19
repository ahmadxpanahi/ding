part of swagger.api;

class OrganizationUnitRoleListDto {
  
  String? displayName = null;
  

  String? name = null;
  

  DateTime? addedTime = null;
  

  int? id = null;
  
  OrganizationUnitRoleListDto();

  @override
  String toString() {
    return 'OrganizationUnitRoleListDto[displayName=$displayName, name=$name, addedTime=$addedTime, id=$id, ]';
  }

  OrganizationUnitRoleListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    name =
        json['name']
    ;
    addedTime = json['addedTime'] == null ? null : DateTime.parse(json['addedTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'name': name,
      'addedTime': addedTime == null ? '' : addedTime!.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<OrganizationUnitRoleListDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<OrganizationUnitRoleListDto>() : json.map((value) => new OrganizationUnitRoleListDto.fromJson(value)).toList();
  }

  static Map<String, OrganizationUnitRoleListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationUnitRoleListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationUnitRoleListDto.fromJson(value));
    }
    return map;
  }
}

