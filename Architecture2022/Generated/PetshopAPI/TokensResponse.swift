
import Foundation
import TIFoundationUtils


/** Авторизационные токены */

public struct TokensResponse: Codable, Equatable {

    public var accessToken: Token
    public var refreshToken: Token

    private enum CodingKeys: String, CodingKey {
        case accessToken
        case refreshToken
    }

    public init(accessToken: Token, refreshToken: Token) {
        self.accessToken = accessToken
        self.refreshToken = refreshToken
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        accessToken = try container.decode(Token.self, forKey: .accessToken)
        refreshToken = try container.decode(Token.self, forKey: .refreshToken)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(accessToken, forKey: .accessToken)
        try container.encode(refreshToken, forKey: .refreshToken)
    }

}
