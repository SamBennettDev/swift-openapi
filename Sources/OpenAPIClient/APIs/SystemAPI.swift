//
// SystemAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class SystemAPI {

    /**
     Create Blocked Request Attempt
     
     - parameter blockedDomainAttemptServer: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: JSONValue
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func systemCreateBlockedRequestAttempt(blockedDomainAttemptServer: BlockedDomainAttemptServer, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) async throws(ErrorResponse) -> JSONValue {
        return try await systemCreateBlockedRequestAttemptWithRequestBuilder(blockedDomainAttemptServer: blockedDomainAttemptServer, apiConfiguration: apiConfiguration).execute().body
    }

    /**
     Create Blocked Request Attempt
     - POST /api/v1/system/blocked-request
     - Create a blocked request attempt. This endpoint can only be accessed with a valid DNS API key.
     - API Key:
       - type: apiKey Apollo-DNS-API-Key (HEADER)
       - name: DNS_API_Key
     - parameter blockedDomainAttemptServer: (body)  
     - parameter apiConfiguration: The configuration for the http request.
     - returns: RequestBuilder<JSONValue> 
     */
    open class func systemCreateBlockedRequestAttemptWithRequestBuilder(blockedDomainAttemptServer: BlockedDomainAttemptServer, apiConfiguration: OpenAPIClientAPIConfiguration = OpenAPIClientAPIConfiguration.shared) -> RequestBuilder<JSONValue> {
        let localVariablePath = "/api/v1/system/blocked-request"
        let localVariableURLString = apiConfiguration.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: blockedDomainAttemptServer, codableHelper: apiConfiguration.codableHelper)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<JSONValue>.Type = apiConfiguration.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true, apiConfiguration: apiConfiguration)
    }
}
