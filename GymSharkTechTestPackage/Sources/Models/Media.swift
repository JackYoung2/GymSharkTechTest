//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public struct Media: Codable, Equatable {
    public let adminGraphqlApiId: String
    public let alt: String?
    public let createdAt: String
    public let height: Int
    public let id: Int
    public let position: Int
    public let productId: Int
    public let src: String
    public let updatedAt: String
    public let variantIds: [Int]
    public let width: Int
    
    public init(adminGraphqlApiId: String, alt: String? = nil, createdAt: String, height: Int, id: Int, position: Int, productId: Int, src: String, updatedAt: String, variantIds: [Int], width: Int) {
        self.adminGraphqlApiId = adminGraphqlApiId
        self.alt = alt
        self.createdAt = createdAt
        self.height = height
        self.id = id
        self.position = position
        self.productId = productId
        self.src = src
        self.updatedAt = updatedAt
        self.variantIds = variantIds
        self.width = width
    }
    

    enum CodingKeys: String, CodingKey {
        case adminGraphqlApiId = "admin_graphql_api_id"
        case alt
        case createdAt = "created_at"
        case height
        case id
        case position
        case productId = "product_id"
        case src
        case updatedAt = "updated_at"
        case variantIds = "variant_ids"
        case width
    }
}
