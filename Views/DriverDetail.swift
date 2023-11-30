//
//  DriverDetail.swift
//  StatsApp
//
//  Created by Ben Clark on 11/29/23.
//

import SwiftUI

struct DriverDetail: View {
    let driver: Drivers // Use the Drivers struct as expected

    var body: some View {
        VStack {
            DriverImage(imageName: driver.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                HStack {
                    Text(driver.team)
                        .font(.title)
                    Text("Driver Number: \(driver.number)")
                        .font(.title2)
                }
                
                Divider()
                
                Text("Points: \(driver.points)")
                    .font(.title3)
                Text("Wins: \(driver.wins)")
                    .font(.title3)
            }
            .padding()
        }
        .navigationTitle(driver.name) // Set the navigation title
    }
}
