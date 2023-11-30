//
//  TrackRow.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//
import SwiftUI

struct TrackRow: View {
    @ObservedObject var trackLoader = TrackLoader() 
    var sortedTracks: [TrackData] {
        trackLoader.tracks.sorted { $0.id < $1.id }
    }

    var body: some View {
        NavigationView {
            List(sortedTracks, id: \.id) { track in
                NavigationLink(destination: TrackDetail(track: track)) {
                    Text(track.track)
                }
            }
            .navigationTitle("Tracks")
        }
        .onAppear {
            trackLoader.loadTracks()
        }
    }
}

struct TrackRow_Previews: PreviewProvider {
    static var previews: some View {
        TrackRow()
    }
}


