part of swagger.api;

class CategoryUserListDto {
  
  String name = null;
  

  String surname = null;
  

  String userName = null;
  

  String emailAddress = null;
  

  String profilePictureId = null;
  

  DateTime addedTime = null;
  

  int id = null;
  
  CategoryUserListDto();

  @override
  String toString() {
    return 'CategoryUserListDto[name=$name, surname=$surname, userName=$userName, emailAddress=$emailAddress, profilePictureId=$profilePictureId, addedTime=$addedTime, id=$id, ]';
  }

  CategoryUserListDto.fromJson(Map<String, dynamic> json) {
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
      'addedTime': addedTime == null ? '' : addedTime.toUtc().toIso8601String(),
      'id': id
     };
  }

  static List<CategoryUserListDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CategoryUserListDto>() : json.map((value) => new CategoryUserListDto.fromJson(value)).toList();
  }

  static Map<String, CategoryUserListDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CategoryUserListDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CategoryUserListDto.fromJson(value));
    }
    return map;
  }
}

