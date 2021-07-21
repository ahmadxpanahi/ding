# swagger.api.WebhookSubscriptionApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost) | **POST** /api/services/app/WebhookSubscription/ActivateWebhookSubscription | ApiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost
[**apiServicesAppWebhooksubscriptionAddsubscriptionPost**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionAddsubscriptionPost) | **POST** /api/services/app/WebhookSubscription/AddSubscription | ApiServicesAppWebhooksubscriptionAddsubscriptionPost
[**apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet) | **GET** /api/services/app/WebhookSubscription/GetAllAvailableWebhooks | ApiServicesAppWebhooksubscriptionGetallavailablewebhooksGet
[**apiServicesAppWebhooksubscriptionGetallsubscriptionsGet**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionGetallsubscriptionsGet) | **GET** /api/services/app/WebhookSubscription/GetAllSubscriptions | ApiServicesAppWebhooksubscriptionGetallsubscriptionsGet
[**apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet) | **GET** /api/services/app/WebhookSubscription/GetAllSubscriptionsIfFeaturesGranted | ApiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet
[**apiServicesAppWebhooksubscriptionGetsubscriptionGet**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionGetsubscriptionGet) | **GET** /api/services/app/WebhookSubscription/GetSubscription | ApiServicesAppWebhooksubscriptionGetsubscriptionGet
[**apiServicesAppWebhooksubscriptionIssubscribedPost**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionIssubscribedPost) | **POST** /api/services/app/WebhookSubscription/IsSubscribed | ApiServicesAppWebhooksubscriptionIssubscribedPost
[**apiServicesAppWebhooksubscriptionPublishtestwebhookPost**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionPublishtestwebhookPost) | **POST** /api/services/app/WebhookSubscription/PublishTestWebhook | ApiServicesAppWebhooksubscriptionPublishtestwebhookPost
[**apiServicesAppWebhooksubscriptionUpdatesubscriptionPut**](WebhookSubscriptionApi.md#apiServicesAppWebhooksubscriptionUpdatesubscriptionPut) | **PUT** /api/services/app/WebhookSubscription/UpdateSubscription | ApiServicesAppWebhooksubscriptionUpdatesubscriptionPut


# **apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost**
?> apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost(body)

ApiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var body = new ActivateWebhookSubscriptionInput(); // ActivateWebhookSubscriptionInput | 

try { 
    api_instance.apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost(body);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionActivatewebhooksubscriptionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ActivateWebhookSubscriptionInput**](ActivateWebhookSubscriptionInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionAddsubscriptionPost**
?> apiServicesAppWebhooksubscriptionAddsubscriptionPost(body)

ApiServicesAppWebhooksubscriptionAddsubscriptionPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var body = new WebhookSubscription(); // WebhookSubscription | 

try { 
    api_instance.apiServicesAppWebhooksubscriptionAddsubscriptionPost(body);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionAddsubscriptionPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookSubscription**](WebhookSubscription.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet**
> ListResultDtoOfGetAllAvailableWebhooksOutput apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet()

ApiServicesAppWebhooksubscriptionGetallavailablewebhooksGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet();
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionGetallavailablewebhooksGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfGetAllAvailableWebhooksOutput**](ListResultDtoOfGetAllAvailableWebhooksOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionGetallsubscriptionsGet**
> ListResultDtoOfGetAllSubscriptionsOutput apiServicesAppWebhooksubscriptionGetallsubscriptionsGet()

ApiServicesAppWebhooksubscriptionGetallsubscriptionsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionGetallsubscriptionsGet();
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionGetallsubscriptionsGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListResultDtoOfGetAllSubscriptionsOutput**](ListResultDtoOfGetAllSubscriptionsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet**
> ListResultDtoOfGetAllSubscriptionsOutput apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet(webhookName)

ApiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var webhookName = webhookName_example; // String | 

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet(webhookName);
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionGetallsubscriptionsiffeaturesgrantedGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookName** | **String**|  | [optional] 

### Return type

[**ListResultDtoOfGetAllSubscriptionsOutput**](ListResultDtoOfGetAllSubscriptionsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionGetsubscriptionGet**
> WebhookSubscription apiServicesAppWebhooksubscriptionGetsubscriptionGet(subscriptionId)

ApiServicesAppWebhooksubscriptionGetsubscriptionGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var subscriptionId = subscriptionId_example; // String | 

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionGetsubscriptionGet(subscriptionId);
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionGetsubscriptionGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscriptionId** | **String**|  | [optional] 

### Return type

[**WebhookSubscription**](WebhookSubscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionIssubscribedPost**
> bool apiServicesAppWebhooksubscriptionIssubscribedPost(webhookName)

ApiServicesAppWebhooksubscriptionIssubscribedPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var webhookName = webhookName_example; // String | 

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionIssubscribedPost(webhookName);
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionIssubscribedPost: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhookName** | **String**|  | [optional] 

### Return type

**bool**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionPublishtestwebhookPost**
> String apiServicesAppWebhooksubscriptionPublishtestwebhookPost()

ApiServicesAppWebhooksubscriptionPublishtestwebhookPost



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();

try { 
    var result = api_instance.apiServicesAppWebhooksubscriptionPublishtestwebhookPost();
    print(result);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionPublishtestwebhookPost: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppWebhooksubscriptionUpdatesubscriptionPut**
?> apiServicesAppWebhooksubscriptionUpdatesubscriptionPut(body)

ApiServicesAppWebhooksubscriptionUpdatesubscriptionPut



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new WebhookSubscriptionApi();
var body = new WebhookSubscription(); // WebhookSubscription | 

try { 
    api_instance.apiServicesAppWebhooksubscriptionUpdatesubscriptionPut(body);
} catch (e) {
    print("Exception when calling WebhookSubscriptionApi->apiServicesAppWebhooksubscriptionUpdatesubscriptionPut: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebhookSubscription**](WebhookSubscription.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json-patch+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

