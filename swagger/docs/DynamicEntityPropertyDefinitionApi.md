# swagger.api.DynamicEntityPropertyDefinitionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet**](DynamicEntityPropertyDefinitionApi.md#apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet) | **GET** /api/services/app/DynamicEntityPropertyDefinition/GetAllAllowedInputTypeNames | ApiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet
[**apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet**](DynamicEntityPropertyDefinitionApi.md#apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet) | **GET** /api/services/app/DynamicEntityPropertyDefinition/GetAllEntities | ApiServicesAppDynamicentitypropertydefinitionGetallentitiesGet


# **apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet**
> List<String> apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet()

ApiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyDefinitionApi();

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet();
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyDefinitionApi->apiServicesAppDynamicentitypropertydefinitionGetallallowedinputtypenamesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet**
> List<String> apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet()

ApiServicesAppDynamicentitypropertydefinitionGetallentitiesGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DynamicEntityPropertyDefinitionApi();

try { 
    var result = api_instance.apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet();
    print(result);
} catch (e) {
    print("Exception when calling DynamicEntityPropertyDefinitionApi->apiServicesAppDynamicentitypropertydefinitionGetallentitiesGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**List<String>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

