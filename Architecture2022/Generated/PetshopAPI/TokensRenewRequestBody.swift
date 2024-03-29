
import Foundation
import TIFoundationUtils


/** Тело запроса на обновление access и refresh токенов */

public struct TokensRenewRequestBody: Codable, Equatable {

    /** Refresh token клиента */
    public var refreshToken: String

    private enum CodingKeys: String, CodingKey {
        case refreshToken
    }

    public init(refreshToken: String) {
        self.refreshToken = refreshToken
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        refreshToken = try container.decode(String.self, forKey: .refreshToken)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(refreshToken, forKey: .refreshToken)
    }

}
