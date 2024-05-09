//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import Common

public enum APIError: Error, Equatable {
    case networkError
    case parsingError
    case noToken
    case tokenExpired
    case badRequest
    case serverError
    case genericError(Int)
}

public struct APIClient {
    
    public var decoder: JSONDecoder {
        let decoder = JSONDecoder()
//        decoder.dateDecodingStrategy = .formatted(.isoDateFormatter)
        return decoder
    }
    
    public var loadData: (URLRequest) async throws -> (Data)
    
    var dataTask: (URLRequest) async throws -> (Data) = { request in
        let (data, response) = try await URLSession.shared.data(for: request)
        
        guard let httpResponse = response as? HTTPURLResponse else { throw APIError.networkError }
        
        switch httpResponse.statusCode {
        case 200...209:
            return data
        case 401, 403:
            throw APIError.networkError
        case 400...409:
            throw APIError.badRequest
        default:
            throw APIError.genericError(httpResponse.statusCode)
        }
    }

    public init(
        loadData: ((URLRequest) async throws -> (Data))? = nil
    ) {
        self.loadData = loadData ?? dataTask
    }
    
    public func call<Value: Decodable>(
        _ endpoint: Endpoint<Value>
    ) async throws -> Value {
        guard let data = try? await loadData(endpoint.urlRequest()) else {
            throw APIError.networkError
        }
        
        let result = try decoder.decode(Value.self, from: data)
        return result
    }
}
