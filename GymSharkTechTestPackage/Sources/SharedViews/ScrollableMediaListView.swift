//
//  SwiftUIView.swift
//  
//
//  Created by Jack Young on 08/05/2024.
//

import SwiftUI
import Models
import Common

public struct ScrollableMediaListView: View {
    
    var urls: [URL]
    
    public init(urls: [URL]) {
        self.urls = urls
    }
    
    public var body: some View {
        
//        ForEach(urls, id: \.self) { url in
        AsyncImage(url: urls.first, scale: space2)
        
//        }
    }
}

#Preview {
    ScrollableMediaListView(
        urls: mockProduct2.media.compactMap {
            URL(string: $0.src)
        }
    )
}
