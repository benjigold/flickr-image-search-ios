//
//  FlickrImage.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

struct FlickrImage: Identifiable {
    let id: UUID = UUID()
    let title: String?
    let link: String?
    let media: Media?
    let dateTaken: String?
    let description: String?
    let published: String?
    let author: String?
}

extension FlickrImage: Decodable {
    enum CodingKeys: String, CodingKey {
        case title, link, media, description, published, author
        case dateTaken = "date_taken"
    }
}

struct Media: Decodable {
    let m: String?
}
