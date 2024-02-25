//
//  String+FormatDate.swift
//  FlickrImageSearch
//
//  Created by Benji Gold on 2/25/24.
//

import Foundation

extension String {
    func formatDate() -> String {
        let inputFormatter = ISO8601DateFormatter()
        inputFormatter.formatOptions = [.withInternetDateTime,
                                        .withDashSeparatorInDate,
                                        .withColonSeparatorInTime]

        let outputFormatter = DateFormatter()
        outputFormatter.dateFormat = "MMM d, yyyy 'at' h:mm a"
        
        if let date = inputFormatter.date(from: self) {
            return outputFormatter.string(from: date)
        } else {
            return "Invalid Date"
        }
    }
}
