import Foundation
import GoogleMaps
import KeychainAccess
import LocalAuthentication
import Moya
import SwiftUI
import TIFoundationUtils
import TIKeychainUtils
import TIMoyaNetworking
import TINetworking
import TISwiftUtils
import UIKit
import YandexMapsMobile

// swiftlint:disable all
/// This file is generated by Weaver 1.0.7
/// DO NOT EDIT!

final class MainDependencyContainer {

    static var onFatalError: (String, StaticString, UInt) -> Never = { message, file, line in
        Swift.fatalError(message, file: file, line: line)
    }

    fileprivate static func fatalError(file: StaticString = #file, line: UInt = #line) -> Never {
        onFatalError("Invalid memory graph. This is never suppose to happen. Please file a ticket at https://github.com/scribd/Weaver", file, line)
    }

    private typealias ParametersCopier = (MainDependencyContainer) -> Void
    private typealias Builder<T> = (ParametersCopier?) -> T

    private func builder<T>(_ value: T) -> Builder<T> {
        return { [weak self] copyParameters in
            guard let self = self else {
                MainDependencyContainer.fatalError()
            }
            copyParameters?(self)
            return value
        }
    }

    private func weakOptionalBuilder<T>(_ value: Optional<T>) -> Builder<Optional<T>> where T: AnyObject {
        return { [weak value] _ in value }
    }

    private func weakBuilder<T>(_ value: T) -> Builder<T> where T: AnyObject {
        return { [weak self, weak value] copyParameters in
            guard let self = self, let value = value else {
                MainDependencyContainer.fatalError()
            }
            copyParameters?(self)
            return value
        }
    }

    private func lazyBuilder<T>(_ builder: @escaping Builder<T>) -> Builder<T> {
        var _value: T?
        return { copyParameters in
            if let value = _value {
                return value
            }
            let value = builder(copyParameters)
            _value = value
            return value
        }
    }

    private func weakLazyBuilder<T>(_ builder: @escaping Builder<T>) -> Builder<T> where T: AnyObject {
        weak var _value: T?
        return { copyParameters in
            if let value = _value {
                return value
            }
            let value = builder(copyParameters)
            _value = value
            return value
        }
    }

    private static func fatalBuilder<T>() -> Builder<T> {
        return { _ in
            MainDependencyContainer.fatalError()
        }
    }

    private var builders = Dictionary<String, Any>()
    private func getBuilder<T>(for name: String, type _: T.Type) -> Builder<T> {
        guard let builder = builders[name] as? Builder<T> else {
            return MainDependencyContainer.fatalBuilder()
        }
        return builder
    }

    private static var _dynamicResolvers = [Any]()
    private static var _dynamicResolversLock = NSRecursiveLock()

    fileprivate static func _popDynamicResolver<Resolver>(_ resolverType: Resolver.Type) -> Resolver {
        guard let dynamicResolver = _dynamicResolvers.removeFirst() as? Resolver else {
            MainDependencyContainer.fatalError()
        }
        return dynamicResolver
    }

    static func _pushDynamicResolver<Resolver>(_ resolver: Resolver) {
        _dynamicResolvers.append(resolver)
    }

    enum Scope {
        case transient
        case container
        case weak
        case lazy
    }

    enum Platform {
        case OSX
        case macOS
        case iOS
        case watchOS
        case tvOS
    }

    enum DependencyKind {
        case registration
        case reference
        case parameter
    }

    var appKeychain: Keychain {
        return getBuilder(for: "appKeychain", type: Keychain.self)(nil)
    }

    var applicationFlow: ApplicationFlow {
        return getBuilder(for: "applicationFlow", type: ApplicationFlow.self)(nil)
    }

    var authFlow: AuthFlow {
        return getBuilder(for: "authFlow", type: AuthFlow.self)(nil)
    }

    var authService: AuthService {
        return getBuilder(for: "authService", type: AuthService.self)(nil)
    }

    var dateFormattersReusePool: DateFormattersReusePool {
        return getBuilder(for: "dateFormattersReusePool", type: DateFormattersReusePool.self)(nil)
    }

    var displayAlertService: DisplayAlertService {
        return getBuilder(for: "displayAlertService", type: DisplayAlertService.self)(nil)
    }

    var errorHandlingRegistrationService: ErrorHandlingRegistrationService {
        return getBuilder(
            for: "errorHandlingRegistrationService",
            type: ErrorHandlingRegistrationService.self
        )(nil)
    }

