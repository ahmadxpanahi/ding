part of swagger.api;

class GetVacationTypeForEditOutput {
  
  CreateOrEditVacationTypeDto? vacationType = null;
  
  GetVacationTypeForEditOutput();

  @override
  String toString() {
    return 'GetVacationTypeForEditOutput[vacationType=$vacationType, ]';
  }

  GetVacationTypeForEditOutput.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    vacationType =
      
      
      new CreateOrEditVacationTypeDto.fromJson(json['vacationType'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'vacationType': vacationType
     };
  }

  static List<GetVacationTypeForEditOutput> listFromJson(List<dynamic> json) {
    return json == null ? new List<GetVacationTypeForEditOutput>() : json.map((value) => new GetVacationTypeForEditOutput.fromJson(value)).toList();
  }

  static Map<String, GetVacationTypeForEditOutput> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, GetVacationTypeForEditOutput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new GetVacationTypeForEditOutput.fromJson(value));
    }
    return map;
  }
}

