//
//  File.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import SwiftUI

struct RoundedBorder: ViewModifier {
    var color: Color
    var lineWidth: CGFloat
    var cornerRadius: CGFloat
    
    func body(content: Content) -> some View {
        content
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(color, lineWidth: lineWidth)
            )
    }
}

public extension View {
    func roundedBorder(color: Color = ColorSystem.primary, lineWidth: CGFloat = 1, cornerRadius: CGFloat = space3) -> some View {
        self.modifier(RoundedBorder(color: color, lineWidth: lineWidth, cornerRadius: cornerRadius))
    }
}