    var iso8601DateFormattersReusePool: ISO8601DateFormattersReusePool {
        return getBuilder(for: "iso8601DateFormattersReusePool", type: ISO8601DateFormattersReusePool.self)(nil)
    }

    var jsonCodingConfigurator: ProjectJsonCodingConfigurator {
        return getBuilder(for: "jsonCodingConfigurator", type: ProjectJsonCodingConfigurator.self)(nil)
    }

    var localAuthenticationContext: LAContext {
        return getBuilder(for: "localAuthenticationContext", type: LAContext.self)(nil)
    }

    var networkService: ProjectNetworkService {
        return getBuilder(for: "networkService", type: ProjectNetworkService.self)(nil)
    }

    var pickupFlow: PickupFlow {
        return getBuilder(for: "pickupFlow", type: PickupFlow.self)(nil)
    }

    var pickupService: OfficessService {
        return getBuilder(for: "pickupService", type: OfficessService.self)(nil)
    }

    var picupService: OfficessService {
        return getBuilder(for: "picupService", type: OfficessService.self)(nil)
    }

    var projectDateFormattingService: ProjectDateFormattingService {
        return getBuilder(for: "projectDateFormattingService", type: ProjectDateFormattingService.self)(nil)
    }

    var projectJsonCodingConfigurator: ProjectJsonCodingConfigurator {
        return getBuilder(for: "projectJsonCodingConfigurator", type: ProjectJsonCodingConfigurator.self)(nil)
    }

    var projectNetworkService: ProjectNetworkService {
        return getBuilder(for: "projectNetworkService", type: ProjectNetworkService.self)(nil)
    }

    var refreshTokenService: RefreshTokenService {
        return getBuilder(for: "refreshTokenService", type: RefreshTokenService.self)(nil)
    }

    var tokenStorage: TokenStorageService {
        return getBuilder(for: "tokenStorage", type: TokenStorageService.self)(nil)
    }

    var tokenStorageService: TokenStorageService {
        return getBuilder(for: "tokenStorageService", type: TokenStorageService.self)(nil)
    }

    var userProfileService: UserProfileService {
        return getBuilder(for: "userProfileService", type: UserProfileService.self)(nil)
    }

    fileprivate init() {
    }

