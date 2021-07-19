part of swagger.api;

class CalendarDto {
  
  int year = null;
  

  String month = null;
  

  String day = null;
  

  String culture = null;
  

  String eventName = null;
  

  DateTime eventDate = null;
  

  EventType eventType = null;
  

  int id = null;
  
  CalendarDto();

  @override
  String toString() {
    return 'CalendarDto[year=$year, month=$month, day=$day, culture=$culture, eventName=$eventName, eventDate=$eventDate, eventType=$eventType, id=$id, ]';
  }

  CalendarDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    year =
        json['year']
    ;
    month =
        json['month']
    ;
    day =
        json['day']
    ;
    culture =
        json['culture']
    ;
    eventName =
        json['eventName']
    ;
    eventDate = json['eventDate'] == null ? null : DateTime.parse(json['eventDate']);
    eventType =
      
      
      new EventType.fromJson(json['eventType'])
;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'year': year,
      'month': month,
      'day': day,
      'culture': culture,
      'eventName': eventName,
      'eventDate': eventDate == null ? '' : eventDate.toUtc().toIso8601String(),
      'eventType': eventType,
      'id': id
     };
  }

  static List<CalendarDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<CalendarDto>() : json.map((value) => new CalendarDto.fromJson(value)).toList();
  }

  static Map<String, CalendarDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CalendarDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CalendarDto.fromJson(value));
    }
    return map;
  }
}

