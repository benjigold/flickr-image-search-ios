//
//  String+FormatAuthor.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

extension String {
    func formatAuthor() -> String? {
        let pattern = "\"([^\"]+)\""
        
        if let regex = try? NSRegularExpression(pattern: pattern, options: []) {
            let nsrange = NSRange(self.startIndex..<self.endIndex, in: self)
            
            if let match = regex.firstMatch(in: self, options: [], range: nsrange) {
                let matchRange = match.range(at: 1)
                if let swiftRange = Range(matchRange, in: self) {
                    return String(self[swiftRange])
                }
            }
        }
        return nil
    }
}
