# swagger.api.NotificationApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppNotificationDeleteallusernotificationsDelete**](NotificationApi.md#apiServicesAppNotificationDeleteallusernotificationsDelete) | **DELETE** /api/services/app/Notification/DeleteAllUserNotifications | ApiServicesAppNotificationDeleteallusernotificationsDelete
[**apiServicesAppNotificationDeletenotificationDelete**](NotificationApi.md#apiServicesAppNotificationDeletenotificationDelete) | **DELETE** /api/services/app/Notification/DeleteNotification | ApiServicesAppNotificationDeletenotificationDelete
[**apiServicesAppNotificationGetnotificationsettingsGet**](NotificationApi.md#apiServicesAppNotificationGetnotificationsettingsGet) | **GET** /api/services/app/Notification/GetNotificationSettings | ApiServicesAppNotificationGetnotificationsettingsGet
[**apiServicesAppNotificationGetusernotificationsGet**](NotificationApi.md#apiServicesAppNotificationGetusernotificationsGet) | **GET** /api/services/app/Notification/GetUserNotifications | ApiServicesAppNotificationGetusernotificationsGet
[**apiServicesAppNotificationSetallnotificationsasreadPost**](NotificationApi.md#apiServicesAppNotificationSetallnotificationsasreadPost) | **POST** /api/services/app/Notification/SetAllNotificationsAsRead | ApiServicesAppNotificationSetallnotificationsasreadPost
[**apiServicesAppNotificationSetnotificationasreadPost**](NotificationApi.md#apiServicesAppNotificationSetnotificationasreadPost) | **POST** /api/services/app/Notification/SetNotificationAsRead | ApiServicesAppNotificationSetnotificationasreadPost
[**apiServicesAppNotificationUpdatenotificationsettingsPut**](NotificationApi.md#apiServicesAppNotificationUpdatenotificationsettingsPut) | **PUT** /api/services/app/Notification/UpdateNotificationSettings | ApiServicesAppNotificationUpdatenotificationsettingsPut


# **apiServicesAppNotificationDeleteallusernotificationsDelete**
?> apiServicesAppNotificationDeleteallusernotificationsDelete(state, startDate, endDate)

ApiServicesAppNotificationDeleteallusernotificationsDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();
var state = state_example; // String | 
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    api_instance.apiServicesAppNotificationDeleteallusernotificationsDelete(state, startDate, endDate);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationDeleteallusernotificationsDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationDeletenotificationDelete**
?> apiServicesAppNotificationDeletenotificationDelete(id)

ApiServicesAppNotificationDeletenotificationDelete



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();
var id = ; // String | 

try { 
    api_instance.apiServicesAppNotificationDeletenotificationDelete(id);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationDeletenotificationDelete: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | [**String**](.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationGetnotificationsettingsGet**
> GetNotificationSettingsOutput apiServicesAppNotificationGetnotificationsettingsGet()

ApiServicesAppNotificationGetnotificationsettingsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();

try { 
    var result = api_instance.apiServicesAppNotificationGetnotificationsettingsGet();
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationGetnotificationsettingsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetNotificationSettingsOutput**](GetNotificationSettingsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationGetusernotificationsGet**
> GetNotificationsOutput apiServicesAppNotificationGetusernotificationsGet(state, startDate, endDate, maxResultCount, skipCount)

ApiServicesAppNotificationGetusernotificationsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();
var state = state_example; // String | 
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppNotificationGetusernotificationsGet(state, startDate, endDate, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationGetusernotificationsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **state** | **String**|  | [optional] 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**GetNotificationsOutput**](GetNotificationsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationSetallnotificationsasreadPost**
?> apiServicesAppNotificationSetallnotificationsasreadPost()

ApiServicesAppNotificationSetallnotificationsasreadPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();

try { 
    api_instance.apiServicesAppNotificationSetallnotificationsasreadPost();
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationSetallnotificationsasreadPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationSetnotificationasreadPost**
?> apiServicesAppNotificationSetnotificationasreadPost(body)

ApiServicesAppNotificationSetnotificationasreadPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();
var body = new EntityDtoOfGuid(); // EntityDtoOfGuid | 

try { 
    api_instance.apiServicesAppNotificationSetnotificationasreadPost(body);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationSetnotificationasreadPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**EntityDtoOfGuid**](EntityDtoOfGuid.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppNotificationUpdatenotificationsettingsPut**
?> apiServicesAppNotificationUpdatenotificationsettingsPut(body)

ApiServicesAppNotificationUpdatenotificationsettingsPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new NotificationApi();
var body = new UpdateNotificationSettingsInput(); // UpdateNotificationSettingsInput | 

try { 
    api_instance.apiServicesAppNotificationUpdatenotificationsettingsPut(body);
} catch (e) {
    print("Exception when calling NotificationApi->apiServicesAppNotificationUpdatenotificationsettingsPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateNotificationSettingsInput**](UpdateNotificationSettingsInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

