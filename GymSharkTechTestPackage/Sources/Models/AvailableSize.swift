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
