//
// UserRegister.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

public struct UserRegister: Sendable, Codable, JSONEncodable, Hashable {

    public static let passwordRule = StringRule(minLength: 8, maxLength: 40, pattern: nil)
    public var email: String
    public var fullName: String?
    public var password: String

    public init(email: String, fullName: String? = nil, password: String) {
        self.email = email
        self.fullName = fullName
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case email
        case fullName = "full_name"
        case password
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(email, forKey: .email)
        try container.encodeIfPresent(fullName, forKey: .fullName)
        try container.encode(password, forKey: .password)
    }
}

