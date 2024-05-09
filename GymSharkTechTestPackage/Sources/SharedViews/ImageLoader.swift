//
//  File.swift
//  
//
//  Created by Jack Young on 09/05/2024.
//

import SwiftUI
import Common

public struct RemoteImageView: View {
    
    var url: URL?
    
    public init(url: URL? = nil) {
        self.url = url
    }

    public var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 220, height: 260)
            case .failure:
                Image("gymshark-logo", bundle: .main)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(ColorSystem.primary)
                    .frame(width: 220, height: 260)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    RemoteImageView(url: URL(string:mockProduct2.featuredMedia.src)!)
}

