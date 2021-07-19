# swagger.api.TenantApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppTenantChangetenantadminPost**](TenantApi.md#apiServicesAppTenantChangetenantadminPost) | **POST** /api/services/app/Tenant/ChangeTenantAdmin | ApiServicesAppTenantChangetenantadminPost
[**apiServicesAppTenantCreatetenantPost**](TenantApi.md#apiServicesAppTenantCreatetenantPost) | **POST** /api/services/app/Tenant/CreateTenant | ApiServicesAppTenantCreatetenantPost
[**apiServicesAppTenantDeletetenantDelete**](TenantApi.md#apiServicesAppTenantDeletetenantDelete) | **DELETE** /api/services/app/Tenant/DeleteTenant | ApiServicesAppTenantDeletetenantDelete
[**apiServicesAppTenantGettenantfeaturesforeditGet**](TenantApi.md#apiServicesAppTenantGettenantfeaturesforeditGet) | **GET** /api/services/app/Tenant/GetTenantFeaturesForEdit | ApiServicesAppTenantGettenantfeaturesforeditGet
[**apiServicesAppTenantGettenantforeditGet**](TenantApi.md#apiServicesAppTenantGettenantforeditGet) | **GET** /api/services/app/Tenant/GetTenantForEdit | ApiServicesAppTenantGettenantforeditGet
[**apiServicesAppTenantGettenantsGet**](TenantApi.md#apiServicesAppTenantGettenantsGet) | **GET** /api/services/app/Tenant/GetTenants | ApiServicesAppTenantGettenantsGet
[**apiServicesAppTenantResettenantspecificfeaturesPost**](TenantApi.md#apiServicesAppTenantResettenantspecificfeaturesPost) | **POST** /api/services/app/Tenant/ResetTenantSpecificFeatures | ApiServicesAppTenantResettenantspecificfeaturesPost
[**apiServicesAppTenantUnlocktenantadminPost**](TenantApi.md#apiServicesAppTenantUnlocktenantadminPost) | **POST** /api/services/app/Tenant/UnlockTenantAdmin | ApiServicesAppTenantUnlocktenantadminPost
[**apiServicesAppTenantUpdatetenantPut**](TenantApi.md#apiServicesAppTenantUpdatetenantPut) | **PUT** /api/services/app/Tenant/UpdateTenant | ApiServicesAppTenantUpdatetenantPut
[**apiServicesAppTenantUpdatetenantfeaturesPut**](TenantApi.md#apiServicesAppTenantUpdatetenantfeaturesPut) | **PUT** /api/services/app/Tenant/UpdateTenantFeatures | ApiServicesAppTenantUpdatetenantfeaturesPut


# **apiServicesAppTenantChangetenantadminPost**
> apiServicesAppTenantChangetenantadminPost(body)

ApiServicesAppTenantChangetenantadminPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new ChangeTenantAdminInput(); // ChangeTenantAdminInput | 

try { 
    api_instance.apiServicesAppTenantChangetenantadminPost(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantChangetenantadminPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ChangeTenantAdminInput**](ChangeTenantAdminInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantCreatetenantPost**
> apiServicesAppTenantCreatetenantPost(body)

ApiServicesAppTenantCreatetenantPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new CreateTenantInput(); // CreateTenantInput | 

try { 
    api_instance.apiServicesAppTenantCreatetenantPost(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantCreatetenantPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateTenantInput**](CreateTenantInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantDeletetenantDelete**
> apiServicesAppTenantDeletetenantDelete(id)

ApiServicesAppTenantDeletetenantDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppTenantDeletetenantDelete(id);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantDeletetenantDelete: $e\n");
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

# **apiServicesAppTenantGettenantfeaturesforeditGet**
> GetTenantFeaturesEditOutput apiServicesAppTenantGettenantfeaturesforeditGet(id)

ApiServicesAppTenantGettenantfeaturesforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantGettenantfeaturesforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantGettenantfeaturesforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetTenantFeaturesEditOutput**](GetTenantFeaturesEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantGettenantforeditGet**
> TenantEditDto apiServicesAppTenantGettenantforeditGet(id)

ApiServicesAppTenantGettenantforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantGettenantforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantGettenantforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**TenantEditDto**](TenantEditDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantGettenantsGet**
> PagedResultDtoOfTenantListDto apiServicesAppTenantGettenantsGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, editionId, editionIdSpecified, sorting, maxResultCount, skipCount)

ApiServicesAppTenantGettenantsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var filter = filter_example; // String | 
var subscriptionEndDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var subscriptionEndDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateStart = 2013-10-20T19:20:30+01:00; // DateTime | 
var creationDateEnd = 2013-10-20T19:20:30+01:00; // DateTime | 
var editionId = 56; // int | 
var editionIdSpecified = true; // bool | 
var sorting = sorting_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppTenantGettenantsGet(filter, subscriptionEndDateStart, subscriptionEndDateEnd, creationDateStart, creationDateEnd, editionId, editionIdSpecified, sorting, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantGettenantsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **subscriptionEndDateStart** | **DateTime**|  | [optional] 
 **subscriptionEndDateEnd** | **DateTime**|  | [optional] 
 **creationDateStart** | **DateTime**|  | [optional] 
 **creationDateEnd** | **DateTime**|  | [optional] 
 **editionId** | **int**|  | [optional] 
 **editionIdSpecified** | **bool**|  | [optional] 
 **sorting** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfTenantListDto**](PagedResultDtoOfTenantListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantResettenantspecificfeaturesPost**
> apiServicesAppTenantResettenantspecificfeaturesPost(body)

ApiServicesAppTenantResettenantspecificfeaturesPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new EntityDto(); // EntityDto | 

try { 
    api_instance.apiServicesAppTenantResettenantspecificfeaturesPost(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantResettenantspecificfeaturesPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDto**](EntityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantUnlocktenantadminPost**
> apiServicesAppTenantUnlocktenantadminPost(body)

ApiServicesAppTenantUnlocktenantadminPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new EntityDto(); // EntityDto | 

try { 
    api_instance.apiServicesAppTenantUnlocktenantadminPost(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantUnlocktenantadminPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDto**](EntityDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantUpdatetenantPut**
> apiServicesAppTenantUpdatetenantPut(body)

ApiServicesAppTenantUpdatetenantPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new TenantEditDto(); // TenantEditDto | 

try { 
    api_instance.apiServicesAppTenantUpdatetenantPut(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantUpdatetenantPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TenantEditDto**](TenantEditDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppTenantUpdatetenantfeaturesPut**
> apiServicesAppTenantUpdatetenantfeaturesPut(body)

ApiServicesAppTenantUpdatetenantfeaturesPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new TenantApi();
var body = new UpdateTenantFeaturesInput(); // UpdateTenantFeaturesInput | 

try { 
    api_instance.apiServicesAppTenantUpdatetenantfeaturesPut(body);
} catch (e) {
    print("Exception when calling TenantApi->apiServicesAppTenantUpdatetenantfeaturesPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateTenantFeaturesInput**](UpdateTenantFeaturesInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

