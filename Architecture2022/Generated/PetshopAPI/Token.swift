
import Foundation
import TIFoundationUtils


/** Авторизационный токен */

public struct Token: Codable, Equatable {

    /** Тип токена */
    public var name: String
    /** Значение токена */
    public var value: String
    /** Дата окончания действия токена */
    public var expiration: Date

    private enum CodingKeys: String, CodingKey {
        case name
        case value
        case expiration
    }

    public init(name: String, value: String, expiration: Date) {
        self.name = name
        self.value = value
        self.expiration = expiration
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        value = try container.decode(String.self, forKey: .value)
        expiration = try container.decodeDate(forKey: .expiration, userInfo: decoder.userInfo, dateFormat: APIDateFormat.yyyyMMddTHHmmss_SZ)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(name, forKey: .name)
        try container.encode(value, forKey: .value)
        try container.encode(date: expiration, forKey: .expiration, userInfo: encoder.userInfo, dateFormat: APIDateFormat.yyyyMMddTHHmmss_SZ)
    }

}
