//
// ProfileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire
import TINetworking

public extension EndpointRequest {
    /**
     Запрос на получение информации о пользователе

     */
    static func profileRequest(server: Server? = nil) -> EndpointRequest<EmptyBody, ProfileResponse> {
        .init(templatePath: "/api/v3/mobile/profile/",
                      method: .init(rawValue: "GET"),
                      body: EmptyBody(),
                      acceptableStatusCodes: [200, 400, 401, 404, 500],
                      server: server)
    }
}