    private func appDependenciesDependencyResolver() -> AppDependenciesDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["localAuthenticationContext"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> LAContext in
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            return DependencyFactory.makeLocalAuthenticationContext(_:)(_self as LAContextInputDependencyResolver)
        }
        _self.builders["appKeychain"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> Keychain in
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            return DependencyFactory.makeAppKeychainThisDeviceOnly(_self as KeychainInputDependencyResolver)
        }
        _self.builders["dateFormattersReusePool"] = lazyBuilder { (_: Optional<ParametersCopier>) -> DateFormattersReusePool in return DateFormattersReusePool() }
        _self.builders["iso8601DateFormattersReusePool"] = lazyBuilder { (_: Optional<ParametersCopier>) -> ISO8601DateFormattersReusePool in return ISO8601DateFormattersReusePool() }
        _self.builders["projectJsonCodingConfigurator"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ProjectJsonCodingConfigurator in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.projectJsonCodingConfiguratorDependencyResolver()
            return ProjectJsonCodingConfigurator(injecting: __self)
        }
        _self.builders["tokenStorageService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> TokenStorageService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.tokenStorageServiceDependencyResolver()
            return TokenStorageService(injecting: __self)
        }
        _self.builders["projectNetworkService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ProjectNetworkService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.projectNetworkServiceDependencyResolver()
            return ProjectNetworkService(injecting: __self)
        }
        _self.builders["userProfileService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> UserProfileService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.userProfileServiceDependencyResolver("AppDependencies")
            return UserProfileService(injecting: __self)
        }
        _self.builders["authService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> AuthService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.authServiceDependencyResolver()
            return AuthService(injecting: __self)
        }
        _self.builders["picupService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> OfficessService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.officessServiceDependencyResolver()
            return OfficessService(injecting: __self)
        }
        _self.builders["projectDateFormattingService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ProjectDateFormattingService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.projectDateFormattingServiceDependencyResolver()
            return ProjectDateFormattingService(injecting: __self)
        }
        _self.builders["refreshTokenService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> RefreshTokenService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.refreshTokenServiceDependencyResolver()
            return RefreshTokenService(injecting: __self)
        }
        _self.builders["displayAlertService"] = lazyBuilder { (_: Optional<ParametersCopier>) -> DisplayAlertService in return DisplayAlertService() }
        _self.builders["errorHandlingRegistrationService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ErrorHandlingRegistrationService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.errorHandlingRegistrationServiceDependencyResolver()
            return ErrorHandlingRegistrationService(injecting: __self)
        }
        _self.builders["authFlow"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> AuthFlow in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.authFlowDependencyResolver()
            return AuthFlow(injecting: __self)
        }
        _self.builders["pickupFlow"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> PickupFlow in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.pickupFlowDependencyResolver()
            return PickupFlow(injecting: __self)
        }
        _self.builders["applicationFlow"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ApplicationFlow in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.applicationFlowDependencyResolver()
            return ApplicationFlow(injecting: __self)
        }
        _self.builders["jsonCodingConfigurator"] = _self.builder(_self.projectJsonCodingConfigurator)
        _self.builders["projectJsonCodingConfigurator"] = _self.builder(_self.projectJsonCodingConfigurator)
        _self.builders["networkService"] = _self.builder(_self.projectNetworkService)
        _self.builders["projectNetworkService"] = _self.builder(_self.projectNetworkService)
        _self.builders["pickupService"] = _self.builder(_self.picupService)
        _self.builders["picupService"] = _self.builder(_self.picupService)
        _self.builders["tokenStorage"] = _self.builder(_self.tokenStorageService)
        _self.builders["tokenStorageService"] = _self.builder(_self.tokenStorageService)
        _ = _self.getBuilder(for: "localAuthenticationContext", type: LAContext.self)(nil)
        _ = _self.getBuilder(for: "appKeychain", type: Keychain.self)(nil)
        _ = _self.getBuilder(for: "dateFormattersReusePool", type: DateFormattersReusePool.self)(nil)
        _ = _self.getBuilder(for: "iso8601DateFormattersReusePool", type: ISO8601DateFormattersReusePool.self)(nil)
        _ = _self.getBuilder(for: "projectJsonCodingConfigurator", type: ProjectJsonCodingConfigurator.self)(nil)
        _ = _self.getBuilder(for: "tokenStorageService", type: TokenStorageService.self)(nil)
        _ = _self.getBuilder(for: "projectNetworkService", type: ProjectNetworkService.self)(nil)
        _ = _self.getBuilder(for: "userProfileService", type: UserProfileService.self)(nil)
        _ = _self.getBuilder(for: "authService", type: AuthService.self)(nil)
        _ = _self.getBuilder(for: "picupService", type: OfficessService.self)(nil)
        _ = _self.getBuilder(for: "projectDateFormattingService", type: ProjectDateFormattingService.self)(nil)
        _ = _self.getBuilder(for: "refreshTokenService", type: RefreshTokenService.self)(nil)
        _ = _self.getBuilder(for: "displayAlertService", type: DisplayAlertService.self)(nil)
        _ = _self.getBuilder(
            for: "errorHandlingRegistrationService",
            type: ErrorHandlingRegistrationService.self
        )(nil)
        _ = _self.getBuilder(for: "authFlow", type: AuthFlow.self)(nil)
        _ = _self.getBuilder(for: "pickupFlow", type: PickupFlow.self)(nil)
        _ = _self.getBuilder(for: "applicationFlow", type: ApplicationFlow.self)(nil)
        MainDependencyContainer._pushDynamicResolver({ _self.localAuthenticationContext })
        MainDependencyContainer._pushDynamicResolver({ _self.appKeychain })
        MainDependencyContainer._pushDynamicResolver({ _self.dateFormattersReusePool })
        MainDependencyContainer._pushDynamicResolver({ _self.iso8601DateFormattersReusePool })
        MainDependencyContainer._pushDynamicResolver({ _self.projectJsonCodingConfigurator })
        MainDependencyContainer._pushDynamicResolver({ _self.tokenStorageService })
        MainDependencyContainer._pushDynamicResolver({ _self.projectNetworkService })
        MainDependencyContainer._pushDynamicResolver({ _self.userProfileService })
        MainDependencyContainer._pushDynamicResolver({ _self.authService })
        MainDependencyContainer._pushDynamicResolver({ _self.picupService })
        MainDependencyContainer._pushDynamicResolver({ _self.projectDateFormattingService })
        MainDependencyContainer._pushDynamicResolver({ _self.refreshTokenService })
        MainDependencyContainer._pushDynamicResolver({ _self.displayAlertService })
        MainDependencyContainer._pushDynamicResolver({ _self.errorHandlingRegistrationService })
        MainDependencyContainer._pushDynamicResolver({ _self.authFlow })
        MainDependencyContainer._pushDynamicResolver({ _self.pickupFlow })
        MainDependencyContainer._pushDynamicResolver({ _self.applicationFlow })
        return _self
    }

    static func appDependenciesDependencyResolver() -> AppDependenciesDependencyResolver {
        let _self = MainDependencyContainer().appDependenciesDependencyResolver()
        return _self
    }

    private func previewDependenciesDependencyResolver() -> PreviewDependenciesDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["dateFormattersReusePool"] = lazyBuilder { (_: Optional<ParametersCopier>) -> DateFormattersReusePool in return DateFormattersReusePool() }
        _self.builders["iso8601DateFormattersReusePool"] = lazyBuilder { (_: Optional<ParametersCopier>) -> ISO8601DateFormattersReusePool in return ISO8601DateFormattersReusePool() }
        _self.builders["projectJsonCodingConfigurator"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ProjectJsonCodingConfigurator in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.projectJsonCodingConfiguratorDependencyResolver()
            return ProjectJsonCodingConfigurator(injecting: __self)
        }
        _self.builders["tokenStorageService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> TokenStorageService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.tokenStorageServiceDependencyResolver()
            return TokenStorageService(injecting: __self)
        }
        _self.builders["networkService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> ProjectNetworkService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.projectNetworkServiceDependencyResolver()
            return ProjectNetworkService(injecting: __self)
        }
        _self.builders["appKeychain"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> Keychain in
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            return DependencyFactory.makeAppKeychainThisDeviceOnly(_self as KeychainInputDependencyResolver)
        }
        _self.builders["userProfileService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> UserProfileService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.userProfileServiceDependencyResolver("PreviewDependencies")
            return UserProfileService(injecting: __self)
        }
        _self.builders["jsonCodingConfigurator"] = _self.builder(_self.projectJsonCodingConfigurator)
        _self.builders["projectJsonCodingConfigurator"] = _self.builder(_self.projectJsonCodingConfigurator)
        _ = _self.getBuilder(for: "dateFormattersReusePool", type: DateFormattersReusePool.self)(nil)
        _ = _self.getBuilder(for: "iso8601DateFormattersReusePool", type: ISO8601DateFormattersReusePool.self)(nil)
        _ = _self.getBuilder(for: "projectJsonCodingConfigurator", type: ProjectJsonCodingConfigurator.self)(nil)
        _ = _self.getBuilder(for: "tokenStorageService", type: TokenStorageService.self)(nil)
        _ = _self.getBuilder(for: "networkService", type: ProjectNetworkService.self)(nil)
        _ = _self.getBuilder(for: "appKeychain", type: Keychain.self)(nil)
        _ = _self.getBuilder(for: "userProfileService", type: UserProfileService.self)(nil)
        MainDependencyContainer._pushDynamicResolver({ _self.dateFormattersReusePool })
        MainDependencyContainer._pushDynamicResolver({ _self.iso8601DateFormattersReusePool })
        MainDependencyContainer._pushDynamicResolver({ _self.projectJsonCodingConfigurator })
        MainDependencyContainer._pushDynamicResolver({ _self.tokenStorageService })
        MainDependencyContainer._pushDynamicResolver({ _self.networkService })
        MainDependencyContainer._pushDynamicResolver({ _self.appKeychain })
        MainDependencyContainer._pushDynamicResolver({ _self.userProfileService })
        return _self
    }

    static func previewDependenciesDependencyResolver() -> PreviewDependenciesDependencyResolver {
        let _self = MainDependencyContainer().previewDependenciesDependencyResolver()
        return _self
    }

    private func applicationFlowDependencyResolver() -> ApplicationFlowDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["authFlow"] = _self.builder(authFlow)
        _self.builders["errorHandlingRegistrationService"] = _self.builder(errorHandlingRegistrationService)
        _self.builders["pickupFlow"] = _self.builder(pickupFlow)
        MainDependencyContainer._pushDynamicResolver({ _self.authFlow })
        MainDependencyContainer._pushDynamicResolver({ _self.pickupFlow })
        MainDependencyContainer._pushDynamicResolver({ _self.errorHandlingRegistrationService })
        return _self
    }

    private func authFlowDependencyResolver() -> AuthFlowDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["authService"] = _self.builder(authService)
        _self.builders["userProfileService"] = _self.builder(userProfileService)
        MainDependencyContainer._pushDynamicResolver({ _self.authService })
        MainDependencyContainer._pushDynamicResolver({ _self.userProfileService })
        return _self
    }

    private func pickupFlowDependencyResolver() -> PickupFlowDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["pickupService"] = _self.builder(picupService)
        _self.builders["picupService"] = _self.builder(picupService)
        MainDependencyContainer._pushDynamicResolver({ _self.pickupService })
        return _self
    }

    private func authServiceDependencyResolver() -> AuthServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["networkService"] = _self.builder(projectNetworkService)
        _self.builders["projectNetworkService"] = _self.builder(projectNetworkService)
        _self.builders["tokenStorage"] = _self.builder(tokenStorageService)
        _self.builders["tokenStorageService"] = _self.builder(tokenStorageService)
        MainDependencyContainer._pushDynamicResolver({ _self.networkService })
        MainDependencyContainer._pushDynamicResolver({ _self.tokenStorage })
        return _self
    }

    private func refreshTokenServiceDependencyResolver() -> RefreshTokenServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["authService"] = _self.builder(authService)
        MainDependencyContainer._pushDynamicResolver({ _self.authService })
        return _self
    }

    private func errorHandlingRegistrationServiceDependencyResolver() -> ErrorHandlingRegistrationServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["refreshTokenService"] = lazyBuilder { [weak _self] (_: Optional<ParametersCopier>) -> RefreshTokenService in
            defer { MainDependencyContainer._dynamicResolversLock.unlock() }
            MainDependencyContainer._dynamicResolversLock.lock()
            guard let _self = _self else {
                MainDependencyContainer.fatalError()
            }
            let __self = _self.refreshTokenServiceDependencyResolver()
            return RefreshTokenService(injecting: __self)
        }
        _self.builders["authService"] = _self.builder(authService)
        _self.builders["displayAlertService"] = _self.builder(displayAlertService)
        _self.builders["networkService"] = _self.builder(projectNetworkService)
        _self.builders["projectNetworkService"] = _self.builder(projectNetworkService)
        _ = _self.getBuilder(for: "refreshTokenService", type: RefreshTokenService.self)(nil)
        MainDependencyContainer._pushDynamicResolver({ _self.networkService })
        MainDependencyContainer._pushDynamicResolver({ _self.displayAlertService })
        MainDependencyContainer._pushDynamicResolver({ _self.refreshTokenService })
        return _self
    }

    private func officessServiceDependencyResolver() -> OfficessServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["networkService"] = _self.builder(projectNetworkService)
        _self.builders["projectNetworkService"] = _self.builder(projectNetworkService)
        MainDependencyContainer._pushDynamicResolver({ _self.networkService })
        return _self
    }

    private func projectDateFormattingServiceDependencyResolver() -> ProjectDateFormattingServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["dateFormattersReusePool"] = _self.builder(dateFormattersReusePool)
        MainDependencyContainer._pushDynamicResolver({ _self.dateFormattersReusePool })
        return _self
    }

    private func projectJsonCodingConfiguratorDependencyResolver() -> ProjectJsonCodingConfiguratorDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["dateFormattersReusePool"] = _self.builder(dateFormattersReusePool)
        _self.builders["iso8601DateFormattersReusePool"] = _self.builder(iso8601DateFormattersReusePool)
        MainDependencyContainer._pushDynamicResolver({ _self.dateFormattersReusePool })
        MainDependencyContainer._pushDynamicResolver({ _self.iso8601DateFormattersReusePool })
        return _self
    }

    private func projectNetworkServiceDependencyResolver() -> ProjectNetworkServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["jsonCodingConfigurator"] = _self.builder(projectJsonCodingConfigurator)
        _self.builders["projectJsonCodingConfigurator"] = _self.builder(projectJsonCodingConfigurator)
        _self.builders["tokenStorageService"] = _self.builder(tokenStorageService)
        MainDependencyContainer._pushDynamicResolver({ _self.jsonCodingConfigurator })
        MainDependencyContainer._pushDynamicResolver({ _self.tokenStorageService })
        return _self
    }

    private func tokenStorageServiceDependencyResolver() -> TokenStorageServiceDependencyResolver {
        let _self = MainDependencyContainer()
        _self.builders["appKeychain"] = _self.builder(appKeychain)
        _self.builders["jsonCodingConfigurator"] = _self.builder(projectJsonCodingConfigurator)
        _self.builders["projectJsonCodingConfigurator"] = _self.builder(projectJsonCodingConfigurator)
        MainDependencyContainer._pushDynamicResolver({ _self.appKeychain })
        MainDependencyContainer._pushDynamicResolver({ _self.jsonCodingConfigurator })
        return _self
    }

    private func userProfileServiceDependencyResolver(_ source: String) -> UserProfileServiceDependencyResolver {
        let _self = MainDependencyContainer()
        switch source {
        case "AppDependencies":
            _self.builders["networkService"] = _self.builder(projectNetworkService)
            _self.builders["projectNetworkService"] = _self.builder(projectNetworkService)
        case "PreviewDependencies":
            _self.builders["networkService"] = _self.builder(networkService)
        default:
            MainDependencyContainer.fatalError()
        }
        _self.builders["tokenStorageService"] = _self.builder(tokenStorageService)
        MainDependencyContainer._pushDynamicResolver({ _self.networkService })
        MainDependencyContainer._pushDynamicResolver({ _self.tokenStorageService })
        return _self
    }
}


