part of swagger.api;

class UpdateEditionDto {
  
  EditionEditDto edition = null;
  

  List<NameValueDto> featureValues = [];
  
  UpdateEditionDto();

  @override
  String toString() {
    return 'UpdateEditionDto[edition=$edition, featureValues=$featureValues, ]';
  }

  UpdateEditionDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    edition =
      
      
      new EditionEditDto.fromJson(json['edition'])
;
    featureValues =
      NameValueDto.listFromJson(json['featureValues'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'edition': edition,
      'featureValues': featureValues
     };
  }

  static List<UpdateEditionDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateEditionDto>() : json.map((value) => new UpdateEditionDto.fromJson(value)).toList();
  }

  static Map<String, UpdateEditionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateEditionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateEditionDto.fromJson(value));
    }
    return map;
  }
}

