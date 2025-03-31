//
// HTTPValidationError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct HTTPValidationError: Sendable, Codable, JSONEncodable, Hashable {

    public var detail: [ValidationError]?

    public init(detail: [ValidationError]? = nil) {
        self.detail = detail
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case detail
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(detail, forKey: .detail)
    }
}

