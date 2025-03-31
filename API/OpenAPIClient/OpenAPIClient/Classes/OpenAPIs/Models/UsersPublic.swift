//
// UsersPublic.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UsersPublic: Codable, JSONEncodable, Hashable {

    public var data: [UserPublic]
    public var count: Int

    public init(data: [UserPublic], count: Int) {
        self.data = data
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case data
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(data, forKey: .data)
        try container.encode(count, forKey: .count)
    }
}

