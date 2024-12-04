//
//  Locations.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

import Foundation

class Locations: ObservableObject {
    var places: [Location]

    // computed property: calculated at runtime
    var primary: Location {
        places[0]
    }

    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: ".json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
