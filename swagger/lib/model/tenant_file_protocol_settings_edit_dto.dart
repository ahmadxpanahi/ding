part of swagger.api;

class TenantFileProtocolSettingsEditDto {
  
  bool? isFTPProtocol = null;
  

  String? ftpRootAddress = null;
  

  String? ftpUser = null;
  

  String? ftpPassword = null;
  

  bool? isFileProtocol = null;
  

  String? path = null;
  

  String? mediaRootAddress = null;
  
  TenantFileProtocolSettingsEditDto();

  @override
  String toString() {
    return 'TenantFileProtocolSettingsEditDto[isFTPProtocol=$isFTPProtocol, ftpRootAddress=$ftpRootAddress, ftpUser=$ftpUser, ftpPassword=$ftpPassword, isFileProtocol=$isFileProtocol, path=$path, mediaRootAddress=$mediaRootAddress, ]';
  }

  TenantFileProtocolSettingsEditDto.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    isFTPProtocol =
        json['isFTPProtocol']
    ;
    ftpRootAddress =
        json['ftpRootAddress']
    ;
    ftpUser =
        json['ftpUser']
    ;
    ftpPassword =
        json['ftpPassword']
    ;
    isFileProtocol =
        json['isFileProtocol']
    ;
    path =
        json['path']
    ;
    mediaRootAddress =
        json['mediaRootAddress']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'isFTPProtocol': isFTPProtocol,
      'ftpRootAddress': ftpRootAddress,
      'ftpUser': ftpUser,
      'ftpPassword': ftpPassword,
      'isFileProtocol': isFileProtocol,
      'path': path,
      'mediaRootAddress': mediaRootAddress
     };
  }

  static List<TenantFileProtocolSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<TenantFileProtocolSettingsEditDto>() : json.map((value) => new TenantFileProtocolSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, TenantFileProtocolSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TenantFileProtocolSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TenantFileProtocolSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

