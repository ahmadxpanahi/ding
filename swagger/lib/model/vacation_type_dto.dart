part of swagger.api;

class VacationTypeDto {
  
  String? title = null;
  

  int? totalVacationHours = null;
  

  int? vacationHoursPerMonth = null;
  

  int? vacationHoursPerDay = null;
  

  bool? hasLimitationVacationPerDay = null;
  

  bool? isAssigned = null;
  

  int? id = null;
  
  VacationTypeDto();

  @override
  String toString() {
    return 'VacationTypeDto[title=$title, totalVacationHours=$totalVacationHours, vacationHoursPerMonth=$vacationHoursPerMonth, vacationHoursPerDay=$vacationHoursPerDay, hasLimitationVacationPerDay=$hasLimitationVacationPerDay, isAssigned=$isAssigned, id=$id, ]';
  }

  VacationTypeDto.fromJson(Map<String, dynamic>? json) {
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
    isAssigned =
        json['isAssigned']
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
      'isAssigned': isAssigned,
      'id': id
     };
  }

  static List<VacationTypeDto> listFromJson(List<dynamic>? json) {
    return json == null ? new List<VacationTypeDto>() : json.map((value) => new VacationTypeDto.fromJson(value)).toList();
  }

  static Map<String, VacationTypeDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VacationTypeDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VacationTypeDto.fromJson(value));
    }
    return map;
  }
}

