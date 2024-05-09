//
//  SwiftUIView.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import SharedViews
import Common

public struct ProductDetailView: View {
    let viewModel: ProductViewModel
    
    public init(viewModel: ProductViewModel) {
        self.viewModel = .preview
    }
    
    public var body: some View {
        VStack {
            HStack {
                Text("\(viewModel.product.title)")
                    .font(.headline)
                Spacer()
            }
            
            ScrollableMediaListView(urls: viewModel.mediaURLs)
                .overlay(alignment: .bottomLeading) {
                if viewModel.hasLabels {
                    LabelsView(labels: viewModel.labels)
                }
                
            }
            
            HStack {
                Text("\(viewModel.product.title)")
                Spacer()
                Text("\(viewModel.formattedPrice)")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(ColorSystem.text)
            }

            detailLabel(text: viewModel.product.colour)
                .foregroundStyle(ColorSystem.secondaryText)
        }
        .padding()
    }
    
    func detailLabel(text: String) -> some View {
        HStack {
            Text("\(text)")
            Spacer()
        }
    }
}

#Preview {
    ProductDetailView(viewModel: .preview)
}
