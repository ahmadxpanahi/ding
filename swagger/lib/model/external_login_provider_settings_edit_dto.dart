part of swagger.api;

class ExternalLoginProviderSettingsEditDto {
  
  bool facebookIsDeactivated = null;
  

  FacebookExternalLoginProviderSettings facebook = null;
  

  bool googleIsDeactivated = null;
  

  GoogleExternalLoginProviderSettings google = null;
  

  bool twitterIsDeactivated = null;
  

  TwitterExternalLoginProviderSettings twitter = null;
  

  bool microsoftIsDeactivated = null;
  

  MicrosoftExternalLoginProviderSettings microsoft = null;
  

  bool openIdConnectIsDeactivated = null;
  

  OpenIdConnectExternalLoginProviderSettings openIdConnect = null;
  

  List<JsonClaimMapDto> openIdConnectClaimsMapping = [];
  

  bool wsFederationIsDeactivated = null;
  

  WsFederationExternalLoginProviderSettings wsFederation = null;
  

  List<JsonClaimMapDto> wsFederationClaimsMapping = [];
  
  ExternalLoginProviderSettingsEditDto();

  @override
  String toString() {
    return 'ExternalLoginProviderSettingsEditDto[facebookIsDeactivated=$facebookIsDeactivated, facebook=$facebook, googleIsDeactivated=$googleIsDeactivated, google=$google, twitterIsDeactivated=$twitterIsDeactivated, twitter=$twitter, microsoftIsDeactivated=$microsoftIsDeactivated, microsoft=$microsoft, openIdConnectIsDeactivated=$openIdConnectIsDeactivated, openIdConnect=$openIdConnect, openIdConnectClaimsMapping=$openIdConnectClaimsMapping, wsFederationIsDeactivated=$wsFederationIsDeactivated, wsFederation=$wsFederation, wsFederationClaimsMapping=$wsFederationClaimsMapping, ]';
  }

  ExternalLoginProviderSettingsEditDto.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    facebookIsDeactivated =
        json['facebook_IsDeactivated']
    ;
    facebook =
      
      
      new FacebookExternalLoginProviderSettings.fromJson(json['facebook'])
;
    googleIsDeactivated =
        json['google_IsDeactivated']
    ;
    google =
      
      
      new GoogleExternalLoginProviderSettings.fromJson(json['google'])
;
    twitterIsDeactivated =
        json['twitter_IsDeactivated']
    ;
    twitter =
      
      
      new TwitterExternalLoginProviderSettings.fromJson(json['twitter'])
;
    microsoftIsDeactivated =
        json['microsoft_IsDeactivated']
    ;
    microsoft =
      
      
      new MicrosoftExternalLoginProviderSettings.fromJson(json['microsoft'])
;
    openIdConnectIsDeactivated =
        json['openIdConnect_IsDeactivated']
    ;
    openIdConnect =
      
      
      new OpenIdConnectExternalLoginProviderSettings.fromJson(json['openIdConnect'])
;
    openIdConnectClaimsMapping =
      JsonClaimMapDto.listFromJson(json['openIdConnectClaimsMapping'])
;
    wsFederationIsDeactivated =
        json['wsFederation_IsDeactivated']
    ;
    wsFederation =
      
      
      new WsFederationExternalLoginProviderSettings.fromJson(json['wsFederation'])
;
    wsFederationClaimsMapping =
      JsonClaimMapDto.listFromJson(json['wsFederationClaimsMapping'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'facebook_IsDeactivated': facebookIsDeactivated,
      'facebook': facebook,
      'google_IsDeactivated': googleIsDeactivated,
      'google': google,
      'twitter_IsDeactivated': twitterIsDeactivated,
      'twitter': twitter,
      'microsoft_IsDeactivated': microsoftIsDeactivated,
      'microsoft': microsoft,
      'openIdConnect_IsDeactivated': openIdConnectIsDeactivated,
      'openIdConnect': openIdConnect,
      'openIdConnectClaimsMapping': openIdConnectClaimsMapping,
      'wsFederation_IsDeactivated': wsFederationIsDeactivated,
      'wsFederation': wsFederation,
      'wsFederationClaimsMapping': wsFederationClaimsMapping
     };
  }

  static List<ExternalLoginProviderSettingsEditDto> listFromJson(List<dynamic> json) {
    return json == null ? new List<ExternalLoginProviderSettingsEditDto>() : json.map((value) => new ExternalLoginProviderSettingsEditDto.fromJson(value)).toList();
  }

  static Map<String, ExternalLoginProviderSettingsEditDto> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ExternalLoginProviderSettingsEditDto>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ExternalLoginProviderSettingsEditDto.fromJson(value));
    }
    return map;
  }
}

