//
//  TrackLoader.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//

import Foundation
import MapKit

class TrackLoader: ObservableObject {
    @Published var tracks: [TrackData] = []

    init() {
        loadTracks()
    }

    func loadTracks() {
        if let fileURL = Bundle.main.url(forResource: "tracks", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileURL)
                let decoder = JSONDecoder()
                tracks = try decoder.decode([TrackData].self, from: data)
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
    }
}

