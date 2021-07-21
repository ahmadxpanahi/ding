part of swagger.api;



class AccountApi {
  final ApiClient apiClient;

  AccountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppAccountActivateemailPost
  ///
  /// 
  Future apiServicesAppAccountActivateemailPost({ ActivateEmailInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/ActivateEmail".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppAccountBacktoimpersonatorPost
  ///
  /// 
  Future<ImpersonateOutput?> apiServicesAppAccountBacktoimpersonatorPost() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/BackToImpersonator".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ImpersonateOutput') as ImpersonateOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountDelegatedimpersonatePost
  ///
  /// 
  Future<ImpersonateOutput?> apiServicesAppAccountDelegatedimpersonatePost({ DelegatedImpersonateInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/DelegatedImpersonate".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ImpersonateOutput') as ImpersonateOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountGetprofileGet
  ///
  /// 
  Future<UserEditDto?> apiServicesAppAccountGetprofileGet({ int? userId }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/GetProfile".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "userId", userId));
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
          apiClient.deserialize(response.body, 'UserEditDto') as UserEditDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountImpersonatePost
  ///
  /// 
  Future<ImpersonateOutput?> apiServicesAppAccountImpersonatePost({ ImpersonateInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/Impersonate".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ImpersonateOutput') as ImpersonateOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountIstenantavailablePost
  ///
  /// 
  Future<IsTenantAvailableOutput?> apiServicesAppAccountIstenantavailablePost({ IsTenantAvailableInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/IsTenantAvailable".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'IsTenantAvailableOutput') as IsTenantAvailableOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountRegisterPost
  ///
  /// 
  Future<RegisterOutput?> apiServicesAppAccountRegisterPost({ RegisterInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/Register".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'RegisterOutput') as RegisterOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountResetpasswordPost
  ///
  /// 
  Future<ResetPasswordOutput?> apiServicesAppAccountResetpasswordPost({ ResetPasswordInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/ResetPassword".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ResetPasswordOutput') as ResetPasswordOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountResolvetenantidPost
  ///
  /// 
  Future<int?> apiServicesAppAccountResolvetenantidPost({ ResolveTenantIdInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/ResolveTenantId".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountSaveprofilePost
  ///
  /// 
  Future apiServicesAppAccountSaveprofilePost({ UserEditDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/SaveProfile".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppAccountSendemailactivationlinkPost
  ///
  /// 
  Future apiServicesAppAccountSendemailactivationlinkPost({ SendEmailActivationLinkInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/SendEmailActivationLink".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppAccountSendpasswordresetcodePost
  ///
  /// 
  Future apiServicesAppAccountSendpasswordresetcodePost({ SendPasswordResetCodeInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/SendPasswordResetCode".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppAccountSendverificationsmsPost
  ///
  /// 
  Future apiServicesAppAccountSendverificationsmsPost({ SendVerificationSmsInputDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/SendVerificationSms".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppAccountSwitchtolinkedaccountPost
  ///
  /// 
  Future<SwitchToLinkedAccountOutput?> apiServicesAppAccountSwitchtolinkedaccountPost({ SwitchToLinkedAccountInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/SwitchToLinkedAccount".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'SwitchToLinkedAccountOutput') as SwitchToLinkedAccountOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountVerifyregistertokenPost
  ///
  /// 
  Future<String?> apiServicesAppAccountVerifyregistertokenPost({ String? token }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/VerifyRegisterToken".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppAccountVerifysmscodePost
  ///
  /// 
  Future<String?> apiServicesAppAccountVerifysmscodePost({ VerifySmsCodeInputDto? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Account/VerifySmsCode".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
