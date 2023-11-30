//
//  TrackDetail.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//

import SwiftUI

struct TrackDetail: View {
    let track: TrackData
    var body: some View {
        VStack {
            Text(track.track)
                .font(.largeTitle)
            Text("Latitude: \(track.latitude), Longitude: \(track.longitude)")
            Text("Length: \(track.length)")
        }
        .navigationTitle(track.track)
    }
}
