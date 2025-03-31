# DevicesAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**devicesCreateDevice**](DevicesAPI.md#devicescreatedevice) | **POST** /api/v1/devices/ | Create Device
[**devicesDeleteDevice**](DevicesAPI.md#devicesdeletedevice) | **DELETE** /api/v1/devices/{id} | Delete Device
[**devicesReadDevice**](DevicesAPI.md#devicesreaddevice) | **GET** /api/v1/devices/{id} | Read Device
[**devicesReadDevices**](DevicesAPI.md#devicesreaddevices) | **GET** /api/v1/devices/ | Read Devices


# **devicesCreateDevice**
```swift
    open class func devicesCreateDevice(deviceCreate: DeviceCreate, completion: @escaping (_ data: DevicePublic?, _ error: Error?) -> Void)
```

Create Device

Create a new device with WireGuard configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let deviceCreate = DeviceCreate(name: "name_example") // DeviceCreate | 

// Create Device
DevicesAPI.devicesCreateDevice(deviceCreate: deviceCreate) { (response, error) in
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
 **deviceCreate** | [**DeviceCreate**](DeviceCreate.md) |  | 

### Return type

[**DevicePublic**](DevicePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesDeleteDevice**
```swift
    open class func devicesDeleteDevice(id: UUID, completion: @escaping (_ data: DevicePublic?, _ error: Error?) -> Void)
```

Delete Device

Delete a device and its associated WireGuard configuration.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Delete Device
DevicesAPI.devicesDeleteDevice(id: id) { (response, error) in
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

[**DevicePublic**](DevicePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesReadDevice**
```swift
    open class func devicesReadDevice(id: UUID, completion: @escaping (_ data: DevicePublic?, _ error: Error?) -> Void)
```

Read Device

Get device by ID.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let id = 987 // UUID | 

// Read Device
DevicesAPI.devicesReadDevice(id: id) { (response, error) in
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

[**DevicePublic**](DevicePublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesReadDevices**
```swift
    open class func devicesReadDevices(completion: @escaping (_ data: DevicesPublic?, _ error: Error?) -> Void)
```

Read Devices

Retrieve all devices for the current user.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read Devices
DevicesAPI.devicesReadDevices() { (response, error) in
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

[**DevicesPublic**](DevicesPublic.md)

### Authorization

[OAuth2PasswordBearer](../README.md#OAuth2PasswordBearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

