//
//  TrackMapAnnotation.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//
import Foundation
import SwiftUI
import MapKit
import CoreLocation

struct TrackAnnotation: Identifiable, MapAnnotation {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
    var tint: Color = .blue
    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
