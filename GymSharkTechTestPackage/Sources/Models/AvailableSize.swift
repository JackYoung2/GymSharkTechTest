//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public struct AvailableSize: Codable, Equatable {
    public let id: Int
    public let inStock: Bool
    public let inventoryQuantity: Int
    public let price: Int
    public let size: Size
    public let sku: String
    
    public init(id: Int, inStock: Bool, inventoryQuantity: Int, price: Int, size: Size, sku: String) {
        self.id = id
        self.inStock = inStock
        self.inventoryQuantity = inventoryQuantity
        self.price = price
        self.size = size
        self.sku = sku
    }
}
//
//struct FeaturedMedia: Codable {
//    let adminGraphqlApiId: String
//    let alt: String?
//    let createdAt: String
//    let height: Int
//    let id: Int
//    let position: Int
//    let productId: Int
//    let src: String
//    let updatedAt: String
//    let variantIds: [Int]
//    let width: Int
//
//    enum CodingKeys: String, CodingKey {
//        case adminGraphqlApiId = "admin_graphql_api_id"
//        case alt
//        case createdAt = "created_at"
//        case height
//        case id
//        case position
//        case productId = "product_id"
//        case src
//        case updatedAt = "updated_at"
//        case variantIds = "variant_ids"
//        case width
//    }
//}
//
