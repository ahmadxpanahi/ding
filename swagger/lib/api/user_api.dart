part of swagger.api;



class UserApi {
  final ApiClient apiClient;

  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppUserCreateorupdateuserPost
  ///
  /// 
  Future<int?> apiServicesAppUserCreateorupdateuserPost({ CreateOrUpdateUserInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/CreateOrUpdateUser".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserCreateuserontenantPost
  ///
  /// 
  Future<int?> apiServicesAppUserCreateuserontenantPost({ CreateUserOnTenantInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/CreateUserOnTenant".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'int') as int ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserDeleteuserDelete
  ///
  /// 
  Future apiServicesAppUserDeleteuserDelete({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/DeleteUser".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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

    var response = await (apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserFindusersPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto?> apiServicesAppUserFindusersPost({ GetAllForLookupTableInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/FindUsers".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfNameValueDto') as PagedResultDtoOfNameValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserGetuserforeditGet
  ///
  /// 
  Future<GetUserForEditOutput?> apiServicesAppUserGetuserforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/GetUserForEdit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetUserForEditOutput') as GetUserForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserGetuserfromalltenantsGet
  ///
  /// 
  Future<GetUserForEditOutput?> apiServicesAppUserGetuserfromalltenantsGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/GetUserFromAllTenants".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetUserForEditOutput') as GetUserForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserGetuserpermissionsforeditGet
  ///
  /// 
  Future<GetUserPermissionsForEditOutput?> apiServicesAppUserGetuserpermissionsforeditGet({ int? id }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/GetUserPermissionsForEdit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'GetUserPermissionsForEditOutput') as GetUserPermissionsForEditOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserGetusersGet
  ///
  /// 
  Future<PagedResultDtoOfUserListDto?> apiServicesAppUserGetusersGet({ String? filter, List<String>? permissions, int? role, bool? onlyLockedUsers, String? genderType, DateTime? birthdate, String? bankAccount, String? address, String? homePhoneNumber, String? workPhoneNumber, String? postalCode, String? birthCertificateNumber, String? nationalCode, String? degreeType, String? occupation, String? jobTitle, String? introduceType, String? sorting, int? maxResultCount, int? skipCount }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/GetUsers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(permissions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "Permissions", permissions));
    }
    if(role != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Role", role));
    }
    if(onlyLockedUsers != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OnlyLockedUsers", onlyLockedUsers));
    }
    if(genderType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "GenderType", genderType));
    }
    if(birthdate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Birthdate", birthdate));
    }
    if(bankAccount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BankAccount", bankAccount));
    }
    if(address != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Address", address));
    }
    if(homePhoneNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HomePhoneNumber", homePhoneNumber));
    }
    if(workPhoneNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkPhoneNumber", workPhoneNumber));
    }
    if(postalCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "PostalCode", postalCode));
    }
    if(birthCertificateNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BirthCertificateNumber", birthCertificateNumber));
    }
    if(nationalCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NationalCode", nationalCode));
    }
    if(degreeType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DegreeType", degreeType));
    }
    if(occupation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Occupation", occupation));
    }
    if(jobTitle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "JobTitle", jobTitle));
    }
    if(introduceType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "IntroduceType", introduceType));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
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

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'PagedResultDtoOfUserListDto') as PagedResultDtoOfUserListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserGetuserstoexcelGet
  ///
  /// 
  Future<FileDto?> apiServicesAppUserGetuserstoexcelGet({ String? filter, List<String>? permissions, int? role, bool? onlyLockedUsers, String? sorting, String? genderType, DateTime? birthdate, String? bankAccount, String? address, String? homePhoneNumber, String? workPhoneNumber, String? postalCode, String? birthCertificateNumber, String? nationalCode, String? degreeType, String? occupation, String? jobTitle, String? introduceType }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/GetUsersToExcel".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(filter != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Filter", filter));
    }
    if(permissions != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("multi", "Permissions", permissions));
    }
    if(role != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Role", role));
    }
    if(onlyLockedUsers != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OnlyLockedUsers", onlyLockedUsers));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
    }
    if(genderType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "GenderType", genderType));
    }
    if(birthdate != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Birthdate", birthdate));
    }
    if(bankAccount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BankAccount", bankAccount));
    }
    if(address != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Address", address));
    }
    if(homePhoneNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "HomePhoneNumber", homePhoneNumber));
    }
    if(workPhoneNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "WorkPhoneNumber", workPhoneNumber));
    }
    if(postalCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "PostalCode", postalCode));
    }
    if(birthCertificateNumber != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "BirthCertificateNumber", birthCertificateNumber));
    }
    if(nationalCode != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "NationalCode", nationalCode));
    }
    if(degreeType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "DegreeType", degreeType));
    }
    if(occupation != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Occupation", occupation));
    }
    if(jobTitle != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "JobTitle", jobTitle));
    }
    if(introduceType != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "IntroduceType", introduceType));
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

    var response = await (apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'FileDto') as FileDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserResetuserspecificpermissionsPost
  ///
  /// 
  Future apiServicesAppUserResetuserspecificpermissionsPost({ EntityDtoOfInt64? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/ResetUserSpecificPermissions".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserUnlockuserPost
  ///
  /// 
  Future apiServicesAppUserUnlockuserPost({ EntityDtoOfInt64? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/UnlockUser".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppUserUpdateuserpermissionsPut
  ///
  /// 
  Future apiServicesAppUserUpdateuserpermissionsPut({ UpdateUserPermissionsInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/User/UpdateUserPermissions".replaceAll("{format}","json");

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

    var response = await (apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames) as FutureOr<Response>);

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
