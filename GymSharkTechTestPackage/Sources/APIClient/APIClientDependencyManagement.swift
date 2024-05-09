//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import Dependencies

private enum APIClientKey: TestDependencyKey {
    static let testValue = APIClient.unimplemented
}

extension APIClientKey: DependencyKey {
    static let liveValue = APIClient()
}

extension APIClient {
    static var unimplemented: APIClient {
        .init(loadData: { _ in
                (Data(), URLResponse())
        })
    }
}

public extension DependencyValues {
    var apiClient: APIClient {
        get { self[APIClientKey.self] }
        set { self[APIClientKey.self] = newValue }
    }
}
