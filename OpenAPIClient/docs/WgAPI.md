# WgAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**wgReadAllDevicesToPeersConf**](WgAPI.md#wgreadalldevicestopeersconf) | **GET** /api/v1/wg/devices_as_peer_conf | Read All Devices To Peers Conf


# **wgReadAllDevicesToPeersConf**
```swift
    open class func wgReadAllDevicesToPeersConf(completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```

Read All Devices To Peers Conf

Retrieve all devices as a peer conf.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Read All Devices To Peers Conf
WgAPI.wgReadAllDevicesToPeersConf() { (response, error) in
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

**String**

### Authorization

[WG_API_Key](../README.md#WG_API_Key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

