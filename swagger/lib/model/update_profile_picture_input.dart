part of swagger.api;

class UpdateProfilePictureInput {
  
  String? fileToken = null;
  

  int? x = null;
  

  int? y = null;
  

  int? width = null;
  

  int? height = null;
  

  bool? useGravatarProfilePicture = null;
  
  UpdateProfilePictureInput();

  @override
  String toString() {
    return 'UpdateProfilePictureInput[fileToken=$fileToken, x=$x, y=$y, width=$width, height=$height, useGravatarProfilePicture=$useGravatarProfilePicture, ]';
  }

  UpdateProfilePictureInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    fileToken =
        json['fileToken']
    ;
    x =
        json['x']
    ;
    y =
        json['y']
    ;
    width =
        json['width']
    ;
    height =
        json['height']
    ;
    useGravatarProfilePicture =
        json['useGravatarProfilePicture']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fileToken': fileToken,
      'x': x,
      'y': y,
      'width': width,
      'height': height,
      'useGravatarProfilePicture': useGravatarProfilePicture
     };
  }

  static List<UpdateProfilePictureInput> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateProfilePictureInput>() : json.map((value) => new UpdateProfilePictureInput.fromJson(value)).toList();
  }

  static Map<String, UpdateProfilePictureInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateProfilePictureInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateProfilePictureInput.fromJson(value));
    }
    return map;
  }
}

