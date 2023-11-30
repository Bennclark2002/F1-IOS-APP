//
//  TrackLocation.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//

import Foundation
import SwiftUI
import CoreLocation

struct TrackLocation: Identifiable {
    let id: Int
    let name: String
    let coordinate: CLLocationCoordinate2D
    let length: Double
    }




