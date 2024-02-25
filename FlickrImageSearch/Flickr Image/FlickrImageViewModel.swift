//
//  FlickrImageViewModel.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

import SwiftUI

class FlickrImageViewModel: ObservableObject {
    @Published var images: [FlickrImage] = []
    @Published var searchText: String = "" {
        didSet {
            fetchImages()
        }
    }
    
    private var flickrImageService: FlickrImageService = FlickrImageService()
    
    func fetchImages() {
        flickrImageService.fetchImages(searchText: searchText) { result in
            switch result {
                case .success(let images):
                    self.images = images
                case .failure(let error):
                    print(error)
            }
        }
    }
}
