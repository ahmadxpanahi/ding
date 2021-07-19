# swagger.api.OrganizationUnitApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppOrganizationunitAddrolestoorganizationunitPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitAddrolestoorganizationunitPost) | **POST** /api/services/app/OrganizationUnit/AddRolesToOrganizationUnit | ApiServicesAppOrganizationunitAddrolestoorganizationunitPost
[**apiServicesAppOrganizationunitAdduserstoorganizationunitPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitAdduserstoorganizationunitPost) | **POST** /api/services/app/OrganizationUnit/AddUsersToOrganizationUnit | ApiServicesAppOrganizationunitAdduserstoorganizationunitPost
[**apiServicesAppOrganizationunitCreateorganizationunitPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitCreateorganizationunitPost) | **POST** /api/services/app/OrganizationUnit/CreateOrganizationUnit | ApiServicesAppOrganizationunitCreateorganizationunitPost
[**apiServicesAppOrganizationunitDeleteorganizationunitDelete**](OrganizationUnitApi.md#apiServicesAppOrganizationunitDeleteorganizationunitDelete) | **DELETE** /api/services/app/OrganizationUnit/DeleteOrganizationUnit | ApiServicesAppOrganizationunitDeleteorganizationunitDelete
[**apiServicesAppOrganizationunitFindrolesPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitFindrolesPost) | **POST** /api/services/app/OrganizationUnit/FindRoles | ApiServicesAppOrganizationunitFindrolesPost
[**apiServicesAppOrganizationunitFindusersPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitFindusersPost) | **POST** /api/services/app/OrganizationUnit/FindUsers | ApiServicesAppOrganizationunitFindusersPost
[**apiServicesAppOrganizationunitGetorganizationunitrolesGet**](OrganizationUnitApi.md#apiServicesAppOrganizationunitGetorganizationunitrolesGet) | **GET** /api/services/app/OrganizationUnit/GetOrganizationUnitRoles | ApiServicesAppOrganizationunitGetorganizationunitrolesGet
[**apiServicesAppOrganizationunitGetorganizationunitsGet**](OrganizationUnitApi.md#apiServicesAppOrganizationunitGetorganizationunitsGet) | **GET** /api/services/app/OrganizationUnit/GetOrganizationUnits | ApiServicesAppOrganizationunitGetorganizationunitsGet
[**apiServicesAppOrganizationunitGetorganizationunitsforuserGet**](OrganizationUnitApi.md#apiServicesAppOrganizationunitGetorganizationunitsforuserGet) | **GET** /api/services/app/OrganizationUnit/GetOrganizationUnitsForUser | ApiServicesAppOrganizationunitGetorganizationunitsforuserGet
[**apiServicesAppOrganizationunitGetorganizationunitusersGet**](OrganizationUnitApi.md#apiServicesAppOrganizationunitGetorganizationunitusersGet) | **GET** /api/services/app/OrganizationUnit/GetOrganizationUnitUsers | ApiServicesAppOrganizationunitGetorganizationunitusersGet
[**apiServicesAppOrganizationunitMoveorganizationunitPost**](OrganizationUnitApi.md#apiServicesAppOrganizationunitMoveorganizationunitPost) | **POST** /api/services/app/OrganizationUnit/MoveOrganizationUnit | ApiServicesAppOrganizationunitMoveorganizationunitPost
[**apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete**](OrganizationUnitApi.md#apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete) | **DELETE** /api/services/app/OrganizationUnit/RemoveRoleFromOrganizationUnit | ApiServicesAppOrganizationunitRemoverolefromorganizationunitDelete
[**apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete**](OrganizationUnitApi.md#apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete) | **DELETE** /api/services/app/OrganizationUnit/RemoveUserFromOrganizationUnit | ApiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete
[**apiServicesAppOrganizationunitUpdateorganizationunitPut**](OrganizationUnitApi.md#apiServicesAppOrganizationunitUpdateorganizationunitPut) | **PUT** /api/services/app/OrganizationUnit/UpdateOrganizationUnit | ApiServicesAppOrganizationunitUpdateorganizationunitPut


# **apiServicesAppOrganizationunitAddrolestoorganizationunitPost**
> apiServicesAppOrganizationunitAddrolestoorganizationunitPost(body)

ApiServicesAppOrganizationunitAddrolestoorganizationunitPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new RolesToOrganizationUnitInput(); // RolesToOrganizationUnitInput | 

try { 
    api_instance.apiServicesAppOrganizationunitAddrolestoorganizationunitPost(body);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitAddrolestoorganizationunitPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RolesToOrganizationUnitInput**](RolesToOrganizationUnitInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitAdduserstoorganizationunitPost**
> apiServicesAppOrganizationunitAdduserstoorganizationunitPost(body)

ApiServicesAppOrganizationunitAdduserstoorganizationunitPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new UsersToOrganizationUnitInput(); // UsersToOrganizationUnitInput | 

try { 
    api_instance.apiServicesAppOrganizationunitAdduserstoorganizationunitPost(body);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitAdduserstoorganizationunitPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UsersToOrganizationUnitInput**](UsersToOrganizationUnitInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitCreateorganizationunitPost**
> OrganizationUnitDto apiServicesAppOrganizationunitCreateorganizationunitPost(body)

ApiServicesAppOrganizationunitCreateorganizationunitPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new CreateOrganizationUnitInput(); // CreateOrganizationUnitInput | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitCreateorganizationunitPost(body);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitCreateorganizationunitPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrganizationUnitInput**](CreateOrganizationUnitInput.md)|  | [optional] 

### Return type

[**OrganizationUnitDto**](OrganizationUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitDeleteorganizationunitDelete**
> apiServicesAppOrganizationunitDeleteorganizationunitDelete(id)

ApiServicesAppOrganizationunitDeleteorganizationunitDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppOrganizationunitDeleteorganizationunitDelete(id);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitDeleteorganizationunitDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitFindrolesPost**
> PagedResultDtoOfNameValueDto apiServicesAppOrganizationunitFindrolesPost(body)

ApiServicesAppOrganizationunitFindrolesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new FindOrganizationUnitRolesInput(); // FindOrganizationUnitRolesInput | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitFindrolesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitFindrolesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FindOrganizationUnitRolesInput**](FindOrganizationUnitRolesInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitFindusersPost**
> PagedResultDtoOfNameValueDto apiServicesAppOrganizationunitFindusersPost(body)

ApiServicesAppOrganizationunitFindusersPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new FindOrganizationUnitUsersInput(); // FindOrganizationUnitUsersInput | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitFindusersPost(body);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitFindusersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FindOrganizationUnitUsersInput**](FindOrganizationUnitUsersInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitGetorganizationunitrolesGet**
> PagedResultDtoOfOrganizationUnitRoleListDto apiServicesAppOrganizationunitGetorganizationunitrolesGet(id, sorting, maxResultCount, skipCount)

ApiServicesAppOrganizationunitGetorganizationunitrolesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var id = 789; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitGetorganizationunitrolesGet(id, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitGetorganizationunitrolesGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfOrganizationUnitRoleListDto**](PagedResultDtoOfOrganizationUnitRoleListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitGetorganizationunitsGet**
> ListResultDtoOfOrganizationUnitDto apiServicesAppOrganizationunitGetorganizationunitsGet()

ApiServicesAppOrganizationunitGetorganizationunitsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();

try { 
    var result = api_instance.apiServicesAppOrganizationunitGetorganizationunitsGet();
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitGetorganizationunitsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfOrganizationUnitDto**](ListResultDtoOfOrganizationUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitGetorganizationunitsforuserGet**
> ListResultDtoOfOrganizationUnitDto apiServicesAppOrganizationunitGetorganizationunitsforuserGet()

ApiServicesAppOrganizationunitGetorganizationunitsforuserGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();

try { 
    var result = api_instance.apiServicesAppOrganizationunitGetorganizationunitsforuserGet();
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitGetorganizationunitsforuserGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfOrganizationUnitDto**](ListResultDtoOfOrganizationUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitGetorganizationunitusersGet**
> PagedResultDtoOfOrganizationUnitUserListDto apiServicesAppOrganizationunitGetorganizationunitusersGet(id, sorting, maxResultCount, skipCount)

ApiServicesAppOrganizationunitGetorganizationunitusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var id = 789; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitGetorganizationunitusersGet(id, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitGetorganizationunitusersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfOrganizationUnitUserListDto**](PagedResultDtoOfOrganizationUnitUserListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitMoveorganizationunitPost**
> OrganizationUnitDto apiServicesAppOrganizationunitMoveorganizationunitPost(body)

ApiServicesAppOrganizationunitMoveorganizationunitPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new MoveOrganizationUnitInput(); // MoveOrganizationUnitInput | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitMoveorganizationunitPost(body);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitMoveorganizationunitPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MoveOrganizationUnitInput**](MoveOrganizationUnitInput.md)|  | [optional] 

### Return type

[**OrganizationUnitDto**](OrganizationUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete**
> apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete(roleId, organizationUnitId)

ApiServicesAppOrganizationunitRemoverolefromorganizationunitDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var roleId = 56; // int | 
var organizationUnitId = 789; // int | 

try { 
    api_instance.apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete(roleId, organizationUnitId);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitRemoverolefromorganizationunitDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **int**|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete**
> apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete(userId, organizationUnitId)

ApiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var userId = 789; // int | 
var organizationUnitId = 789; // int | 

try { 
    api_instance.apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete(userId, organizationUnitId);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitRemoveuserfromorganizationunitDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **organizationUnitId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppOrganizationunitUpdateorganizationunitPut**
> OrganizationUnitDto apiServicesAppOrganizationunitUpdateorganizationunitPut(body)

ApiServicesAppOrganizationunitUpdateorganizationunitPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new OrganizationUnitApi();
var body = new UpdateOrganizationUnitInput(); // UpdateOrganizationUnitInput | 

try { 
    var result = api_instance.apiServicesAppOrganizationunitUpdateorganizationunitPut(body);
    print(result);
} catch (e) {
    print("Exception when calling OrganizationUnitApi->apiServicesAppOrganizationunitUpdateorganizationunitPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateOrganizationUnitInput**](UpdateOrganizationUnitInput.md)|  | [optional] 

### Return type

[**OrganizationUnitDto**](OrganizationUnitDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

