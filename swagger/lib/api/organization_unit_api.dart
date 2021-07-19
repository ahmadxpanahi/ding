part of swagger.api;



class OrganizationUnitApi {
  final ApiClient apiClient;

  OrganizationUnitApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// ApiServicesAppOrganizationunitAddrolestoorganizationunitPost
  ///
  /// 
  Future apiServicesAppOrganizationunitAddrolestoorganizationunitPost({ RolesToOrganizationUnitInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/AddRolesToOrganizationUnit".replaceAll("{format}","json");

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
  /// ApiServicesAppOrganizationunitAdduserstoorganizationunitPost
  ///
  /// 
  Future apiServicesAppOrganizationunitAdduserstoorganizationunitPost({ UsersToOrganizationUnitInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/AddUsersToOrganizationUnit".replaceAll("{format}","json");

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
  /// ApiServicesAppOrganizationunitCreateorganizationunitPost
  ///
  /// 
  Future<OrganizationUnitDto> apiServicesAppOrganizationunitCreateorganizationunitPost({ CreateOrganizationUnitInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/CreateOrganizationUnit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'OrganizationUnitDto') as OrganizationUnitDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitDeleteorganizationunitDelete
  ///
  /// 
  Future apiServicesAppOrganizationunitDeleteorganizationunitDelete({ int id }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/DeleteOrganizationUnit".replaceAll("{format}","json");

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
  /// ApiServicesAppOrganizationunitFindrolesPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto> apiServicesAppOrganizationunitFindrolesPost({ FindOrganizationUnitRolesInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/FindRoles".replaceAll("{format}","json");

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
  /// ApiServicesAppOrganizationunitFindusersPost
  ///
  /// 
  Future<PagedResultDtoOfNameValueDto> apiServicesAppOrganizationunitFindusersPost({ FindOrganizationUnitUsersInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/FindUsers".replaceAll("{format}","json");

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
  /// ApiServicesAppOrganizationunitGetorganizationunitrolesGet
  ///
  /// 
  Future<PagedResultDtoOfOrganizationUnitRoleListDto> apiServicesAppOrganizationunitGetorganizationunitrolesGet({ int id, String sorting, int maxResultCount, int skipCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/GetOrganizationUnitRoles".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfOrganizationUnitRoleListDto') as PagedResultDtoOfOrganizationUnitRoleListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitGetorganizationunitsGet
  ///
  /// 
  Future<ListResultDtoOfOrganizationUnitDto> apiServicesAppOrganizationunitGetorganizationunitsGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/GetOrganizationUnits".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ListResultDtoOfOrganizationUnitDto') as ListResultDtoOfOrganizationUnitDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitGetorganizationunitsforuserGet
  ///
  /// 
  Future<ListResultDtoOfOrganizationUnitDto> apiServicesAppOrganizationunitGetorganizationunitsforuserGet() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/GetOrganizationUnitsForUser".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ListResultDtoOfOrganizationUnitDto') as ListResultDtoOfOrganizationUnitDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitGetorganizationunitusersGet
  ///
  /// 
  Future<PagedResultDtoOfOrganizationUnitUserListDto> apiServicesAppOrganizationunitGetorganizationunitusersGet({ int id, String sorting, int maxResultCount, int skipCount }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/GetOrganizationUnitUsers".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PagedResultDtoOfOrganizationUnitUserListDto') as PagedResultDtoOfOrganizationUnitUserListDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitMoveorganizationunitPost
  ///
  /// 
  Future<OrganizationUnitDto> apiServicesAppOrganizationunitMoveorganizationunitPost({ MoveOrganizationUnitInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/MoveOrganizationUnit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'OrganizationUnitDto') as OrganizationUnitDto ;
    } else {
      return null;
    }
  }
  /// ApiServicesAppOrganizationunitRemoverolefromorganizationunitDelete
  ///
  /// 
  Future apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete({ int roleId, int organizationUnitId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/RemoveRoleFromOrganizationUnit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(roleId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "RoleId", roleId));
    }
    if(organizationUnitId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitId", organizationUnitId));
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
  /// ApiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete
  ///
  /// 
  Future apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete({ int userId, int organizationUnitId }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/RemoveUserFromOrganizationUnit".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(userId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "UserId", userId));
    }
    if(organizationUnitId != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "OrganizationUnitId", organizationUnitId));
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
  /// ApiServicesAppOrganizationunitUpdateorganizationunitPut
  ///
  /// 
  Future<OrganizationUnitDto> apiServicesAppOrganizationunitUpdateorganizationunitPut({ UpdateOrganizationUnitInput body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/api/services/app/OrganizationUnit/UpdateOrganizationUnit".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'OrganizationUnitDto') as OrganizationUnitDto ;
    } else {
      return null;
    }
  }
}
