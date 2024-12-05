//
//  Location.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
}
