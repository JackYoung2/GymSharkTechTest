//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import Models
import Common

public struct LabelsView: View {
    
    var labels: [String]
    
    public init(labels: [String]) {
        self.labels = labels
    }
    
    public var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(Array(labels.enumerated()), id: \.element) { index, label in
                    Text("\(label)")
                        .fontWeight(.bold)
                        .foregroundStyle(ColorSystem.primary)
                        .padding(.vertical, space1)
                        .padding(.horizontal, space3)
                        .background {
                            Capsule(style: .circular)
                                .foregroundStyle(ColorSystem.background)
                        }
                }
            }
        }
        .padding(space3)
    }
}

#Preview {
    LabelsView(labels:  ["new", "recycled-nylon", "recycled-polyester"]).padding()
}
