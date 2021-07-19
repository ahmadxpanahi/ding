part of swagger.api;



class TenantRegistrationApi {
  final ApiClient apiClient;

  TenantRegistrationApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppTenantregistrationGeteditionGet
  ///
  /// 
  Future<EditionSelectDto> apiServicesAppTenantregistrationGeteditionGet({ int editionId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantRegistration/GetEdition".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(editionId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "editionId", editionId));
    }
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
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

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'EditionSelectDto') as EditionSelectDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantregistrationGeteditionsforselectGet
  ///
  /// 
  Future<EditionsSelectOutput> apiServicesAppTenantregistrationGeteditionsforselectGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantRegistration/GetEditionsForSelect".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
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

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'EditionsSelectOutput') as EditionsSelectOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppTenantregistrationRegistertenantPost
  ///
  /// 
  Future<RegisterTenantOutput> apiServicesAppTenantregistrationRegistertenantPost({ RegisterTenantInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/TenantRegistration/RegisterTenant".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json-patch+json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      
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

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return 
          apiClient.deserialize(response.body, 'RegisterTenantOutput') as RegisterTenantOutput ;
    } else {
      return null;
    }
  }
}
