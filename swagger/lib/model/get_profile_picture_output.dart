part of swagger.api;

class GetProfilePictureOutput {
  
  String? profilePicture = null;
  
  GetProfilePictureOutput();

  @override
  String toString() {
    return 'GetProfilePictureOutput[profilePicture=$profilePicture, ]';
  }

  GetProfilePictureOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    profilePicture =
        json['profilePicture']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'profilePicture': profilePicture
     };
  }

  static List<GetProfilePictureOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetProfilePictureOutput>() : json.map((value) => new GetProfilePictureOutput.fromJson(value)).toList();
  }

  static Map<String, GetProfilePictureOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetProfilePictureOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetProfilePictureOutput.fromJson(value));
    }
    return map;
  }
}

