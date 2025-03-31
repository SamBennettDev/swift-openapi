//
// HTTPValidationError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct HTTPValidationError: Codable, Hashable {

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

    // Decodable protocol methods
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.detail = try container.decodeIfPresent([ValidationError].self, forKey: .detail)
    }

    // Equatable conformance (required by Hashable)
    public static func == (lhs: HTTPValidationError, rhs: HTTPValidationError) -> Bool {
        return lhs.detail == rhs.detail
    }

    // Hashable conformance
    public func hash(into hasher: inout Hasher) {
        hasher.combine(detail)
    }
}