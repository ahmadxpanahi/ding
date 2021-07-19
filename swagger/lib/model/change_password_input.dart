part of swagger.api;

class ChangePasswordInput {
  
  String? currentPassword = null;
  

  String? newPassword = null;
  
  ChangePasswordInput();

  @override
  String toString() {
    return 'ChangePasswordInput[currentPassword=$currentPassword, newPassword=$newPassword, ]';
  }

  ChangePasswordInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    currentPassword =
        json['currentPassword']
    ;
    newPassword =
        json['newPassword']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'currentPassword': currentPassword,
      'newPassword': newPassword
     };
  }

  static List<ChangePasswordInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<ChangePasswordInput>() : json.map((value) => new ChangePasswordInput.fromJson(value)).toList();
  }

  static Map<String, ChangePasswordInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ChangePasswordInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ChangePasswordInput.fromJson(value));
    }
    return map;
  }
}

