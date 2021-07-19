# swagger.api.SubscriptionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppSubscriptionDisablerecurringpaymentsPost**](SubscriptionApi.md#apiServicesAppSubscriptionDisablerecurringpaymentsPost) | **POST** /api/services/app/Subscription/DisableRecurringPayments | ApiServicesAppSubscriptionDisablerecurringpaymentsPost
[**apiServicesAppSubscriptionEnablerecurringpaymentsPost**](SubscriptionApi.md#apiServicesAppSubscriptionEnablerecurringpaymentsPost) | **POST** /api/services/app/Subscription/EnableRecurringPayments | ApiServicesAppSubscriptionEnablerecurringpaymentsPost
[**apiServicesAppSubscriptionSubscribedeviceeditionPost**](SubscriptionApi.md#apiServicesAppSubscriptionSubscribedeviceeditionPost) | **POST** /api/services/app/Subscription/SubscribeDeviceEdition | ApiServicesAppSubscriptionSubscribedeviceeditionPost


# **apiServicesAppSubscriptionDisablerecurringpaymentsPost**
> apiServicesAppSubscriptionDisablerecurringpaymentsPost()

ApiServicesAppSubscriptionDisablerecurringpaymentsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SubscriptionApi();

try { 
    api_instance.apiServicesAppSubscriptionDisablerecurringpaymentsPost();
} catch (e) {
    print("Exception when calling SubscriptionApi->apiServicesAppSubscriptionDisablerecurringpaymentsPost: $e\n");
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

# **apiServicesAppSubscriptionEnablerecurringpaymentsPost**
> apiServicesAppSubscriptionEnablerecurringpaymentsPost()

ApiServicesAppSubscriptionEnablerecurringpaymentsPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SubscriptionApi();

try { 
    api_instance.apiServicesAppSubscriptionEnablerecurringpaymentsPost();
} catch (e) {
    print("Exception when calling SubscriptionApi->apiServicesAppSubscriptionEnablerecurringpaymentsPost: $e\n");
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

# **apiServicesAppSubscriptionSubscribedeviceeditionPost**
> apiServicesAppSubscriptionSubscribedeviceeditionPost(body)

ApiServicesAppSubscriptionSubscribedeviceeditionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new SubscriptionApi();
var body = new SubscriptionDeviceEditionDto(); // SubscriptionDeviceEditionDto | 

try { 
    api_instance.apiServicesAppSubscriptionSubscribedeviceeditionPost(body);
} catch (e) {
    print("Exception when calling SubscriptionApi->apiServicesAppSubscriptionSubscribedeviceeditionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubscriptionDeviceEditionDto**](SubscriptionDeviceEditionDto.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

