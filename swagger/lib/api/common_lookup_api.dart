part of swagger.api;



class CommonLookupApi {
  final ApiClient apiClient;

  CommonLookupApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCommonlookupFindusersPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto?> apiServicesAppCommonlookupFindusersPost({ FindUsersInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/CommonLookup/FindUsers".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfNameValueDto') as PagedResultDtoOfNameValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCommonlookupGetdefaulteditionnameGet
  ///
  /// 
  Future<GetDefaultEditionNameOutput?> apiServicesAppCommonlookupGetdefaulteditionnameGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/CommonLookup/GetDefaultEditionName".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'GetDefaultEditionNameOutput') as GetDefaultEditionNameOutput ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCommonlookupGeteditionsforcomboboxGet
  ///
  /// 
  Future<ListResultDtoOfSubscribableEditionComboboxItemDto?> apiServicesAppCommonlookupGeteditionsforcomboboxGet({ bool? onlyFreeItems }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/CommonLookup/GetEditionsForCombobox".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(onlyFreeItems != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "onlyFreeItems", onlyFreeItems));
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
          apiClient.deserialize(response.body, 'ListResultDtoOfSubscribableEditionComboboxItemDto') as ListResultDtoOfSubscribableEditionComboboxItemDto ;
    } else {
      return null;
    }
  }
}
