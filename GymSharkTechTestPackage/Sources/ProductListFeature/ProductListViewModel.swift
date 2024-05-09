//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import Models
import Common
import ProductFeature
import Dependencies
import APIClient

@MainActor
public final class ProductListViewModel: ObservableObject {
    
    @Dependency(\.apiClient) private var apiClient
    
    @Published var products: [ProductViewModel]
    @Published var selectedProduct: ProductViewModel? = nil
    @Published var detailShown: Bool = false
    
    
    public init(products: [Product]) {
        self.products = products.map(ProductViewModel.init)
    }
    
    func productTapped(product: ProductViewModel) {
        self.detailShown = true
        self.selectedProduct = product
    }
    
    func didAppear() async throws {
        let endpoint = Endpoint<ProductListResponse>()
        self.products = try await apiClient.call(endpoint).hits.map(ProductViewModel.init)
        print(self.products.map { $0.product.price })
    }
}
