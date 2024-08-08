//
//  create_pageApp.swift
//  create page
//
//  Created by Rashdan Natiq on 2024-08-07.
//

import SwiftUI

@main
struct create_pageApp: App {
    var body: some Scene {
        WindowGroup {
            let discoverObject = Discover(productImage: "image1",
                                          produtName: "Black panther",
                                          date: "Sat, 15 August • 13:00",
                                          discrition: "Biljardpalatset 112 34 Stockholm",
                                          category: "pool",
                                          dotIcon: "icon",
                                          imageList: ["image1", "image2", "image1"])
            DiscoverTile(discover: discoverObject)
        }
    }
}
