# RelapsesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**relapsesCreateRelapse**](RelapsesAPI.md#relapsescreaterelapse) | **POST** /api/v1/relapses/ | Create Relapse
[**relapsesDeleteRelapse**](RelapsesAPI.md#relapsesdeleterelapse) | **DELETE** /api/v1/relapses/{id} | Delete Relapse
[**relapsesReadRelapse**](RelapsesAPI.md#relapsesreadrelapse) | **GET** /api/v1/relapses/{id} | Read Relapse
[**relapsesReadRelapses**](RelapsesAPI.md#relapsesreadrelapses) | **GET** /api/v1/relapses/ | Read Relapses


# **relapsesCreateRelapse**
```swift
    open class func relapsesCreateRelapse(relapseCreate: RelapseCreate, completion: @escaping (_ data: RelapsePublic?, _ error: Error?) -> Void)
```

Create Relapse

Create new relapse.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let relapseCreate = RelapseCreate(timestamp: Date()) // RelapseCreate | 

// Create Relapse
RelapsesAPI.relapsesCreateRelapse(relapseCreate: relapseCreate) { (response, error) in
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
 **relapseCreate** | [**RelapseCreate**](RelapseCreate.md) |  | 

### Return type

[**RelapsePublic**](RelapsePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relapsesDeleteRelapse**
```swift
    open class func relapsesDeleteRelapse(id: UUID, completion: @escaping (_ data: RelapsePublic?, _ error: Error?) -> Void)
```

Delete Relapse

Delete a relapse.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Relapse
RelapsesAPI.relapsesDeleteRelapse(id: id) { (response, error) in
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

[**RelapsePublic**](RelapsePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relapsesReadRelapse**
```swift
    open class func relapsesReadRelapse(id: UUID, completion: @escaping (_ data: RelapsePublic?, _ error: Error?) -> Void)
```

Read Relapse

Get relapse by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Relapse
RelapsesAPI.relapsesReadRelapse(id: id) { (response, error) in
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

[**RelapsePublic**](RelapsePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **relapsesReadRelapses**
```swift
    open class func relapsesReadRelapses(completion: @escaping (_ data: RelapsesPublic?, _ error: Error?) -> Void)
```

Read Relapses

Retrieve relapses.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Relapses
RelapsesAPI.relapsesReadRelapses() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**RelapsesPublic**](RelapsesPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

