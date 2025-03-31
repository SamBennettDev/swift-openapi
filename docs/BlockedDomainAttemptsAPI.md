# BlockedDomainAttemptsAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**blockedDomainAttemptsCreateBlockedDomainAttempt**](BlockedDomainAttemptsAPI.md#blockeddomainattemptscreateblockeddomainattempt) | **POST** /api/v1/blocked-domain-attempts/ | Create Blocked Domain Attempt
[**blockedDomainAttemptsDeleteBlockedDomainAttempt**](BlockedDomainAttemptsAPI.md#blockeddomainattemptsdeleteblockeddomainattempt) | **DELETE** /api/v1/blocked-domain-attempts/{id} | Delete Blocked Domain Attempt
[**blockedDomainAttemptsReadBlockedDomainAttempt**](BlockedDomainAttemptsAPI.md#blockeddomainattemptsreadblockeddomainattempt) | **GET** /api/v1/blocked-domain-attempts/{id} | Read Blocked Domain Attempt
[**blockedDomainAttemptsReadBlockedDomainAttempts**](BlockedDomainAttemptsAPI.md#blockeddomainattemptsreadblockeddomainattempts) | **GET** /api/v1/blocked-domain-attempts/ | Read Blocked Domain Attempts


# **blockedDomainAttemptsCreateBlockedDomainAttempt**
```swift
    open class func blockedDomainAttemptsCreateBlockedDomainAttempt(blockedDomainAttemptCreate: BlockedDomainAttemptCreate, completion: @escaping (_ data: BlockedDomainAttemptPublic?, _ error: Error?) -> Void)
```

Create Blocked Domain Attempt

Create a new blocked domain attempt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let blockedDomainAttemptCreate = BlockedDomainAttemptCreate(domainName: "domainName_example", timestamp: Date(), label: "label_example", deviceName: "deviceName_example") // BlockedDomainAttemptCreate | 

// Create Blocked Domain Attempt
BlockedDomainAttemptsAPI.blockedDomainAttemptsCreateBlockedDomainAttempt(blockedDomainAttemptCreate: blockedDomainAttemptCreate) { (response, error) in
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
 **blockedDomainAttemptCreate** | [**BlockedDomainAttemptCreate**](BlockedDomainAttemptCreate.md) |  | 

### Return type

[**BlockedDomainAttemptPublic**](BlockedDomainAttemptPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockedDomainAttemptsDeleteBlockedDomainAttempt**
```swift
    open class func blockedDomainAttemptsDeleteBlockedDomainAttempt(id: UUID, completion: @escaping (_ data: BlockedDomainAttemptPublic?, _ error: Error?) -> Void)
```

Delete Blocked Domain Attempt

Delete a blocked domain attempt.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Blocked Domain Attempt
BlockedDomainAttemptsAPI.blockedDomainAttemptsDeleteBlockedDomainAttempt(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**BlockedDomainAttemptPublic**](BlockedDomainAttemptPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockedDomainAttemptsReadBlockedDomainAttempt**
```swift
    open class func blockedDomainAttemptsReadBlockedDomainAttempt(id: UUID, completion: @escaping (_ data: BlockedDomainAttemptPublic?, _ error: Error?) -> Void)
```

Read Blocked Domain Attempt

Get blocked domain attempt by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Blocked Domain Attempt
BlockedDomainAttemptsAPI.blockedDomainAttemptsReadBlockedDomainAttempt(id: id) { (response, error) in
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
 **id** | **UUID** |  | 

### Return type

[**BlockedDomainAttemptPublic**](BlockedDomainAttemptPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **blockedDomainAttemptsReadBlockedDomainAttempts**
```swift
    open class func blockedDomainAttemptsReadBlockedDomainAttempts(skip: Int? = nil, limit: Int? = nil, completion: @escaping (_ data: BlockedDomainAttemptsPublic?, _ error: Error?) -> Void)
```

Read Blocked Domain Attempts

Retrieve blocked domain attempts.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let skip = 987 // Int |  (optional) (default to 0)
let limit = 987 // Int |  (optional) (default to 100)

// Read Blocked Domain Attempts
BlockedDomainAttemptsAPI.blockedDomainAttemptsReadBlockedDomainAttempts(skip: skip, limit: limit) { (response, error) in
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
 **skip** | **Int** |  | [optional] [default to 0]
 **limit** | **Int** |  | [optional] [default to 100]

### Return type

[**BlockedDomainAttemptsPublic**](BlockedDomainAttemptsPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

