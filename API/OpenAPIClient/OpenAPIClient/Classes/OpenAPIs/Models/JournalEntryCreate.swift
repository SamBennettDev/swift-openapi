//
// JournalEntryCreate.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct JournalEntryCreate: Codable, JSONEncodable, Hashable {

    public static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var title: String
    public var hashedEntry: String
    public var lastModified: Date?

    public init(title: String, hashedEntry: String, lastModified: Date? = nil) {
        self.title = title
        self.hashedEntry = hashedEntry
        self.lastModified = lastModified
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case title
        case hashedEntry = "hashed_entry"
        case lastModified = "last_modified"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(title, forKey: .title)
        try container.encode(hashedEntry, forKey: .hashedEntry)
        try container.encodeIfPresent(lastModified, forKey: .lastModified)
    }
}