protocol AppKeychainResolver: AnyObject {
    var appKeychain: Keychain { get }
}

protocol ApplicationFlowResolver: AnyObject {
    var applicationFlow: ApplicationFlow { get }
}

protocol AuthFlowResolver: AnyObject {
    var authFlow: AuthFlow { get }
}

protocol AuthServiceResolver: AnyObject {
    var authService: AuthService { get }
}

protocol DateFormattersReusePoolResolver: AnyObject {
    var dateFormattersReusePool: DateFormattersReusePool { get }
}

protocol DisplayAlertServiceResolver: AnyObject {
    var displayAlertService: DisplayAlertService { get }
}

protocol ErrorHandlingRegistrationServiceResolver: AnyObject {
    var errorHandlingRegistrationService: ErrorHandlingRegistrationService { get }
}

protocol Iso8601DateFormattersReusePoolResolver: AnyObject {
    var iso8601DateFormattersReusePool: ISO8601DateFormattersReusePool { get }
}

protocol JsonCodingConfiguratorResolver: AnyObject {
    var jsonCodingConfigurator: ProjectJsonCodingConfigurator { get }
}

protocol LocalAuthenticationContextResolver: AnyObject {
    var localAuthenticationContext: LAContext { get }
}

protocol NetworkServiceResolver: AnyObject {
    var networkService: ProjectNetworkService { get }
}

