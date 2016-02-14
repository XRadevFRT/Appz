//
//  RunKeeper.swift
//  Pods
//
//  Created by Mariam AlJamea on 1/17/16.
//  Copyright © 2015 kitz. All rights reserved.
//

public extension Applications {
    
    public struct RunKeeper: ExternalApplication {
        
        public typealias ActionType = Applications.RunKeeper.Action
        
        public let scheme = "RunKeeper:"
        public let fallbackURL = "https://runkeeper.com/index"
        public let appStoreId = ""
        
        public init() {}
    }
}

// MARK: - Actions

public extension Applications.RunKeeper {
    
    public enum Action {
        case Open
    }
}

extension Applications.RunKeeper.Action: ExternalApplicationAction {
    
    public var paths: ActionPaths {
        
        switch self {
        case .Open:
            return ActionPaths(
                app: Path(
                    pathComponents: ["app"],
                    queryParameters: [:]
                ),
                web: Path()
            )
        }
    }
}