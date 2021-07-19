part of swagger.api;

class TenantFooterSettingsEditDto {
  
  String footerBody = null;
  

  String copyrightText = null;
  
  TenantFooterSettingsEditDto();

  @override
  String toString() {
    return 'TenantFooterSettingsEditDto[footerBody=$footerBody, copyrightText=$copyrightText, ]';
  }

  TenantFooterSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    footerBody =
        json['footerBody']
    ;
    copyrightText =
        json['copyrightText']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'footerBody': footerBody,
      'copyrightText': copyrightText
     };
  }

  static List<TenantFooterSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantFooterSettingsEditDto>() : json.map((value) => new TenantFooterSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantFooterSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantFooterSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantFooterSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

