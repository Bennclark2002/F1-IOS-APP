//
//  TracksMapView.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//

import SwiftUI
import MapKit

struct TracksMapView: View {
    @ObservedObject var trackLoader = TrackLoader()

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: trackLoader.tracks) { track in
            MapMarker(coordinate: CLLocationCoordinate2D(latitude: track.latitude, longitude: track.longitude), tint: .blue)
        }
        .onAppear {
            trackLoader.loadTracks()
        }
    }

    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0, longitude: 0),
        span: MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)
    )
}

#Preview {
    TracksMapView()
}
