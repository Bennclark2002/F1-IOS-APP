//
//  TrackData.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//
import Foundation

struct TrackData: Decodable, Identifiable {
    let id: Int
    let track: String
    let latitude: Double
    let longitude: Double
    let length: Double // Assuming Length field corresponds to track length
}

