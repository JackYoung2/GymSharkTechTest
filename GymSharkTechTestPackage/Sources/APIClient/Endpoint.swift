//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public struct Endpoint<Decodable> {
    private let baseUrlString = "https://cdn.develop.gymshark.com/training/mock-product-responses/algolia-example-payload.json"

    public init() {}

    func urlRequest() -> URLRequest {
        let request = URLRequest(url: .init(string: baseUrlString)!)
        return request
    }
}
