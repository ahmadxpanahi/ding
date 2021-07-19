part of swagger.api;

class LinkToUserInput {
  
  String tenancyName = null;
  

  String usernameOrEmailAddress = null;
  

  String password = null;
  
  LinkToUserInput();

  @override
  String toString() {
    return 'LinkToUserInput[tenancyName=$tenancyName, usernameOrEmailAddress=$usernameOrEmailAddress, password=$password, ]';
  }

  LinkToUserInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tenancyName =
        json['tenancyName']
    ;
    usernameOrEmailAddress =
        json['usernameOrEmailAddress']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'tenancyName': tenancyName,
      'usernameOrEmailAddress': usernameOrEmailAddress,
      'password': password
     };
  }

  static List<LinkToUserInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<LinkToUserInput>() : json.map((value) => new LinkToUserInput.fromJson(value)).toList();
  }

  static Map<String, LinkToUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LinkToUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LinkToUserInput.fromJson(value));
    }
    return map;
  }
}