protocol PickupFlowResolver: AnyObject {
    var pickupFlow: PickupFlow { get }
}

protocol PickupServiceResolver: AnyObject {
    var pickupService: OfficessService { get }
}

protocol PicupServiceResolver: AnyObject {
    var picupService: OfficessService { get }
}

protocol ProjectDateFormattingServiceResolver: AnyObject {
    var projectDateFormattingService: ProjectDateFormattingService { get }
}

protocol ProjectJsonCodingConfiguratorResolver: AnyObject {
    var projectJsonCodingConfigurator: ProjectJsonCodingConfigurator { get }
}

protocol ProjectNetworkServiceResolver: AnyObject {
    var projectNetworkService: ProjectNetworkService { get }
}

protocol RefreshTokenServiceResolver: AnyObject {
    var refreshTokenService: RefreshTokenService { get }
}

protocol TokenStorageResolver: AnyObject {
    var tokenStorage: TokenStorageService { get }
}

protocol TokenStorageServiceResolver: AnyObject {
    var tokenStorageService: TokenStorageService { get }
}

protocol UserProfileServiceResolver: AnyObject {
    var userProfileService: UserProfileService { get }
}

extension MainDependencyContainer: AppKeychainResolver, ApplicationFlowResolver, AuthFlowResolver, AuthServiceResolver, DateFormattersReusePoolResolver, DisplayAlertServiceResolver, ErrorHandlingRegistrationServiceResolver, Iso8601DateFormattersReusePoolResolver, JsonCodingConfiguratorResolver, LocalAuthenticationContextResolver, NetworkServiceResolver, PickupFlowResolver, PickupServiceResolver, PicupServiceResolver, ProjectDateFormattingServiceResolver, ProjectJsonCodingConfiguratorResolver, ProjectNetworkServiceResolver, RefreshTokenServiceResolver, TokenStorageResolver, TokenStorageServiceResolver, UserProfileServiceResolver {
}

