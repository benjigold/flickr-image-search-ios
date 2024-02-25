//
//  FlickrImageFeed.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

struct FlickrImageFeed: Decodable {
    let title: String?
    let link: String?
    let description: String?
    let modified: String?
    let generator: String?
    let items: [FlickrImage]?
}
