//
//  trekker_app_iosApp.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

import SwiftUI

@main
struct trekker_app_iosApp: App {
    @StateObject var locations = Locations()
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(primaryLocation: locations.primary)
                }.tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView {
                    WorldView()
                }.tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }.environmentObject(locations)
        }
    }
}
