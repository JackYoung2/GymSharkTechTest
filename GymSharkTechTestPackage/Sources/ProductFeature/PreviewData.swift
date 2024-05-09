//
//  File 2.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import Foundation
import Models

public extension ProductViewModel {
    static var preview: Self {
        .init(product: .preview)
    }
    
    static var noImage: Self {
        .init(product: .noImageURL)
    }
}
