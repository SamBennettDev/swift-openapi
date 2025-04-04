//
// ValidationError.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct ValidationError: Sendable, Codable, JSONEncodable, Hashable {

    public var loc: [ValidationErrorLocInner]
    public var msg: String
    public var type: String

    public init(loc: [ValidationErrorLocInner], msg: String, type: String) {
        self.loc = loc
        self.msg = msg
        self.type = type
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case loc
        case msg
        case type
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(loc, forKey: .loc)
        try container.encode(msg, forKey: .msg)
        try container.encode(type, forKey: .type)
    }
}

