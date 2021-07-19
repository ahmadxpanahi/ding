part of swagger.api;

class OrganizationUnitUserListDto {
  
  String? name = null;
  

  String? surname = null;
  

  String? userName = null;
  

  String? emailAddress = null;
  

  String? profilePictureId = null;
  

  DateTime? addedTime = null;
  

  int? id = null;
  
  OrganizationUnitUserListDto();

  @override
  String toString() {
    return 'OrganizationUnitUserListDto[name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, profilePictureId=$profilePictureId, addedTime=$addedTime, id=$id, ]';
  }

  OrganizationUnitUserListDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    surname =
        json['surname']
    ;
    userName =
        json['userName']
    ;
    emailAddress =
        json['emailAddress']
    ;
    profilePictureId =
        json['profilePictureId']
    ;
    addedTime = json['addedTime'] == null ? null : DateTime.parse(json['addedTime']);
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'surname': surname,
      'userName': userName,
      'emailAddress': emailAddress,
      'profilePictureId': profilePictureId,
      'addedTime': addedTime == null ? '' : addedTime!.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<OrganizationUnitUserListDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<OrganizationUnitUserListDto>() : json.map((value) => new OrganizationUnitUserListDto.fromJson(value)).toList();
  }

  static Map<String, OrganizationUnitUserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OrganizationUnitUserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OrganizationUnitUserListDto.fromJson(value));
    }
    return map;
  }
}

