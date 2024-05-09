//
//  File.swift
//
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import SwiftUI
import Models
import Common
import ProductFeature
import SharedViews

public struct ProductListCellView: View {
    let viewModel: ProductViewModel
    
    public init(viewModel: ProductViewModel) {
        self.viewModel = viewModel
    }
    
    public var body: some View {
        HStack {
//            VStack {
                
                RemoteImageView(url: viewModel.featuredImageUrl)
                    .overlay(alignment: .bottomLeading) {
                        if viewModel.hasLabels {
                            LabelsView(labels: viewModel.labels)
                        }
                    }
//            }
            
//                        HStack {
            
        VStack {
            Text("\(viewModel.product.title)")
                .font(.headline)
                .foregroundStyle(ColorSystem.text)
            
            if viewModel.productHasFit {
                Text(viewModel.fit)
                    .foregroundStyle(ColorSystem.secondaryText)
            }
            
            Text(viewModel.product.colour)
                .foregroundStyle(ColorSystem.secondaryText)
            
                Text("\(viewModel.formattedPrice)")
//                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(ColorSystem.text)
                    .padding(.bottom)

                    AvailableSizesView(sizes: viewModel.sizeInStock)
            }
        }
    }
}

#Preview {
//    ProductListCellView(viewModel: .preview)
//        .padding()
    ProductListCellView(viewModel: .noImage)
        .padding()
}
