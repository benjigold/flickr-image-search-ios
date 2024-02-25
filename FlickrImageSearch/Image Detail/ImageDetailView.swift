//
//  ImageDetailView.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import SwiftUI

struct ImageDetailView: View {
    let flickrImage: FlickrImage
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                AsyncImage(url: URL(string: flickrImage.media?.m ?? ""))
                    .aspectRatio(contentMode: .fit)
                Text(flickrImage.title ?? "No Title")
                    .bold()
                Text(flickrImage.description ?? "No Description")
                    .font(.caption)
                Text("Author: \(flickrImage.author ?? "Unknown")")
                Text("Published: \(flickrImage.published ?? "Unknown")")
            }
            .padding()
        }
        .navigationBarTitle(Text(flickrImage.title ?? "No Title"), displayMode: .inline)
    }
}
