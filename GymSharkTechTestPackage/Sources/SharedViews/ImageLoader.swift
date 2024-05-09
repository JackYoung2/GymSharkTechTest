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
    var width: CGFloat?
    var height: CGFloat?
    
    public init(url: URL? = nil, width: CGFloat? = nil, height: CGFloat? = nil) {
        self.url = url
        self.width = width
        self.height = height
    }
    
    public var body: some View {
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: width, height: height)
            case .success(let image):
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: space3))
            case .failure:
                Image("gymshark-logo", bundle: .main)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .foregroundStyle(ColorSystem.primary)
                    .frame(width: width, height: height)
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    RemoteImageView(url: URL(string:mockProduct2.featuredMedia.src)!)
}

