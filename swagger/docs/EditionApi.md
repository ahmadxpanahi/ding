# swagger.api.EditionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppEditionCreateeditionPost**](EditionApi.md#apiServicesAppEditionCreateeditionPost) | **POST** /api/services/app/Edition/CreateEdition | ApiServicesAppEditionCreateeditionPost
[**apiServicesAppEditionDeleteeditionDelete**](EditionApi.md#apiServicesAppEditionDeleteeditionDelete) | **DELETE** /api/services/app/Edition/DeleteEdition | ApiServicesAppEditionDeleteeditionDelete
[**apiServicesAppEditionGeteditioncomboboxitemsGet**](EditionApi.md#apiServicesAppEditionGeteditioncomboboxitemsGet) | **GET** /api/services/app/Edition/GetEditionComboboxItems | ApiServicesAppEditionGeteditioncomboboxitemsGet
[**apiServicesAppEditionGeteditionforeditGet**](EditionApi.md#apiServicesAppEditionGeteditionforeditGet) | **GET** /api/services/app/Edition/GetEditionForEdit | ApiServicesAppEditionGeteditionforeditGet
[**apiServicesAppEditionGeteditionsGet**](EditionApi.md#apiServicesAppEditionGeteditionsGet) | **GET** /api/services/app/Edition/GetEditions | ApiServicesAppEditionGeteditionsGet
[**apiServicesAppEditionGettenantcountGet**](EditionApi.md#apiServicesAppEditionGettenantcountGet) | **GET** /api/services/app/Edition/GetTenantCount | ApiServicesAppEditionGettenantcountGet
[**apiServicesAppEditionMovetenantstoanothereditionPost**](EditionApi.md#apiServicesAppEditionMovetenantstoanothereditionPost) | **POST** /api/services/app/Edition/MoveTenantsToAnotherEdition | ApiServicesAppEditionMovetenantstoanothereditionPost
[**apiServicesAppEditionUpdateeditionPut**](EditionApi.md#apiServicesAppEditionUpdateeditionPut) | **PUT** /api/services/app/Edition/UpdateEdition | ApiServicesAppEditionUpdateeditionPut


# **apiServicesAppEditionCreateeditionPost**
?> apiServicesAppEditionCreateeditionPost(body)

ApiServicesAppEditionCreateeditionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var body = new CreateEditionDto(); // CreateEditionDto | 

try { 
    api_instance.apiServicesAppEditionCreateeditionPost(body);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionCreateeditionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateEditionDto**](CreateEditionDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionDeleteeditionDelete**
?> apiServicesAppEditionDeleteeditionDelete(id)

ApiServicesAppEditionDeleteeditionDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var id = 56; // int | 

try { 
    api_instance.apiServicesAppEditionDeleteeditionDelete(id);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionDeleteeditionDelete: $e\n");
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

# **apiServicesAppEditionGeteditioncomboboxitemsGet**
> List<SubscribableEditionComboboxItemDto?> apiServicesAppEditionGeteditioncomboboxitemsGet(selectedEditionId, addAllItem, onlyFreeItems)

ApiServicesAppEditionGeteditioncomboboxitemsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var selectedEditionId = 56; // int | 
var addAllItem = true; // bool | 
var onlyFreeItems = true; // bool | 

try { 
    var result = api_instance.apiServicesAppEditionGeteditioncomboboxitemsGet(selectedEditionId, addAllItem, onlyFreeItems);
    print(result);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionGeteditioncomboboxitemsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **selectedEditionId** | **int**|  | [optional] 
 **addAllItem** | **bool**|  | [optional] [default to false]
 **onlyFreeItems** | **bool**|  | [optional] [default to false]

### Return type

[**List<SubscribableEditionComboboxItemDto>**](SubscribableEditionComboboxItemDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionGeteditionforeditGet**
> GetEditionEditOutput apiServicesAppEditionGeteditionforeditGet(id)

ApiServicesAppEditionGeteditionforeditGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var id = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditionGeteditionforeditGet(id);
    print(result);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionGeteditionforeditGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**|  | [optional] 

### Return type

[**GetEditionEditOutput**](GetEditionEditOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionGeteditionsGet**
> ListResultDtoOfEditionListDto apiServicesAppEditionGeteditionsGet(filter, editionTypeFilter, isActiveFilter)

ApiServicesAppEditionGeteditionsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var filter = filter_example; // String | 
var editionTypeFilter = 56; // int | 
var isActiveFilter = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditionGeteditionsGet(filter, editionTypeFilter, isActiveFilter);
    print(result);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionGeteditionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **String**|  | [optional] 
 **editionTypeFilter** | **int**|  | [optional] 
 **isActiveFilter** | **int**|  | [optional] 

### Return type

[**ListResultDtoOfEditionListDto**](ListResultDtoOfEditionListDto.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionGettenantcountGet**
> int apiServicesAppEditionGettenantcountGet(editionId)

ApiServicesAppEditionGettenantcountGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var editionId = 56; // int | 

try { 
    var result = api_instance.apiServicesAppEditionGettenantcountGet(editionId);
    print(result);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionGettenantcountGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **editionId** | **int**|  | [optional] 

### Return type

**int**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionMovetenantstoanothereditionPost**
?> apiServicesAppEditionMovetenantstoanothereditionPost(body)

ApiServicesAppEditionMovetenantstoanothereditionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var body = new MoveTenantsToAnotherEditionDto(); // MoveTenantsToAnotherEditionDto | 

try { 
    api_instance.apiServicesAppEditionMovetenantstoanothereditionPost(body);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionMovetenantstoanothereditionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**MoveTenantsToAnotherEditionDto**](MoveTenantsToAnotherEditionDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppEditionUpdateeditionPut**
?> apiServicesAppEditionUpdateeditionPut(body)

ApiServicesAppEditionUpdateeditionPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new EditionApi();
var body = new UpdateEditionDto(); // UpdateEditionDto | 

try { 
    api_instance.apiServicesAppEditionUpdateeditionPut(body);
} catch (e) {
    print("Exception when calling EditionApi->apiServicesAppEditionUpdateeditionPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateEditionDto**](UpdateEditionDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

