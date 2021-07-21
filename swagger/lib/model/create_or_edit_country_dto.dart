part of swagger.api;

class CreateOrEditCountryDto {
  
  String? name = null;
  

  String? isO3 = null;
  

  String? isO2 = null;
  

  String? phoneCode = null;
  

  String? capital = null;
  

  String? currency = null;
  

  String? nativeName = null;
  

  String? region = null;
  

  String? subregion = null;
  

  String? timezones = null;
  

  String? emoji = null;
  

  String? emojiUnicode = null;
  

  int? id = null;
  
  CreateOrEditCountryDto();

  @override
  String toString() {
    return 'CreateOrEditCountryDto[name=$name, isO3=$isO3, isO2=$isO2, phoneCode=$phoneCode, capital=$capital, currency=$currency, nativeName=$nativeName, region=$region, subregion=$subregion, timezones=$timezones, emoji=$emoji, emojiUnicode=$emojiUnicode, id=$id, ]';
  }

  CreateOrEditCountryDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    name =
        json['name']
    ;
    isO3 =
        json['isO3']
    ;
    isO2 =
        json['isO2']
    ;
    phoneCode =
        json['phoneCode']
    ;
    capital =
        json['capital']
    ;
    currency =
        json['currency']
    ;
    nativeName =
        json['nativeName']
    ;
    region =
        json['region']
    ;
    subregion =
        json['subregion']
    ;
    timezones =
        json['timezones']
    ;
    emoji =
        json['emoji']
    ;
    emojiUnicode =
        json['emojiUnicode']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'isO3': isO3,
      'isO2': isO2,
      'phoneCode': phoneCode,
      'capital': capital,
      'currency': currency,
      'nativeName': nativeName,
      'region': region,
      'subregion': subregion,
      'timezones': timezones,
      'emoji': emoji,
      'emojiUnicode': emojiUnicode,
      'id': id
     };
  }

  static List<CreateOrEditCountryDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new CreateOrEditCountryDto.fromJson(value)).toList();
  }

  static Map<String, CreateOrEditCountryDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateOrEditCountryDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateOrEditCountryDto.fromJson(value));
    }
    return map;
  }
}

