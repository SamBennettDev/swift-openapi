# SystemAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**systemCreateBlockedRequestAttempt**](SystemAPI.md#systemcreateblockedrequestattempt) | **POST** /api/v1/system/blocked-request | Create Blocked Request Attempt


# **systemCreateBlockedRequestAttempt**
```swift
    open class func systemCreateBlockedRequestAttempt(blockedDomainAttemptServer: BlockedDomainAttemptServer, completion: @escaping (_ data: JSONValue?, _ error: Error?) -> Void)
```

Create Blocked Request Attempt

Create a blocked request attempt. This endpoint can only be accessed with a valid DNS API key.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let blockedDomainAttemptServer = BlockedDomainAttemptServer(ip: "ip_example", domain: "domain_example", timeStamp: Date()) // BlockedDomainAttemptServer | 

// Create Blocked Request Attempt
SystemAPI.systemCreateBlockedRequestAttempt(blockedDomainAttemptServer: blockedDomainAttemptServer) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **blockedDomainAttemptServer** | [**BlockedDomainAttemptServer**](BlockedDomainAttemptServer.md) |  | 

### Return type

**JSONValue**

### Authorization

[DNS_API_Key](../README.md#DNS_API_Key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

