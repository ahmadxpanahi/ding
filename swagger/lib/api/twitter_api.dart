part of swagger.api;



class TwitterApi {
  final ApiClient apiClient;

  TwitterApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiTwitterGetaccesstokenPost
  ///
  /// 
  Future<TwitterGetAccessTokenResponse?> apiTwitterGetaccesstokenPost({ String? token, String? verifier }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Twitter/GetAccessToken".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(token != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "token", token));
    }
    if(verifier != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "verifier", verifier));
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
          apiClient.deserialize(response.body, 'TwitterGetAccessTokenResponse') as TwitterGetAccessTokenResponse ;
    } else {
      return null;
    }
  }
  /// ApiTwitterGetrequesttokenPost
  ///
  /// 
  Future<TwitterGetRequestTokenResponse?> apiTwitterGetrequesttokenPost() async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/Twitter/GetRequestToken".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'TwitterGetRequestTokenResponse') as TwitterGetRequestTokenResponse ;
    } else {
      return null;
    }
  }
}
