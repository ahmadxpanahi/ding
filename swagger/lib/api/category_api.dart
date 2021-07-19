part of swagger.api;



class CategoryApi {
  final ApiClient apiClient;

  CategoryApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppCategoryAddrolestocategoryPost
  ///
  /// 
  Future apiServicesAppCategoryAddrolestocategoryPost({ RolesToCategoryInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/AddRolesToCategory".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppCategoryAdduserstocategoryPost
  ///
  /// 
  Future apiServicesAppCategoryAdduserstocategoryPost({ UsersToCategoryInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/AddUsersToCategory".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppCategoryCreatecategoryPost
  ///
  /// 
  Future<CategoryDto> apiServicesAppCategoryCreatecategoryPost({ CreateOrEditCategoryDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/CreateCategory".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'CategoryDto') as CategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryDeletecategoryDelete
  ///
  /// 
  Future apiServicesAppCategoryDeletecategoryDelete({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/DeleteCategory".replaceAll("{format}","json");

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
      MultipartRequest mp = new MultipartRequest(null, null);
      
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppCategoryFindrolesPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto> apiServicesAppCategoryFindrolesPost({ FindCategoryRolesInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/FindRoles".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfNameValueDto') as PagedResultDtoOfNameValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryFindusersPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto> apiServicesAppCategoryFindusersPost({ FindCategoryUsersInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/FindUsers".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfNameValueDto') as PagedResultDtoOfNameValueDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoriesGet
  ///
  /// 
  Future<ListResultDtoOfCategoryDto> apiServicesAppCategoryGetcategoriesGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/GetCategories".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ListResultDtoOfCategoryDto') as ListResultDtoOfCategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoriesbycategorytypeGet
  ///
  /// 
  Future<ListResultDtoOfCategoryDto> apiServicesAppCategoryGetcategoriesbycategorytypeGet(String categoryType) async {
    Object postBody = null;

    // verify required params are set
    if(categoryType == null) {
     throw new ApiException(400, "Missing required param: categoryType");
    }

    // create path and map variables
    String path = "/api/services/app/Category/getCategoriesByCategoryType".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "categoryType", categoryType));
    
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
          apiClient.deserialize(response.body, 'ListResultDtoOfCategoryDto') as ListResultDtoOfCategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoriesforuserGet
  ///
  /// 
  Future<ListResultDtoOfCategoryDto> apiServicesAppCategoryGetcategoriesforuserGet(String categoryType) async {
    Object postBody = null;

    // verify required params are set
    if(categoryType == null) {
     throw new ApiException(400, "Missing required param: categoryType");
    }

    // create path and map variables
    String path = "/api/services/app/Category/GetCategoriesForUser".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "categoryType", categoryType));
    
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
          apiClient.deserialize(response.body, 'ListResultDtoOfCategoryDto') as ListResultDtoOfCategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoryidbynameGet
  ///
  /// 
  Future<CategoryDto> apiServicesAppCategoryGetcategoryidbynameGet({ String categoryName }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/GetCategoryIdByName".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(categoryName != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "categoryName", categoryName));
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
          apiClient.deserialize(response.body, 'CategoryDto') as CategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoryrolesGet
  ///
  /// 
  Future<PagedResultDtoOfCategoryRoleListDto> apiServicesAppCategoryGetcategoryrolesGet({ int id, String sorting, int maxResultCount, int skipCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/GetCategoryRoles".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfCategoryRoleListDto') as PagedResultDtoOfCategoryRoleListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryGetcategoryusersGet
  ///
  /// 
  Future<PagedResultDtoOfCategoryUserListDto> apiServicesAppCategoryGetcategoryusersGet({ int id, String sorting, int maxResultCount, int skipCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/GetCategoryUsers".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(id != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "Id", id));
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
          apiClient.deserialize(response.body, 'PagedResultDtoOfCategoryUserListDto') as PagedResultDtoOfCategoryUserListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryMovecategoryPost
  ///
  /// 
  Future<CategoryDto> apiServicesAppCategoryMovecategoryPost({ MoveCategoryInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/MoveCategory".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'CategoryDto') as CategoryDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppCategoryRemoverolefromcategoryDelete
  ///
  /// 
  Future apiServicesAppCategoryRemoverolefromcategoryDelete({ int roleId, int categoryId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/RemoveRoleFromCategory".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(roleId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RoleId", roleId));
    }
    if(categoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CategoryId", categoryId));
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
                                             'DELETE',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppCategoryRemoveuserfromcategoryDelete
  ///
  /// 
  Future apiServicesAppCategoryRemoveuserfromcategoryDelete({ int userId, int categoryId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/RemoveUserFromCategory".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserId", userId));
    }
    if(categoryId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "CategoryId", categoryId));
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
                                             'DELETE',
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
          ;
    } else {
      return ;
    }
  }
  /// ApiServicesAppCategoryUpdatecategoryPut
  ///
  /// 
  Future<CategoryDto> apiServicesAppCategoryUpdatecategoryPut({ CreateOrEditCategoryDto body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/Category/UpdateCategory".replaceAll("{format}","json");

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
                                             'PUT',
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
          apiClient.deserialize(response.body, 'CategoryDto') as CategoryDto ;
    } else {
      return null;
    }
  }
}
