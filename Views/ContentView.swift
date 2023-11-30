//
//  ContentView.swift
//  StatsApp
//
//  Created by Ben Clark on 11/27/23.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            DriverRow()
                .navigationTitle("Drivers")
        }
    }
}

#Preview {
    ContentView()
}
