part of swagger.api;

class CreateOrEditVacationTypeDto {
  
  String? title = null;
  

  int? totalVacationHours = null;
  

  int? vacationHoursPerMonth = null;
  

  int? vacationHoursPerDay = null;
  

  bool? hasLimitationVacationPerDay = null;
  

  String? description = null;
  

  int? id = null;
  
  CreateOrEditVacationTypeDto();

  @override
  String toString() {
    return 'CreateOrEditVacationTypeDto[title=$title, totalVacationHours=$totalVacationHours, vacationHoursPerMonth=$vacationHoursPerMonth, vacationHoursPerDay=$vacationHoursPerDay, hasLimitationVacationPerDay=$hasLimitationVacationPerDay, description=$description, id=$id, ]';
  }

  CreateOrEditVacationTypeDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    title =
        json['title']
    ;
    totalVacationHours =
        json['totalVacationHours']
    ;
    vacationHoursPerMonth =
        json['vacationHoursPerMonth']
    ;
    vacationHoursPerDay =
        json['vacationHoursPerDay']
    ;
    hasLimitationVacationPerDay =
        json['hasLimitationVacationPerDay']
    ;
    description =
        json['description']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'totalVacationHours': totalVacationHours,
      'vacationHoursPerMonth': vacationHoursPerMonth,
      'vacationHoursPerDay': vacationHoursPerDay,
      'hasLimitationVacationPerDay': hasLimitationVacationPerDay,
      'description': description,
      'id': id
     };
  }

  static List<CreateOrEditVacationTypeDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditVacationTypeDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditVacationTypeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditVacationTypeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditVacationTypeDto.fromJson(value));
    }
    return map;
  }
}

