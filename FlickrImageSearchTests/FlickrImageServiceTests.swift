//
//  FlickrImageServiceTests.swift
//  FlickrImageSearchTests
//
//  Created by Benji Gold on 2/25/24.
//

import XCTest
@testable import FlickrImageSearch

class FlickrServiceTests: XCTestCase {
    func testFetchImages() {
        let service: FlickrImageService = FlickrImageService()
        let expectation = self.expectation(description: "FetchImages")

        service.fetchImages(searchText: "test") { result in
            expectation.fulfill()
            switch result {
                case .success(let images):
                    XCTAssertFalse(images.isEmpty, "Images should not be empty")
                case .failure(let error):
                    XCTFail("Error fetching images: \(error.localizedDescription)")
            }
        }

        waitForExpectations(timeout: 5, handler: nil)
    }
}