extension MainDependencyContainer {
}

typealias AppDependenciesDependencyResolver = LocalAuthenticationContextResolver & AppKeychainResolver & DateFormattersReusePoolResolver & Iso8601DateFormattersReusePoolResolver & ProjectJsonCodingConfiguratorResolver & TokenStorageServiceResolver & ProjectNetworkServiceResolver & UserProfileServiceResolver & AuthServiceResolver & PicupServiceResolver & ProjectDateFormattingServiceResolver & RefreshTokenServiceResolver & DisplayAlertServiceResolver & ErrorHandlingRegistrationServiceResolver & AuthFlowResolver & PickupFlowResolver & ApplicationFlowResolver

typealias PreviewDependenciesDependencyResolver = DateFormattersReusePoolResolver & Iso8601DateFormattersReusePoolResolver & ProjectJsonCodingConfiguratorResolver & TokenStorageServiceResolver & NetworkServiceResolver & AppKeychainResolver & UserProfileServiceResolver

typealias ApplicationFlowDependencyResolver = AuthFlowResolver & PickupFlowResolver & ErrorHandlingRegistrationServiceResolver

typealias AuthFlowDependencyResolver = AuthServiceResolver & UserProfileServiceResolver

typealias PickupFlowDependencyResolver = PickupServiceResolver

