//
//  FlickrImageService.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

class FlickrImageService {
    func fetchImages(searchText: String, completion: @escaping (Result<[FlickrImage], Error>) -> ()) {
        let baseUrl: String = "https://api.flickr.com/services/feeds/photos_public.gne"
        let queryItems: [URLQueryItem] = [URLQueryItem(name: "format", value: "json"),
                                          URLQueryItem(name: "nojsoncallback", value: "1"),
                                          URLQueryItem(name: "tags", value: searchText)]
        var urlComponents: URLComponents = URLComponents(string: baseUrl)!
        urlComponents.queryItems = queryItems
    }
}
