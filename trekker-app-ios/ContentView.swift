//
//  ContentView.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

import SwiftUI

struct ContentView: View {
    let primaryLocation: Location
    var body: some View {
        ScrollView {
            Image(primaryLocation.heroPicture)
                .resizable()
                .scaledToFill()
                .cornerRadius(8)
                .padding(4)
            VStack {
                Text(primaryLocation.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text(primaryLocation.country)
                    .font(.title)
                    .fontWeight(.medium)
                    .foregroundColor(.secondary)
                Text(primaryLocation.description)
                Text("Do you know ?")
                    .bold()
                    .font(.title2)
                    .padding(.top)
                Text(primaryLocation.more)
            }.padding(.horizontal)
        }.navigationTitle("Discover")
            .padding(.top)
    }
}

#Preview {
    @Previewable @StateObject var locations = Locations()
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
    }
}
