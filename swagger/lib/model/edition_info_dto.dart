part of swagger.api;

class EditionInfoDto {
  
  String? displayName = null;
  

  int? trialDayCount = null;
  

  double? monthlyPrice = null;
  

  double? annualPrice = null;
  

  bool? isHighestEdition = null;
  

  bool? isFree = null;
  

  int? id = null;
  
  EditionInfoDto();

  @override
  String toString() {
    return 'EditionInfoDto[displayName=$displayName, trialDayCount=$trialDayCount, monthlyPrice=$monthlyPrice, annualPrice=$annualPrice, isHighestEdition=$isHighestEdition, isFree=$isFree, id=$id, ]';
  }

  EditionInfoDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    displayName =
        json['displayName']
    ;
    trialDayCount =
        json['trialDayCount']
    ;
    monthlyPrice =
        json['monthlyPrice'] == null ? null : json['monthlyPrice'].toDouble()
    ;
    annualPrice =
        json['annualPrice'] == null ? null : json['annualPrice'].toDouble()
    ;
    isHighestEdition =
        json['isHighestEdition']
    ;
    isFree =
        json['isFree']
    ;
    id =
        json['id']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'displayName': displayName,
      'trialDayCount': trialDayCount,
      'monthlyPrice': monthlyPrice,
      'annualPrice': annualPrice,
      'isHighestEdition': isHighestEdition,
      'isFree': isFree,
      'id': id
     };
  }

  static List<EditionInfoDto> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new EditionInfoDto.fromJson(value)).toList();
  }

  static Map<String, EditionInfoDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EditionInfoDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EditionInfoDto.fromJson(value));
    }
    return map;
  }
}

