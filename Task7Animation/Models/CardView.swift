//
//  CardView.swift
//  Task7Animation
//
//  Created by Ikhwan on 10/12/22.
//

import Foundation

struct CardView {
    let id = UUID()
    let image: String
    let category: String
    let heading: String
    let author: String
    let rating: Int
    let excerpt: String
}

class CardViewProvider {
    static func all() -> [CardView] {
        return [
            CardView(image: "navigation", category: "SwiftUI", heading: "Navigation API", author: "iSwift Bootcamp", rating: 4, excerpt: "Leverage programmatic control over your app’s navigation behavior to set its launch state, manage transitions between size classes, respond to deep links, and more."),
            CardView(image: "charts", category: "SwiftUI", heading: "Swift Charts", author: "iSwift Bootcamp", rating: 5, excerpt: "Visualize data with highly customizable charts that look and feel great across all Apple platforms. Swift Charts uses the compositional syntax of SwiftUI to create views with many possibilities, from line and bar charts to advanced types like stream graphs."),
            CardView(image: "layout", category: "macOS", heading: "Advance Layout Control", author: "iSwift Bootcamp", rating: 4, excerpt: "Build advanced, reusable layouts to power the design of your app. In addition to VStack and HStack, SwiftUI now offers a new Grid API to simultaneously align views both horizontally and vertically."),
            CardView(image: "share", category: "iOS", heading: "New Share API", author: "iSwift Bootcamp", rating: 5, excerpt: "The new Transferable protocol makes your data available for the clipboard, drag and drop, and the Share Sheet, which can now be invoked directly using SwiftUI.")
        ]
    }
}
