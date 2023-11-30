//
//  File.swift
//  StatsApp
//
//  Created by Ben Clark on 11/27/23.
//

import Foundation
import SwiftUI

struct Drivers: Hashable, Codable, Identifiable {
    var id: Int
    var image: String
    var name: String
    var team: String
    var number: Int
    var points: Int
    var wins: Int
    
}
