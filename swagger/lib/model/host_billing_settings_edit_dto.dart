part of swagger.api;

class HostBillingSettingsEditDto {
  
  String legalName = null;
  

  String address = null;
  
  HostBillingSettingsEditDto();

  @override
  String toString() {
    return 'HostBillingSettingsEditDto[legalName=$legalName, address=$address, ]';
  }

  HostBillingSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    legalName =
        json['legalName']
    ;
    address =
        json['address']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'legalName': legalName,
      'address': address
     };
  }

  static List<HostBillingSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostBillingSettingsEditDto>() : json.map((value) => new HostBillingSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, HostBillingSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HostBillingSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HostBillingSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

