//
//  ProductListFeatureTests.swift
//  
//
//  Created by Jack Young on 09/05/2024.
//

import XCTest
@testable import ProductListFeature
@testable import Models
@testable import ProductFeature
@testable import Dependencies

@MainActor
final class ProductListFeatureTests: XCTestCase {
    
    func testWhenProductTapped_detailShown() throws {
        let vm = ProductListViewModel(products: .mock)
        vm.productTapped(product: .mock)
        XCTAssertTrue(vm.detailShown)
    }
    
    func testWhenProductTapped_selectedProductSet() throws {
        let vm = ProductListViewModel(products: .mock)
        vm.productTapped(product: .mock)
        XCTAssertEqual(vm.selectedProduct, .mock)
    }
    
    func testDidAppear_callsServiceAndPopulatesProducts() async throws {
        
        let vm = withDependencies {
            $0.apiClient = .init { _ in
                mockResponseData
            }
        } operation: {
            ProductListViewModel(products: [])
        }

        try await vm.didAppear()
        XCTAssertEqual(vm.products, [ProductViewModel].mock)
    }
}
