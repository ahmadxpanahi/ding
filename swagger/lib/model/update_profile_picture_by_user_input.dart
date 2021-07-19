part of swagger.api;

class UpdateProfilePictureByUserInput {
  
  int? userId = null;
  

  String? fileToken = null;
  

  String? imageByte = null;
  

  int? x = null;
  

  int? y = null;
  

  int? width = null;
  

  int? height = null;
  
  UpdateProfilePictureByUserInput();

  @override
  String toString() {
    return 'UpdateProfilePictureByUserInput[userId=$userId, fileToken=$fileToken, imageByte=$imageByte, x=$x, y=$y, width=$width, height=$height, ]';
  }

  UpdateProfilePictureByUserInput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    userId =
        json['userId']
    ;
    fileToken =
        json['fileToken']
    ;
    imageByte =
        json['imageByte']
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
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'fileToken': fileToken,
      'imageByte': imageByte,
      'x': x,
      'y': y,
      'width': width,
      'height': height
     };
  }

  static List<UpdateProfilePictureByUserInput> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new UpdateProfilePictureByUserInput.fromJson(value)).toList();
  }

  static Map<String, UpdateProfilePictureByUserInput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateProfilePictureByUserInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateProfilePictureByUserInput.fromJson(value));
    }
    return map;
  }
}

