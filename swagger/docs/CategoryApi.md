# swagger.api.CategoryApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppCategoryAddrolestocategoryPost**](CategoryApi.md#apiServicesAppCategoryAddrolestocategoryPost) | **POST** /api/services/app/Category/AddRolesToCategory | ApiServicesAppCategoryAddrolestocategoryPost
[**apiServicesAppCategoryAdduserstocategoryPost**](CategoryApi.md#apiServicesAppCategoryAdduserstocategoryPost) | **POST** /api/services/app/Category/AddUsersToCategory | ApiServicesAppCategoryAdduserstocategoryPost
[**apiServicesAppCategoryCreatecategoryPost**](CategoryApi.md#apiServicesAppCategoryCreatecategoryPost) | **POST** /api/services/app/Category/CreateCategory | ApiServicesAppCategoryCreatecategoryPost
[**apiServicesAppCategoryDeletecategoryDelete**](CategoryApi.md#apiServicesAppCategoryDeletecategoryDelete) | **DELETE** /api/services/app/Category/DeleteCategory | ApiServicesAppCategoryDeletecategoryDelete
[**apiServicesAppCategoryFindrolesPost**](CategoryApi.md#apiServicesAppCategoryFindrolesPost) | **POST** /api/services/app/Category/FindRoles | ApiServicesAppCategoryFindrolesPost
[**apiServicesAppCategoryFindusersPost**](CategoryApi.md#apiServicesAppCategoryFindusersPost) | **POST** /api/services/app/Category/FindUsers | ApiServicesAppCategoryFindusersPost
[**apiServicesAppCategoryGetcategoriesGet**](CategoryApi.md#apiServicesAppCategoryGetcategoriesGet) | **GET** /api/services/app/Category/GetCategories | ApiServicesAppCategoryGetcategoriesGet
[**apiServicesAppCategoryGetcategoriesbycategorytypeGet**](CategoryApi.md#apiServicesAppCategoryGetcategoriesbycategorytypeGet) | **GET** /api/services/app/Category/getCategoriesByCategoryType | ApiServicesAppCategoryGetcategoriesbycategorytypeGet
[**apiServicesAppCategoryGetcategoriesforuserGet**](CategoryApi.md#apiServicesAppCategoryGetcategoriesforuserGet) | **GET** /api/services/app/Category/GetCategoriesForUser | ApiServicesAppCategoryGetcategoriesforuserGet
[**apiServicesAppCategoryGetcategoryidbynameGet**](CategoryApi.md#apiServicesAppCategoryGetcategoryidbynameGet) | **GET** /api/services/app/Category/GetCategoryIdByName | ApiServicesAppCategoryGetcategoryidbynameGet
[**apiServicesAppCategoryGetcategoryrolesGet**](CategoryApi.md#apiServicesAppCategoryGetcategoryrolesGet) | **GET** /api/services/app/Category/GetCategoryRoles | ApiServicesAppCategoryGetcategoryrolesGet
[**apiServicesAppCategoryGetcategoryusersGet**](CategoryApi.md#apiServicesAppCategoryGetcategoryusersGet) | **GET** /api/services/app/Category/GetCategoryUsers | ApiServicesAppCategoryGetcategoryusersGet
[**apiServicesAppCategoryMovecategoryPost**](CategoryApi.md#apiServicesAppCategoryMovecategoryPost) | **POST** /api/services/app/Category/MoveCategory | ApiServicesAppCategoryMovecategoryPost
[**apiServicesAppCategoryRemoverolefromcategoryDelete**](CategoryApi.md#apiServicesAppCategoryRemoverolefromcategoryDelete) | **DELETE** /api/services/app/Category/RemoveRoleFromCategory | ApiServicesAppCategoryRemoverolefromcategoryDelete
[**apiServicesAppCategoryRemoveuserfromcategoryDelete**](CategoryApi.md#apiServicesAppCategoryRemoveuserfromcategoryDelete) | **DELETE** /api/services/app/Category/RemoveUserFromCategory | ApiServicesAppCategoryRemoveuserfromcategoryDelete
[**apiServicesAppCategoryUpdatecategoryPut**](CategoryApi.md#apiServicesAppCategoryUpdatecategoryPut) | **PUT** /api/services/app/Category/UpdateCategory | ApiServicesAppCategoryUpdatecategoryPut


# **apiServicesAppCategoryAddrolestocategoryPost**
?> apiServicesAppCategoryAddrolestocategoryPost(body)

ApiServicesAppCategoryAddrolestocategoryPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new RolesToCategoryInput(); // RolesToCategoryInput | 

try { 
    api_instance.apiServicesAppCategoryAddrolestocategoryPost(body);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryAddrolestocategoryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RolesToCategoryInput**](RolesToCategoryInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryAdduserstocategoryPost**
?> apiServicesAppCategoryAdduserstocategoryPost(body)

ApiServicesAppCategoryAdduserstocategoryPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new UsersToCategoryInput(); // UsersToCategoryInput | 

try { 
    api_instance.apiServicesAppCategoryAdduserstocategoryPost(body);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryAdduserstocategoryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UsersToCategoryInput**](UsersToCategoryInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryCreatecategoryPost**
> CategoryDto apiServicesAppCategoryCreatecategoryPost(body)

ApiServicesAppCategoryCreatecategoryPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new CreateOrEditCategoryDto(); // CreateOrEditCategoryDto | 

try { 
    var result = api_instance.apiServicesAppCategoryCreatecategoryPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryCreatecategoryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditCategoryDto**](CreateOrEditCategoryDto.md)|  | [optional] 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryDeletecategoryDelete**
?> apiServicesAppCategoryDeletecategoryDelete(id)

ApiServicesAppCategoryDeletecategoryDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var id = 789; // int | 

try { 
    api_instance.apiServicesAppCategoryDeletecategoryDelete(id);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryDeletecategoryDelete: $e\n");
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

# **apiServicesAppCategoryFindrolesPost**
> PagedResultDtoOfNameValueDto apiServicesAppCategoryFindrolesPost(body)

ApiServicesAppCategoryFindrolesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new FindCategoryRolesInput(); // FindCategoryRolesInput | 

try { 
    var result = api_instance.apiServicesAppCategoryFindrolesPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryFindrolesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FindCategoryRolesInput**](FindCategoryRolesInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryFindusersPost**
> PagedResultDtoOfNameValueDto apiServicesAppCategoryFindusersPost(body)

ApiServicesAppCategoryFindusersPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new FindCategoryUsersInput(); // FindCategoryUsersInput | 

try { 
    var result = api_instance.apiServicesAppCategoryFindusersPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryFindusersPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**FindCategoryUsersInput**](FindCategoryUsersInput.md)|  | [optional] 

### Return type

[**PagedResultDtoOfNameValueDto**](PagedResultDtoOfNameValueDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoriesGet**
> ListResultDtoOfCategoryDto apiServicesAppCategoryGetcategoriesGet()

ApiServicesAppCategoryGetcategoriesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoriesGet();
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoriesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfCategoryDto**](ListResultDtoOfCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoriesbycategorytypeGet**
> ListResultDtoOfCategoryDto apiServicesAppCategoryGetcategoriesbycategorytypeGet(categoryType)

ApiServicesAppCategoryGetcategoriesbycategorytypeGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var categoryType = categoryType_example; // String | 

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoriesbycategorytypeGet(categoryType);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoriesbycategorytypeGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryType** | **String**|  | 

### Return type

[**ListResultDtoOfCategoryDto**](ListResultDtoOfCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoriesforuserGet**
> ListResultDtoOfCategoryDto apiServicesAppCategoryGetcategoriesforuserGet(categoryType)

ApiServicesAppCategoryGetcategoriesforuserGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var categoryType = categoryType_example; // String | 

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoriesforuserGet(categoryType);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoriesforuserGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryType** | **String**|  | 

### Return type

[**ListResultDtoOfCategoryDto**](ListResultDtoOfCategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoryidbynameGet**
> CategoryDto apiServicesAppCategoryGetcategoryidbynameGet(categoryName)

ApiServicesAppCategoryGetcategoryidbynameGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var categoryName = categoryName_example; // String | 

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoryidbynameGet(categoryName);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoryidbynameGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **categoryName** | **String**|  | [optional] 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoryrolesGet**
> PagedResultDtoOfCategoryRoleListDto apiServicesAppCategoryGetcategoryrolesGet(id, sorting, maxResultCount, skipCount)

ApiServicesAppCategoryGetcategoryrolesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var id = 789; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoryrolesGet(id, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoryrolesGet: $e\n");
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

[**PagedResultDtoOfCategoryRoleListDto**](PagedResultDtoOfCategoryRoleListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryGetcategoryusersGet**
> PagedResultDtoOfCategoryUserListDto apiServicesAppCategoryGetcategoryusersGet(id, sorting, maxResultCount, skipCount)

ApiServicesAppCategoryGetcategoryusersGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var id = 789; // int | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppCategoryGetcategoryusersGet(id, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryGetcategoryusersGet: $e\n");
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

[**PagedResultDtoOfCategoryUserListDto**](PagedResultDtoOfCategoryUserListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryMovecategoryPost**
> CategoryDto apiServicesAppCategoryMovecategoryPost(body)

ApiServicesAppCategoryMovecategoryPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new MoveCategoryInput(); // MoveCategoryInput | 

try { 
    var result = api_instance.apiServicesAppCategoryMovecategoryPost(body);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryMovecategoryPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MoveCategoryInput**](MoveCategoryInput.md)|  | [optional] 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryRemoverolefromcategoryDelete**
?> apiServicesAppCategoryRemoverolefromcategoryDelete(roleId, categoryId)

ApiServicesAppCategoryRemoverolefromcategoryDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var roleId = 56; // int | 
var categoryId = 789; // int | 

try { 
    api_instance.apiServicesAppCategoryRemoverolefromcategoryDelete(roleId, categoryId);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryRemoverolefromcategoryDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **roleId** | **int**|  | [optional] 
 **categoryId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryRemoveuserfromcategoryDelete**
?> apiServicesAppCategoryRemoveuserfromcategoryDelete(userId, categoryId)

ApiServicesAppCategoryRemoveuserfromcategoryDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var userId = 789; // int | 
var categoryId = 789; // int | 

try { 
    api_instance.apiServicesAppCategoryRemoveuserfromcategoryDelete(userId, categoryId);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryRemoveuserfromcategoryDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **int**|  | [optional] 
 **categoryId** | **int**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppCategoryUpdatecategoryPut**
> CategoryDto apiServicesAppCategoryUpdatecategoryPut(body)

ApiServicesAppCategoryUpdatecategoryPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new CategoryApi();
var body = new CreateOrEditCategoryDto(); // CreateOrEditCategoryDto | 

try { 
    var result = api_instance.apiServicesAppCategoryUpdatecategoryPut(body);
    print(result);
} catch (e) {
    print("Exception when calling CategoryApi->apiServicesAppCategoryUpdatecategoryPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateOrEditCategoryDto**](CreateOrEditCategoryDto.md)|  | [optional] 

### Return type

[**CategoryDto**](CategoryDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

