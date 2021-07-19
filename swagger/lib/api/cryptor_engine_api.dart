part of swagger.api;



class CryptorEngineApi {
  final ApiClient apiClient;

  CryptorEngineApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCryptorengineDecryptPost
  ///
  /// 
  Future<String> apiServicesAppCryptorengineDecryptPost({ String? cipherString, bool? useHashing }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/CryptorEngine/Decrypt".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(cipherString != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "cipherString", cipherString));
    }
    if(useHashing != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "useHashing", useHashing));
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCryptorengineEncryptPost
  ///
  /// 
  Future<String> apiServicesAppCryptorengineEncryptPost({ String? toEncrypt, bool? useHashing }) async {
    Object? postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/CryptorEngine/Encrypt".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(toEncrypt != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "toEncrypt", toEncrypt));
    }
    if(useHashing != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "useHashing", useHashing));
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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
}
