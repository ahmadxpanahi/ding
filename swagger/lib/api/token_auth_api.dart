part of swagger.api;



class TokenAuthApi {
  final ApiClient apiClient;

  TokenAuthApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiTokenauthAuthenticatePost
  ///
  /// 
  Future<AuthenticateResultModel?> apiTokenauthAuthenticatePost({ AuthenticateModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/Authenticate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'AuthenticateResultModel') as AuthenticateResultModel ;
    } else {
      return null;
    }
  }

  /// apiTokenauthSetOTPOnUserPost
  ///
  ///
  Future<AuthenticateResultModel?> apiTokenauthSetOTPOnUserPost({ AuthenticateModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/SetOTPOnUser".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());

      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
        'POST',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);
    if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        apiClient.deserialize(response.body, 'AuthenticateResultModel') as AuthenticateResultModel ;
    } else {
      return null;
    }
  }

  /// apiTokenauthAuthenticatebyOTPPost
  ///
  ///
  Future<AuthenticateResultModel?> apiTokenauthAuthenticatebyOTPPost({ AuthenticateByTenantModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/AuthenticateByOTP".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());

      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
        'POST',
        queryParams,
        postBody,
        headerParams,
        formParams,
        contentType,
        authNames);
    if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        apiClient.deserialize(response.body, 'AuthenticateResultModel') as AuthenticateResultModel ;
    } else {
      return null;
    }
  }

  /// ApiTokenauthAuthenticatebytenantPost
  ///
  /// 
  Future<AuthenticateResultModel?> apiTokenauthAuthenticatebytenantPost({ AuthenticateByTenantModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/AuthenticateByTenant".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'AuthenticateResultModel') as AuthenticateResultModel ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthDelegatedimpersonatedauthenticatePost
  ///
  /// 
  Future<ImpersonatedAuthenticateResultModel?> apiTokenauthDelegatedimpersonatedauthenticatePost({ int? userDelegationId, String? impersonationToken }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/DelegatedImpersonatedAuthenticate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userDelegationId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userDelegationId", userDelegationId));
    }
    if(impersonationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "impersonationToken", impersonationToken));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ImpersonatedAuthenticateResultModel') as ImpersonatedAuthenticateResultModel ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthExternalauthenticatePost
  ///
  /// 
  Future<ExternalAuthenticateResultModel?> apiTokenauthExternalauthenticatePost({ ExternalAuthenticateModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/ExternalAuthenticate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ExternalAuthenticateResultModel') as ExternalAuthenticateResultModel ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthGetexternalauthenticationprovidersGet
  ///
  /// 
  Future<List<ExternalLoginProviderInfoModel>?> apiTokenauthGetexternalauthenticationprovidersGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/GetExternalAuthenticationProviders".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
        (apiClient.deserialize(response.body, 'List<ExternalLoginProviderInfoModel>') as List).map((item) => item as ExternalLoginProviderInfoModel).toList();
    } else {
      return null;
    }
  }
  /// ApiTokenauthImpersonatedauthenticatePost
  ///
  /// 
  Future<ImpersonatedAuthenticateResultModel?> apiTokenauthImpersonatedauthenticatePost({ String? impersonationToken }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/ImpersonatedAuthenticate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(impersonationToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "impersonationToken", impersonationToken));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'ImpersonatedAuthenticateResultModel') as ImpersonatedAuthenticateResultModel ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthLinkedaccountauthenticatePost
  ///
  /// 
  Future<SwitchedAccountAuthenticateResultModel?> apiTokenauthLinkedaccountauthenticatePost({ String? switchAccountToken }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/LinkedAccountAuthenticate".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(switchAccountToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "switchAccountToken", switchAccountToken));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'SwitchedAccountAuthenticateResultModel') as SwitchedAccountAuthenticateResultModel ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthLogoutGet
  ///
  /// 
  Future apiTokenauthLogoutGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/LogOut".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiTokenauthRefreshtokenPost
  ///
  /// 
  Future<RefreshTokenResult?> apiTokenauthRefreshtokenPost({ String? refreshToken }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/RefreshToken".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(refreshToken != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "refreshToken", refreshToken));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'RefreshTokenResult') as RefreshTokenResult ;
    } else {
      return null;
    }
  }
  /// ApiTokenauthSendtwofactorauthcodePost
  ///
  /// 
  Future apiTokenauthSendtwofactorauthcodePost({ SendTwoFactorAuthCodeModel? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/SendTwoFactorAuthCode".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
    print("SWAGGER");
    print(response!.body);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiTokenauthTestnotificationGet
  ///
  /// 
  Future apiTokenauthTestnotificationGet({ String? message, String? severity }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/TokenAuth/TestNotification".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(message != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "message", message));
    }
    if(severity != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "severity", severity));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest("", Uri());
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);
 if(response == null) return null;

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
}
