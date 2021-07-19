part of swagger.api;

class FileDto {
  
  String? fileName = null;
  

  String? fileType = null;
  

  String? fileToken = null;
  
  FileDto();

  @override
  String toString() {
    return 'FileDto[fileName=$fileName, fileType=$fileType, fileToken=$fileToken, ]';
  }

  FileDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    fileName =
        json['fileName']
    ;
    fileType =
        json['fileType']
    ;
    fileToken =
        json['fileToken']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'fileName': fileName,
      'fileType': fileType,
      'fileToken': fileToken
     };
  }

  static List<FileDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<FileDto>() : json.map((value) => new FileDto.fromJson(value)).toList();
  }

  static Map<String, FileDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FileDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FileDto.fromJson(value));
    }
    return map;
  }
}

