part of swagger.api;

class CreateEditionDto {
  
  EditionCreateDto? edition = null;
  

  List<NameValueDto> featureValues = [];
  
  CreateEditionDto();

  @override
  String toString() {
    return 'CreateEditionDto[edition=$edition, featureValues=$featureValues, ]';
  }

  CreateEditionDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    edition =
      
      
      new EditionCreateDto.fromJson(json['edition'])
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

  static List<CreateEditionDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateEditionDto.fromJson(value)).toList();
  }

  static Map<String, CreateEditionDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateEditionDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateEditionDto.fromJson(value));
    }
    return map;
  }
}

