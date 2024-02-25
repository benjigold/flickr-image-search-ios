//
//  ContentView.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel: FlickrImageViewModel = FlickrImageViewModel()
    
    var body: some View {
        NavigationStack {
            VStack {
                SearchBar(text: $viewModel.searchText)
                    .overlay {
                        if viewModel.isLoading {
                            ProgressView()
                        }
                    }
                    .padding()
                ImageGridView(images: viewModel.images)
            }
            .navigationBarTitle("Flickr Image Search")
        }
        .onChange(of: viewModel.searchText) {
            viewModel.fetchImages() // Trigger image fetching when search text changes
        }
    }
}

#Preview {
    ContentView()
}
