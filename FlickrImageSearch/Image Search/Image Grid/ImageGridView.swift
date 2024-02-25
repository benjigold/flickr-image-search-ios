//
//  ImageGridView.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import SwiftUI

struct ImageGridView: View {
    let images: [FlickrImage]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(images) { image in
                    NavigationLink(value: image) {
                        AsyncImage(url: URL(string: image.media?.m ?? "")) { phase in
                            switch phase {
                            case .empty, .failure:
                                Image(systemName: "photo")
                                    .accessibilityLabel("Failed to load image")
                                case .success(let image):
                                    image.resizable()
                                         .aspectRatio(contentMode: .fit)
                                         .cornerRadius(10)
//                                         .accessibilityLabel() TODO: get the image title properly and assign String to accessibilty label
                                @unknown default:
                                    EmptyView()
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .navigationDestination(for: FlickrImage.self) { flickrImage in
            ImageDetailView(flickrImage: flickrImage)
        }
    }
}
