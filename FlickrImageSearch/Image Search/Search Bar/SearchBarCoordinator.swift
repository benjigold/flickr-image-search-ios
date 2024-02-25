//
//  SearchBarCoordinator.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import SwiftUI

protocol SearchBarCoordinator {
    func makeCoordinator() -> Coordinator
}

class Coordinator: NSObject, UISearchBarDelegate {
    @Binding var text: String
}
