part of swagger.api;

class ListResultDtoOfAllAvailableDevicesDto {
  
  List<AllAvailableDevicesDto> items = [];
  
  ListResultDtoOfAllAvailableDevicesDto();

  @override
  String toString() {
    return 'ListResultDtoOfAllAvailableDevicesDto[items=$items, ]';
  }

  ListResultDtoOfAllAvailableDevicesDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    items =
      AllAvailableDevicesDto.listFromJson(json['items'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'items': items
     };
  }

  static List<ListResultDtoOfAllAvailableDevicesDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new ListResultDtoOfAllAvailableDevicesDto.fromJson(value)).toList();
  }

  static Map<String, ListResultDtoOfAllAvailableDevicesDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ListResultDtoOfAllAvailableDevicesDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ListResultDtoOfAllAvailableDevicesDto.fromJson(value));
    }
    return map;
  }
}

