//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation

public struct Product: Codable, Identifiable, Equatable {
    public let id: Int
    public let sku: String
    public let inStock: Bool
    public let sizeInStock: [Size]?
    public let availableSizes: [AvailableSize]
    public let handle: String
    public let title: String
    public let description: String
    public let type: String
    public let gender: [String]
    public let fit: String?
    public let labels: [String]?
    public let colour: String
    public let price: Int
    public let compareAtPrice: Int?
    public let discountPercentage: Int?
    public let featuredMedia: Media
    public let media: [Media]
    public let objectID: String
    
    public init(
        id: Int,
        sku: String,
        inStock: Bool,
        sizeInStock: [Size]?,
        availableSizes: [AvailableSize],
        handle: String,
        title: String, 
        description: String,
        type: String,
        gender: [String],
        fit: String? = nil,
        labels: [String]? = [], 
        colour: String,
        price: Int,
        compareAtPrice: Int? = nil,
        discountPercentage: Int? = nil,
        featuredMedia: Media,
        media: [Media],
        objectID: String
    ) {
        self.id = id
        self.sku = sku
        self.inStock = inStock
        self.sizeInStock = sizeInStock
        self.availableSizes = availableSizes
        self.handle = handle
        self.title = title
        self.description = description
        self.type = type
        self.gender = gender
        self.fit = fit
        self.labels = labels
        self.colour = colour
        self.price = price
        self.compareAtPrice = compareAtPrice
        self.discountPercentage = discountPercentage
        self.featuredMedia = featuredMedia
        self.media = media
        self.objectID = objectID
    }
}
