//
//  WorldView.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 38.8951, longitude: -77.0364),
        span: .init(latitudeDelta: 20, longitudeDelta: 20)
    )

    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true)
            .edgesIgnoringSafeArea(.top)
    }
}

#Preview {
    WorldView()
}
