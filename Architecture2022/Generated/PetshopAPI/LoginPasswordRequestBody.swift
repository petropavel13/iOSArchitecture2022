
import Foundation
import TIFoundationUtils


/** Тело запроса на вход по логину и паролю */

public struct LoginPasswordRequestBody: Codable, Equatable {

    /** Логин */
    public var login: String
    /** Пароль */
    public var password: String

    private enum CodingKeys: String, CodingKey {
        case login
        case password
    }

    public init(login: String, password: String) {
        self.login = login
        self.password = password
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        login = try container.decode(String.self, forKey: .login)
        password = try container.decode(String.self, forKey: .password)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(login, forKey: .login)
        try container.encode(password, forKey: .password)
    }

}
