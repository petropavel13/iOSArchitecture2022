//
// ErrorResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import TIFoundationUtils


/** Ответ с текстом и кодом ошибки */

public struct ErrorResponse: Codable, Equatable {

    /** Код ошибки */
    public var errorCode: String
    /** Текст сообщения об ошибке */
    public var message: String

    private enum CodingKeys: String, CodingKey {
        case errorCode
        case message
    }

    public init(errorCode: String, message: String) {
        self.errorCode = errorCode
        self.message = message
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        errorCode = try container.decode(String.self, forKey: .errorCode)
        message = try container.decode(String.self, forKey: .message)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(errorCode, forKey: .errorCode)
        try container.encode(message, forKey: .message)
    }

}
