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
    
    init(text: Binding<String>) {
        _text = text
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        text = searchText
    }
}
