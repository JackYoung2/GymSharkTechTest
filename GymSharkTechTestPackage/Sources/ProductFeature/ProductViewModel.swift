//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import Models
import Common

public final class ProductViewModel: Identifiable {
    
    public var id: Product.ID { product.id }
    public var product: Product
    public var formattedPrice: String { NumberFormatter.formattedCurrencyFrom(amount: product.price) ?? "" }
    public var featuredImageUrl: URL? { URL(string: product.featuredMedia.src) }
    public var hasLabels: Bool { product.labels?.isEmpty == false }
    public var labels: [String] { product.labels ?? [] }
    public var sizeInStock: [Size] { product.sizeInStock ?? [] }
    public var fit: String { product.fit ?? "" }
    public var productHasFit: Bool { !fit.isEmpty }
    public var mediaURLs: [URL] { product.media.compactMap { URL(string: $0.src) } }
    
    public init(product: Product) {
        self.product = product
    }
}
