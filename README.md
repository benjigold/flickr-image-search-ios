# flickr-image-search-ios
A SwiftUI iOS application that allows a user to search Flickr for images

## Installation

No 3rd party dependencies used - just build and run in Xcode!

## Git Management

I pushed my code changes directly to the master branch 🙈. I would never do that in a large scale production application; but for the sake of this 3-hour exercise, I pushed my code changes directly to the "master" branch. Normally, I would follow a git flow methodology for  managing code changes.

## Notes

Architecture - MVVM, plus the use of a Coordinator pattern. No redux / reactive framework (eliminated due to small size of this application and 3-hour time limit) but in production, Combine, RxSwift, or other approaches can be utilized. Additionally, I did not create a ViewModel for the ImageDetailView, since it utilized a subset of the elements already managed by FlickrImageViewModel, and the ImageDetailView is able to be constructed using these already available properties.

Project Navigator - Located the SearchBar files in the Image Search folder, to mimic the structure of the FlickrImageSearch screen (a search bar with an image gird below). Should the app grow and expand, and other screens will utilize search bar functionality, the Search Bar folder could be relocated into the Common folder, as that can become a common (UI) component to be reused by other screens. It is built generic enough to not be dependent on the Image Grid logic and is therefore self contained.

## Improvements

An improvement to the architecture I was considering was breaking things down further, utilizing presenters, routers, more coordinators, etc., however, my goal was to dive deeper in the the SwiftUI world, and found that again, for the sake of a 3-hour time limit exercise, the NavigationLink() and .navigationDestination{} functionality to push the ImageDetailView onto the NavigationStack was a low code / easy to read/understand solution of app navigating. In a larger app, I would probably want a more elegant solution like routers, coordinators, etc.

Another improvement that could me made is the FlickrImageService class can be repurposed/refactored into a load() function that loads either from disk or from the API, but both can adhere to a load() function declared in a more generic Service protocol.

An improvement to image fetching would be to consider using AlamoFire for better handling of image fetching as well as caching. I chose to keep it the “Apple” way and decided for the 3-hour time limit to not go through the steps of installing 3rd party dependencies and utilizing that. The tradeoff is that there might be some performance, elegance, and caching left on the table, so for a larger production app, that is something I’d consider taking advantage of a little more. During testing throughout the 3-hour development, The image fetching appeared to be performant enough for this exercise.

There could be further improvement to error handling, by presenting modals or toast notifications to the user if there were issues retrieving images/etc. I decided for the sake of the 3-hour time limit to just make sure error cases are handled in code but to not put too much of my focus into user messaging implementations.

A note about interpreting a requirement - I programmed the progress indicator to be placed in the search bar. I interpreted the "don’t block UI" in more than one way - both in terms of blocking the main thread that would get in the way of UI computation, as well as physically, not overlayed on the UI like the images in the ImageGridView.
