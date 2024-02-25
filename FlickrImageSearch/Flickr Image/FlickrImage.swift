//
//  FlickrImage.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

struct FlickrImage {
    let id: UUID = UUID()
    let title: String?
    let link: String?
    let dateTaken: String?
    let description: String?
    let published: String?
    let author: String?
}
