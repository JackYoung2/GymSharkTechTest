//
//  SwiftUIView.swift
//
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import Common
import ProductFeature

public struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    
    public init(viewModel: ProductListViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        NavigationStack {
            ScrollView(showsIndicators: false) {
                LazyVStack(alignment: .leading) {
                    ForEach(viewModel.products) { product in
                        Button {
                            viewModel.productTapped(product: product)
                        } label: {
                            ProductListCellView(viewModel: product)
                        }
                    }
                }
                .navigationDestination(
                    isPresented: $viewModel.detailShown
                ) {
                    if let prod = viewModel.selectedProduct {
                        ProductDetailView(viewModel: prod)
                    }
                }
                .navigationTitle("All Products")
            }
        }
        .accentColor(ColorSystem.tint)
        .onAppear {
            Task {
                try await viewModel.didAppear()
            }
        }
    }
}

#Preview {
    ProductListView(viewModel: .init(products: .preview))
}
