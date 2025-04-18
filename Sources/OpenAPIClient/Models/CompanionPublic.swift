//
// CompanionPublic.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct CompanionPublic: Sendable, Codable, JSONEncodable, Hashable {

    public var email: String
    public var id: UUID
    public var userId: UUID

    public init(email: String, id: UUID, userId: UUID) {
        self.email = email
        self.id = id
        self.userId = userId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case id
        case userId = "user_id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encode(id, forKey: .id)
        try container.encode(userId, forKey: .userId)
    }
}


@available(iOS 13, tvOS 13, watchOS 6, macOS 10.15, *)
extension CompanionPublic: Identifiable {}
