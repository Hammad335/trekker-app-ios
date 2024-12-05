//
//  WorldView.swift
//  trekker-app-ios
//
//  Created by Hamad on 04/12/2024.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations

    @State var region =
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 38.8951, longitude: -77.0364),
            span: .init(latitudeDelta: 40, longitudeDelta: 40))

    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: locations.places,
            annotationContent: { location in

                MapAnnotation(
                    coordinate: CLLocationCoordinate2D(
                        latitude: location.latitude,
                        longitude: location.longitude))
                {
                    NavigationLink(
                        destination: ContentView(primaryLocation: location))
                    {
                        Image(location.country)
                            .resizable()
                            .cornerRadius(10)
                            .frame(width: 80, height: 40)
                            .shadow(radius: 30)
                    }
                }

            })
    }
}

#Preview {
    WorldView()
}
