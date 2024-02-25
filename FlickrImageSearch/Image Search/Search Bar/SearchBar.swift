//
//  SearchBar.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import SwiftUI

struct SearchBar: UIViewRepresentable {
    @Binding var text: String
    
    func makeUIView(context: UIViewRepresentableContext<SearchBar>) -> UISearchBar {
        let searchBar: UISearchBar = UISearchBar(frame: .zero)
        searchBar.delegate = context.coordinator // TODO: create coordinator
        return searchBar
    }

    func updateUIView(_ uiView: UISearchBar, context: UIViewRepresentableContext<SearchBar>) {
        uiView.text = text
    }
}

extension SearchBar: SearchBarCoordinator {
    func makeCoordinator() -> Coordinator {
        return Coordinator(text: $text)
    }
}
