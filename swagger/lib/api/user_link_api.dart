part of swagger.api;



class UserLinkApi {
  final ApiClient apiClient;

  UserLinkApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppUserlinkGetlinkedusersGet
  ///
  /// 
  Future<PagedResultDtoOfLinkedUserDto?> apiServicesAppUserlinkGetlinkedusersGet({ int? maxResultCount, int? skipCount, String? sorting }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserLink/GetLinkedUsers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(maxResultCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "MaxResultCount", maxResultCount));
    }
    if(skipCount != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "SkipCount", skipCount));
    }
    if(sorting != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Sorting", sorting));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfLinkedUserDto') as PagedResultDtoOfLinkedUserDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserlinkGetrecentlyusedlinkedusersGet
  ///
  /// 
  Future<ListResultDtoOfLinkedUserDto?> apiServicesAppUserlinkGetrecentlyusedlinkedusersGet() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserLink/GetRecentlyUsedLinkedUsers".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ListResultDtoOfLinkedUserDto') as ListResultDtoOfLinkedUserDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppUserlinkLinktouserPost
  ///
  /// 
  Future apiServicesAppUserlinkLinktouserPost({ LinkToUserInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserLink/LinkToUser".replaceAll("{format}","json");

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
  /// ApiServicesAppUserlinkUnlinkuserPost
  ///
  /// 
  Future apiServicesAppUserlinkUnlinkuserPost({ UnlinkUserInput? body }) async {
    Object? postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/UserLink/UnlinkUser".replaceAll("{format}","json");

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
}
