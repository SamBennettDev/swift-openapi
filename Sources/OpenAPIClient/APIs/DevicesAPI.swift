//
// DevicesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DevicesAPI {

    /**
     Create Device
     
     - parameter deviceCreate: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DevicePublic
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesCreateDevice(deviceCreate: DeviceCreate, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DevicePublic {
        return try await devicesCreateDeviceWithRequestBuilder(deviceCreate: deviceCreate, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create Device
     - POST /api/v1/devices/
     - Create a new device with WireGuard configuration.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter deviceCreate: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DevicePublic> 
     */
    open class func devicesCreateDeviceWithRequestBuilder(deviceCreate: DeviceCreate, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DevicePublic> {
        let localVariablePath = "/api/v1/devices/"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: deviceCreate, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicePublic>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Delete Device
     
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DevicePublic
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesDeleteDevice(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DevicePublic {
        return try await devicesDeleteDeviceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Delete Device
     - DELETE /api/v1/devices/{id}
     - Delete a device and its associated WireGuard configuration.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DevicePublic> 
     */
    open class func devicesDeleteDeviceWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DevicePublic> {
        var localVariablePath = "/api/v1/devices/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicePublic>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Read Device
     
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DevicePublic
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesReadDevice(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DevicePublic {
        return try await devicesReadDeviceWithRequestBuilder(id: id, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Read Device
     - GET /api/v1/devices/{id}
     - Get device by ID.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter id: (path)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DevicePublic> 
     */
    open class func devicesReadDeviceWithRequestBuilder(id: UUID, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DevicePublic> {
        var localVariablePath = "/api/v1/devices/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicePublic>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }

    /**
     Read Devices
     
     - parameter apiConfiguration: The configuration for the http request.
     - returns: DevicesPublic
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func devicesReadDevices(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> DevicesPublic {
        return try await devicesReadDevicesWithRequestBuilder(apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Read Devices
     - GET /api/v1/devices/
     - Retrieve all devices for the current user.
     - OAuth:
       - type: oauth2
       - name: OAuth2PasswordBearer
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<DevicesPublic> 
     */
    open class func devicesReadDevicesWithRequestBuilder(apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<DevicesPublic> {
        let localVariablePath = "/api/v1/devices/"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<DevicesPublic>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
