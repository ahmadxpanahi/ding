part of swagger.api;

class TenantBillingSettingsEditDto {
  
  String legalName = null;
  

  String address = null;
  

  String taxVatNo = null;
  
  TenantBillingSettingsEditDto();

  @override
  String toString() {
    return 'TenantBillingSettingsEditDto[legalName=$legalName, address=$address, taxVatNo=$taxVatNo, ]';
  }

  TenantBillingSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    legalName =
        json['legalName']
    ;
    address =
        json['address']
    ;
    taxVatNo =
        json['taxVatNo']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'legalName': legalName,
      'address': address,
      'taxVatNo': taxVatNo
     };
  }

  static List<TenantBillingSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantBillingSettingsEditDto>() : json.map((value) => new TenantBillingSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantBillingSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantBillingSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantBillingSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

