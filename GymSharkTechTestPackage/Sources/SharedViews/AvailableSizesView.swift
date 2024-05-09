//
//  SwiftUIView.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import Models
import Common

public struct AvailableSizesView: View {
    
    var sizes: [Size]
    
    public init(sizes: [Size]) {
        self.sizes = sizes
    }
    
    public var body: some View {
        
        if sizes.isEmpty {
            Text("Out of stock")
        } else {
            HStack {
                ForEach(self.sizes, id: \.rawValue) {
                    Text("\($0.rawValue.uppercased())")
                        .minimumScaleFactor(0.01)
                        .lineLimit(1)
                        .font(.caption)
                }
            }
            .padding(space3)
            .roundedBorder()
        }
    }
}

#Preview {
    AvailableSizesView(sizes: [.l, .xl, .xxl])
}
