# swagger.api.DashboardCustomizationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppDashboardcustomizationAddnewpagePost**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationAddnewpagePost) | **POST** /api/services/app/DashboardCustomization/AddNewPage | ApiServicesAppDashboardcustomizationAddnewpagePost
[**apiServicesAppDashboardcustomizationAddwidgetPost**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationAddwidgetPost) | **POST** /api/services/app/DashboardCustomization/AddWidget | ApiServicesAppDashboardcustomizationAddwidgetPost
[**apiServicesAppDashboardcustomizationDeletepageDelete**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationDeletepageDelete) | **DELETE** /api/services/app/DashboardCustomization/DeletePage | ApiServicesAppDashboardcustomizationDeletepageDelete
[**apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet) | **GET** /api/services/app/DashboardCustomization/GetAllWidgetDefinitions | ApiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet
[**apiServicesAppDashboardcustomizationGetdashboarddefinitionGet**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationGetdashboarddefinitionGet) | **GET** /api/services/app/DashboardCustomization/GetDashboardDefinition | ApiServicesAppDashboardcustomizationGetdashboarddefinitionGet
[**apiServicesAppDashboardcustomizationGetsettingnameGet**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationGetsettingnameGet) | **GET** /api/services/app/DashboardCustomization/GetSettingName | ApiServicesAppDashboardcustomizationGetsettingnameGet
[**apiServicesAppDashboardcustomizationGetuserdashboardGet**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationGetuserdashboardGet) | **GET** /api/services/app/DashboardCustomization/GetUserDashboard | ApiServicesAppDashboardcustomizationGetuserdashboardGet
[**apiServicesAppDashboardcustomizationRenamepagePost**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationRenamepagePost) | **POST** /api/services/app/DashboardCustomization/RenamePage | ApiServicesAppDashboardcustomizationRenamepagePost
[**apiServicesAppDashboardcustomizationSavepagePost**](DashboardCustomizationApi.md#apiServicesAppDashboardcustomizationSavepagePost) | **POST** /api/services/app/DashboardCustomization/SavePage | ApiServicesAppDashboardcustomizationSavepagePost


# **apiServicesAppDashboardcustomizationAddnewpagePost**
> AddNewPageOutput apiServicesAppDashboardcustomizationAddnewpagePost(body)

ApiServicesAppDashboardcustomizationAddnewpagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var body = new AddNewPageInput(); // AddNewPageInput | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationAddnewpagePost(body);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationAddnewpagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddNewPageInput**](AddNewPageInput.md)|  | [optional] 

### Return type

[**AddNewPageOutput**](AddNewPageOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationAddwidgetPost**
> Widget apiServicesAppDashboardcustomizationAddwidgetPost(body)

ApiServicesAppDashboardcustomizationAddwidgetPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var body = new AddWidgetInput(); // AddWidgetInput | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationAddwidgetPost(body);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationAddwidgetPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**AddWidgetInput**](AddWidgetInput.md)|  | [optional] 

### Return type

[**Widget**](Widget.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationDeletepageDelete**
?> apiServicesAppDashboardcustomizationDeletepageDelete(id, dashboardName, application)

ApiServicesAppDashboardcustomizationDeletepageDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var id = id_example; // String | 
var dashboardName = dashboardName_example; // String | 
var application = application_example; // String | 

try { 
    api_instance.apiServicesAppDashboardcustomizationDeletepageDelete(id, dashboardName, application);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationDeletepageDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 
 **dashboardName** | **String**|  | [optional] 
 **application** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet**
> List<WidgetOutput?> apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet(dashboardName, application)

ApiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var dashboardName = dashboardName_example; // String | 
var application = application_example; // String | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet(dashboardName, application);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationGetallwidgetdefinitionsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardName** | **String**|  | [optional] 
 **application** | **String**|  | [optional] 

### Return type

[**List<WidgetOutput>**](WidgetOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationGetdashboarddefinitionGet**
> DashboardOutput apiServicesAppDashboardcustomizationGetdashboarddefinitionGet(dashboardName, application)

ApiServicesAppDashboardcustomizationGetdashboarddefinitionGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var dashboardName = dashboardName_example; // String | 
var application = application_example; // String | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationGetdashboarddefinitionGet(dashboardName, application);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationGetdashboarddefinitionGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardName** | **String**|  | [optional] 
 **application** | **String**|  | [optional] 

### Return type

[**DashboardOutput**](DashboardOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationGetsettingnameGet**
> String apiServicesAppDashboardcustomizationGetsettingnameGet(application)

ApiServicesAppDashboardcustomizationGetsettingnameGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var application = application_example; // String | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationGetsettingnameGet(application);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationGetsettingnameGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **application** | **String**|  | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationGetuserdashboardGet**
> Dashboard apiServicesAppDashboardcustomizationGetuserdashboardGet(dashboardName, application)

ApiServicesAppDashboardcustomizationGetuserdashboardGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var dashboardName = dashboardName_example; // String | 
var application = application_example; // String | 

try { 
    var result = api_instance.apiServicesAppDashboardcustomizationGetuserdashboardGet(dashboardName, application);
    print(result);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationGetuserdashboardGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **dashboardName** | **String**|  | [optional] 
 **application** | **String**|  | [optional] 

### Return type

[**Dashboard**](Dashboard.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationRenamepagePost**
?> apiServicesAppDashboardcustomizationRenamepagePost(body)

ApiServicesAppDashboardcustomizationRenamepagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var body = new RenamePageInput(); // RenamePageInput | 

try { 
    api_instance.apiServicesAppDashboardcustomizationRenamepagePost(body);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationRenamepagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RenamePageInput**](RenamePageInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppDashboardcustomizationSavepagePost**
?> apiServicesAppDashboardcustomizationSavepagePost(body)

ApiServicesAppDashboardcustomizationSavepagePost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new DashboardCustomizationApi();
var body = new SavePageInput(); // SavePageInput | 

try { 
    api_instance.apiServicesAppDashboardcustomizationSavepagePost(body);
} catch (e) {
    print("Exception when calling DashboardCustomizationApi->apiServicesAppDashboardcustomizationSavepagePost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SavePageInput**](SavePageInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

