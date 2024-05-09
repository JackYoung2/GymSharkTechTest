//
//  GymSharkTechTestApp.swift
//  GymSharkTechTest
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import ProductListFeature

@main
struct GymSharkTechTestApp: App {
    var body: some Scene {
        WindowGroup {
            ProductListView(viewModel: .init(products: [.preview]))
                .padding()
        }
    }
}
