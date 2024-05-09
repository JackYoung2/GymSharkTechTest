//
//  SwiftUIView.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import ProductListFeature

public struct AppView: View {
    public var body: some View {
        ProductGridView(viewModel: .init(products: []))
            .background(Color.white)
    }
}

#Preview {
    AppView()
}
