# swagger.api.WebhookSendAttemptApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppWebhooksendattemptGetallsendattemptsGet**](WebhookSendAttemptApi.md#apiServicesAppWebhooksendattemptGetallsendattemptsGet) | **GET** /api/services/app/WebhookSendAttempt/GetAllSendAttempts | ApiServicesAppWebhooksendattemptGetallsendattemptsGet
[**apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet**](WebhookSendAttemptApi.md#apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet) | **GET** /api/services/app/WebhookSendAttempt/GetAllSendAttemptsOfWebhookEvent | ApiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet
[**apiServicesAppWebhooksendattemptResendPost**](WebhookSendAttemptApi.md#apiServicesAppWebhooksendattemptResendPost) | **POST** /api/services/app/WebhookSendAttempt/Resend | ApiServicesAppWebhooksendattemptResendPost


# **apiServicesAppWebhooksendattemptGetallsendattemptsGet**
> PagedResultDtoOfGetAllSendAttemptsOutput apiServicesAppWebhooksendattemptGetallsendattemptsGet(subscriptionId, maxResultCount, skipCount)

ApiServicesAppWebhooksendattemptGetallsendattemptsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSendAttemptApi();
var subscriptionId = subscriptionId_example; // String | 
var maxResultCount = 56; // int | 
var skipCount = 56; // int | 

try { 
    var result = api_instance.apiServicesAppWebhooksendattemptGetallsendattemptsGet(subscriptionId, maxResultCount, skipCount);
    print(result);
} catch (e) {
    print("Exception when calling WebhookSendAttemptApi->apiServicesAppWebhooksendattemptGetallsendattemptsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [optional] 
 **maxResultCount** | **int**|  | [optional] 
 **skipCount** | **int**|  | [optional] 

### Return type

[**PagedResultDtoOfGetAllSendAttemptsOutput**](PagedResultDtoOfGetAllSendAttemptsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet**
> ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet(id)

ApiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSendAttemptApi();
var id = id_example; // String | 

try { 
    var result = api_instance.apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet(id);
    print(result);
} catch (e) {
    print("Exception when calling WebhookSendAttemptApi->apiServicesAppWebhooksendattemptGetallsendattemptsofwebhookeventGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | [optional] 

### Return type

[**ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput**](ListResultDtoOfGetAllSendAttemptsOfWebhookEventOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksendattemptResendPost**
?> apiServicesAppWebhooksendattemptResendPost(sendAttemptId)

ApiServicesAppWebhooksendattemptResendPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSendAttemptApi();
var sendAttemptId = sendAttemptId_example; // String | 

try { 
    api_instance.apiServicesAppWebhooksendattemptResendPost(sendAttemptId);
} catch (e) {
    print("Exception when calling WebhookSendAttemptApi->apiServicesAppWebhooksendattemptResendPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendAttemptId** | **String**|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

