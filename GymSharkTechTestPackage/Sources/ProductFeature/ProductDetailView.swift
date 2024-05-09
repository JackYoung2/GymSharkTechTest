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
        self.viewModel = viewModel
    }
    
    public var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
//                HStack {
//                    Text("\(viewModel.product.title)")
//                        .font(.ti)
//                    Spacer()
//                }
                
                RemoteImageView(url: viewModel.featuredImageUrl)
                    .overlay(alignment: .bottomLeading) {
                        if viewModel.hasLabels {
                            LabelsView(labels: viewModel.labels)
                        }
                    }
                
                HStack {
                    Text("\(viewModel.product.title)")
                        .fontWeight(.semibold)
                    Spacer()
                    Text("\(viewModel.formattedPrice)")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(ColorSystem.text)
                }
                
                detailLabel(text: viewModel.product.colour)
                    .foregroundStyle(ColorSystem.secondaryText)
                
                
                Divider()
                
                if let text = viewModel.bodyText {
                    Text("\(text)")
                        .padding(.top)
                }
                
                HStack {
                    Spacer()
                    AvailableSizesView(sizes: viewModel.sizeInStock)
                }
            }
            .navigationBarTitle(viewModel.product.title, displayMode: .inline)

        }
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
        .padding()
}