typealias AuthServiceDependencyResolver = NetworkServiceResolver & TokenStorageResolver

typealias RefreshTokenServiceDependencyResolver = AuthServiceResolver

typealias ErrorHandlingRegistrationServiceDependencyResolver = NetworkServiceResolver & DisplayAlertServiceResolver & RefreshTokenServiceResolver

typealias OfficessServiceDependencyResolver = NetworkServiceResolver

typealias ProjectDateFormattingServiceDependencyResolver = DateFormattersReusePoolResolver

typealias ProjectJsonCodingConfiguratorDependencyResolver = DateFormattersReusePoolResolver & Iso8601DateFormattersReusePoolResolver

typealias ProjectNetworkServiceDependencyResolver = JsonCodingConfiguratorResolver & TokenStorageServiceResolver

typealias TokenStorageServiceDependencyResolver = AppKeychainResolver & JsonCodingConfiguratorResolver

typealias UserProfileServiceDependencyResolver = NetworkServiceResolver & TokenStorageServiceResolver

typealias KeychainInputDependencyResolver = AppKeychainResolver & DateFormattersReusePoolResolver & Iso8601DateFormattersReusePoolResolver & ProjectJsonCodingConfiguratorResolver & TokenStorageServiceResolver & UserProfileServiceResolver

typealias LAContextInputDependencyResolver = AppKeychainResolver & ApplicationFlowResolver & AuthFlowResolver & AuthServiceResolver & DateFormattersReusePoolResolver & DisplayAlertServiceResolver & ErrorHandlingRegistrationServiceResolver & Iso8601DateFormattersReusePoolResolver & LocalAuthenticationContextResolver & PickupFlowResolver & PicupServiceResolver & ProjectDateFormattingServiceResolver & ProjectJsonCodingConfiguratorResolver & ProjectNetworkServiceResolver & RefreshTokenServiceResolver & TokenStorageServiceResolver & UserProfileServiceResolver

@propertyWrapper
struct Weaver<ConcreteType, AbstractType> {

    typealias Resolver = () -> AbstractType
    let resolver = MainDependencyContainer._popDynamicResolver(Resolver.self)

    init(_ kind: MainDependencyContainer.DependencyKind,
         type: ConcreteType.Type,
         scope: MainDependencyContainer.Scope = .container,
         setter: Bool = false,
         escaping: Bool = false,
         builder: Optional<Any> = nil,
         objc: Bool = false,
         platforms: Array<MainDependencyContainer.Platform> = []) {
        // no-op
    }

    var wrappedValue: AbstractType {
        return resolver()
    }
}

extension Weaver where ConcreteType == Void {
    init(_ kind: MainDependencyContainer.DependencyKind,
         scope: MainDependencyContainer.Scope = .container,
         setter: Bool = false,
         escaping: Bool = false,
         builder: Optional<Any> = nil,
         objc: Bool = false,
         platforms: Array<MainDependencyContainer.Platform> = []) {
        // no-op
    }
}
