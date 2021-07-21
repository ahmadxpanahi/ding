# swagger.api.HostDashboardApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://www.example.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiServicesAppHostdashboardGeteditiontenantstatisticsGet**](HostDashboardApi.md#apiServicesAppHostdashboardGeteditiontenantstatisticsGet) | **GET** /api/services/app/HostDashboard/GetEditionTenantStatistics | ApiServicesAppHostdashboardGeteditiontenantstatisticsGet
[**apiServicesAppHostdashboardGetincomestatisticsGet**](HostDashboardApi.md#apiServicesAppHostdashboardGetincomestatisticsGet) | **GET** /api/services/app/HostDashboard/GetIncomeStatistics | ApiServicesAppHostdashboardGetincomestatisticsGet
[**apiServicesAppHostdashboardGetrecenttenantsdataGet**](HostDashboardApi.md#apiServicesAppHostdashboardGetrecenttenantsdataGet) | **GET** /api/services/app/HostDashboard/GetRecentTenantsData | ApiServicesAppHostdashboardGetrecenttenantsdataGet
[**apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet**](HostDashboardApi.md#apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet) | **GET** /api/services/app/HostDashboard/GetSubscriptionExpiringTenantsData | ApiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet
[**apiServicesAppHostdashboardGettopstatsdataGet**](HostDashboardApi.md#apiServicesAppHostdashboardGettopstatsdataGet) | **GET** /api/services/app/HostDashboard/GetTopStatsData | ApiServicesAppHostdashboardGettopstatsdataGet


# **apiServicesAppHostdashboardGeteditiontenantstatisticsGet**
> GetEditionTenantStatisticsOutput apiServicesAppHostdashboardGeteditiontenantstatisticsGet(startDate, endDate)

ApiServicesAppHostdashboardGeteditiontenantstatisticsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostDashboardApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppHostdashboardGeteditiontenantstatisticsGet(startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling HostDashboardApi->apiServicesAppHostdashboardGeteditiontenantstatisticsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**GetEditionTenantStatisticsOutput**](GetEditionTenantStatisticsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppHostdashboardGetincomestatisticsGet**
> GetIncomeStatisticsDataOutput apiServicesAppHostdashboardGetincomestatisticsGet(incomeStatisticsDateInterval, startDate, endDate)

ApiServicesAppHostdashboardGetincomestatisticsGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostDashboardApi();
var incomeStatisticsDateInterval = incomeStatisticsDateInterval_example; // String | 
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppHostdashboardGetincomestatisticsGet(incomeStatisticsDateInterval, startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling HostDashboardApi->apiServicesAppHostdashboardGetincomestatisticsGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **incomeStatisticsDateInterval** | **String**|  | 
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**GetIncomeStatisticsDataOutput**](GetIncomeStatisticsDataOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppHostdashboardGetrecenttenantsdataGet**
> GetRecentTenantsOutput apiServicesAppHostdashboardGetrecenttenantsdataGet()

ApiServicesAppHostdashboardGetrecenttenantsdataGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostDashboardApi();

try { 
    var result = api_instance.apiServicesAppHostdashboardGetrecenttenantsdataGet();
    print(result);
} catch (e) {
    print("Exception when calling HostDashboardApi->apiServicesAppHostdashboardGetrecenttenantsdataGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetRecentTenantsOutput**](GetRecentTenantsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet**
> GetExpiringTenantsOutput apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet()

ApiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostDashboardApi();

try { 
    var result = api_instance.apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet();
    print(result);
} catch (e) {
    print("Exception when calling HostDashboardApi->apiServicesAppHostdashboardGetsubscriptionexpiringtenantsdataGet: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetExpiringTenantsOutput**](GetExpiringTenantsOutput.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiServicesAppHostdashboardGettopstatsdataGet**
> TopStatsData apiServicesAppHostdashboardGettopstatsdataGet(startDate, endDate)

ApiServicesAppHostdashboardGettopstatsdataGet



### Example 
```dart
import 'package:swagger/api.dart';

var api_instance = new HostDashboardApi();
var startDate = 2013-10-20T19:20:30+01:00; // DateTime | 
var endDate = 2013-10-20T19:20:30+01:00; // DateTime | 

try { 
    var result = api_instance.apiServicesAppHostdashboardGettopstatsdataGet(startDate, endDate);
    print(result);
} catch (e) {
    print("Exception when calling HostDashboardApi->apiServicesAppHostdashboardGettopstatsdataGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **startDate** | **DateTime**|  | [optional] 
 **endDate** | **DateTime**|  | [optional] 

### Return type

[**TopStatsData**](TopStatsData.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/plain, application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

