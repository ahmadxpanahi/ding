part of swagger.api;

class WsFederationExternalLoginProviderSettings {
  
  String? clientId = null;
  

  String? tenant = null;
  

  String? metaDataAddress = null;
  

  String? wtrealm = null;
  

  String? authority = null;
  
  WsFederationExternalLoginProviderSettings();

  @override
  String toString() {
    return 'WsFederationExternalLoginProviderSettings[clientId=$clientId, tenant=$tenant, metaDataAddress=$metaDataAddress, wtrealm=$wtrealm, authority=$authority, ]';
  }

  WsFederationExternalLoginProviderSettings.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    clientId =
        json['clientId']
    ;
    tenant =
        json['tenant']
    ;
    metaDataAddress =
        json['metaDataAddress']
    ;
    wtrealm =
        json['wtrealm']
    ;
    authority =
        json['authority']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'clientId': clientId,
      'tenant': tenant,
      'metaDataAddress': metaDataAddress,
      'wtrealm': wtrealm,
      'authority': authority
     };
  }

  static List<WsFederationExternalLoginProviderSettings> listFromJson(List<dynamic> json) {
    return json == null ? [] : json.map((value) => new WsFederationExternalLoginProviderSettings.fromJson(value)).toList();
  }

  static Map<String, WsFederationExternalLoginProviderSettings> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WsFederationExternalLoginProviderSettings>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WsFederationExternalLoginProviderSettings.fromJson(value));
    }
    return map;
  }
}

